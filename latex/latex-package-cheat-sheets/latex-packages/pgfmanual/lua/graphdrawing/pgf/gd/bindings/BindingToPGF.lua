-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /cvsroot/pgf/pgf/generic/pgf/graphdrawing/lua/pgf/gd/bindings/BindingToPGF.lua,v 1.11 2015/06/08 21:58:24 tantau Exp $



-- Imports
local Storage = require "pgf.gd.lib.Storage"


---
-- This class, which is a subclass of |Binding|, binds the graph
-- drawing system to the \pgfname\ display system by overriding (that
-- is, implementing) the methods of the |Binding| class. As a typical
-- example, consider the implementation of the function |renderVertex|:
--
--\begin{codeexample}[code only, tikz syntax=false]
--function BindingToPGF:renderVertex(v)
--  local info = assert(self.infos[v], "thou shalt not modify the syntactic digraph")
--  tex.print(
--    string.format(
--      "\\pgfgdcallbackrendernode{%s}{%fpt}{%fpt}{%fpt}{%fpt}{%fpt}{%fpt}{%s}",
--      'not yet positionedPGFINTERNAL' .. v.name,
--      info.x_min,
--      info.x_max,
--      info.y_min,
--      info.y_max,
--      v.pos.x,
--      v.pos.y,
--      info.box_count))
--end
--\end{codeexample}
--
-- As can be seen, the main job of this function is to call a function
-- on the \TeX\ layer that is called |\pgfgdcallbackrendernode|, which gets
-- several parameters like the name of the to-be-rendered node or the
-- (new) position for the node. For almost all methods of the
-- |Binding| class there is a corresponding ``callback'' macro on the
-- \TeX\ layer, all of which are implemented in the \pgfname\ library
-- |graphdrawing|. For details on these callbacks, 
-- please consult the code of that file and of the class
-- |BindingToPGF| (they are not documented here since they are local
-- to the binding and should not be called by anyone other than the
-- binding class).

local BindingToPGF = {
  storage = Storage.newTableStorage () -- overwrite default storage
}
BindingToPGF.__index = BindingToPGF
setmetatable(BindingToPGF, require "pgf.gd.bindings.Binding") -- subclass of Binding


-- Namespace
require("pgf.gd.bindings").BindingToPGF = BindingToPGF

-- Imports
local lib = require "pgf.gd.lib"

-- The implementation

-- Forward
local table_in_pgf_syntax




-- Scope handling

function BindingToPGF:resumeGraphDrawingCoroutine(text)
  tex.print(text)
  tex.print("\\pgfgdresumecoroutinetrue") 
end


-- Declarations

function BindingToPGF:declareCallback(t)
  tex.print("\\pgfgdcallbackdeclareparameter{" .. t.key .. "}{" .. (t.type or "nil") .. "}")
end



-- Rendering

function BindingToPGF:renderStart()
  tex.print("\\pgfgdcallbackbeginshipout")
end

function BindingToPGF:renderStop()
  tex.print("\\pgfgdcallbackendshipout")
end


-- Rendering collections

function BindingToPGF:renderCollection(collection)
  tex.print("\\pgfgdcallbackrendercollection{".. collection.kind .. "}{"
	    .. table_in_pgf_syntax(collection.generated_options) .. "}")
end

function BindingToPGF:renderCollectionStartKind(kind, layer)
  tex.print("\\pgfgdcallbackrendercollectionkindstart{" .. kind .. "}{" .. tostring(layer) .. "}")
end

function BindingToPGF:renderCollectionStopKind(kind, layer)
  tex.print("\\pgfgdcallbackrendercollectionkindstop{" .. kind .. "}{" .. tostring(layer) .. "}")
end

-- Printing points

local function to_pt(x)
  return string.format("%.12fpt", x)
end


-- Managing vertices (pgf nodes)

local boxes = {}
local box_count = 0

function BindingToPGF:everyVertexCreation(v)
  local info = self.storage[v]
  
  -- Save the box!
  box_count = box_count + 1
  boxes[box_count] = node.copy_list(tex.box[info.tex_box_number])
  
  -- Special tex stuff, should not be considered by gd algorithm
  info.box_count = box_count
end

function BindingToPGF:renderVertex(v)
  local info = assert(self.storage[v], "thou shalt not modify the syntactic digraph")
  tex.print(
    string.format(
      "\\pgfgdcallbackrendernode{%s}{%.12fpt}{%.12fpt}{%.12fpt}{%.12fpt}{%.12fpt}{%.12fpt}{%s}",
      'not yet positionedPGFINTERNAL' .. v.name,
      info.x_min,
      info.x_max,
      info.y_min,
      info.y_max,
      v.pos.x,
      v.pos.y,
      info.box_count))
end

function BindingToPGF:retrieveBox(index, box_num)
  tex.box[box_num] = assert(boxes[index], "no box stored at given index")
  boxes[index] = nil -- remove from memory
end

function BindingToPGF:renderVerticesStart()
  tex.print("\\pgfgdcallbackbeginnodeshipout")
end

function BindingToPGF:renderVerticesStop()
  tex.print("\\pgfgdcallbackendnodeshipout")
end


local function rigid(x)
  if type(x) == "function" then
    return x()
  else
    return x
  end
end

  
-- Managing edges

function BindingToPGF:renderEdge(e)
  local info = assert(self.storage[e], "thou shalt not modify the syntactic digraph")
  
  local function get_anchor(e, anchor)
    local a = e.options[anchor]
    if a and a ~= "" then
      return "." .. a
    else
      return ""
    end
  end
  
  local callback = {
    '\\pgfgdcallbackedge',
    '{', e.tail.name .. get_anchor(e, "tail anchor"), '}',
    '{', e.head.name .. get_anchor(e, "head anchor"), '}',
    '{', e.direction,  '}',
    '{', info.pgf_options or "",  '}',
    '{', info.pgf_edge_nodes or "", '}',
    '{', table_in_pgf_syntax(e.generated_options), '}',
    '{'
  }
  
  local i = 1
  while i <= #e.path do
    local c = e.path[i]
    assert (type(c) == "string", "illegal path operand")
    
    if c == "lineto" then
      i = i + 1
      local d = rigid(e.path[i])
      callback [#callback + 1] = '--(' .. to_pt(d.x) .. ',' .. to_pt(d.y) .. ')'
      i = i + 1
    elseif c == "moveto" then
      i = i + 1
      local d = rigid(e.path[i])
      callback [#callback + 1] = '(' .. to_pt(d.x) .. ',' .. to_pt(d.y) .. ')'
      i = i + 1
    elseif c == "closepath" then
      callback [#callback + 1] = '--cycle'
      i = i + 1
    elseif c == "curveto" then
      local d1, d2, d3 = rigid(e.path[i+1]), rigid(e.path[i+2]), rigid(e.path[i+3])
      i = i + 3
      callback [#callback + 1] = '..controls(' .. to_pt(d1.x) .. ',' .. to_pt(d1.y) .. ')and('
                                               .. to_pt(d2.x) .. ',' .. to_pt(d2.y) .. ')..'
      callback [#callback + 1] = '(' .. to_pt(d3.x) .. ',' .. to_pt(d3.y) .. ')'
      i = i + 1
    else				     
      error("illegal operation in edge path")
    end
  end

  callback [#callback + 1] = '}'
  
  -- hand TikZ code over to TeX
  tex.print(table.concat(callback))
end
      
      
function BindingToPGF:renderEdgesStart()
  tex.print("\\pgfgdcallbackbeginedgeshipout")
end

function BindingToPGF:renderEdgesStop()
  tex.print("\\pgfgdcallbackendedgeshipout")
end


-- Vertex creation

function BindingToPGF:createVertex(init)
  -- Now, go back to TeX...
 coroutine.yield(
   table.concat({
      "\\pgfgdcallbackcreatevertex{", init.name, "}",
      "{", init.shape, "}",
      "{", table_in_pgf_syntax(init.generated_options), ",", init.pgf_options or "", "}",
      "{", (init.text or ""), "}"
    }))
  -- ... and come back with a new node!
end



-- Local helpers

function table_in_pgf_syntax (t)
  local prefix = "/graph drawing/"
  local suffix = "/.try"
  return table.concat( lib.imap( t, function(table)
	   if table.value then
	     return prefix .. table.key .. suffix .. "={" .. tostring(table.value) .. "}"
	   else
	     return prefix .. table.key .. suffix
	   end
	 end), ",")
end



return BindingToPGF