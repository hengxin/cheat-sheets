-- Copyright 2013 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /cvsroot/pgf/pgf/generic/pgf/graphdrawing/lua/pgf/gd/doc/ogdf/energybased/SpringEmbedderFRExact.lua,v 1.1 2013/11/07 15:43:35 tantau Exp $


local key           = require 'pgf.gd.doc'.key
local documentation = require 'pgf.gd.doc'.documentation
local summary       = require 'pgf.gd.doc'.summary
local example       = require 'pgf.gd.doc'.example


--------------------------------------------------------------------------------
key           "SpringEmbedderFRExact"
summary       "Declaration of Spring-Embedder (Fruchterman,Reingold) algorithm with exact force computations."                    
--------------------------------------------------------------------------------
    

--------------------------------------------------------------------------------
key           "SpringEmbedderFRExact.iterations"
summary       "Sets the number of iterations."
--------------------------------------------------------------------------------
    

--------------------------------------------------------------------------------
key           "SpringEmbedderFRExact.noise"
summary       "Sets the parameter noise."
--------------------------------------------------------------------------------
    

--------------------------------------------------------------------------------
key           "SpringEmbedderFRExact.coolingFunction"
summary       "Sets the parameter coolingFunction to |factor| or to |logarithmic|."
--------------------------------------------------------------------------------
    

--------------------------------------------------------------------------------
key           "SpringEmbedderFRExact.idealEdgeLength"
summary       "Sets the ideal edge length to a length."
--------------------------------------------------------------------------------
    

--------------------------------------------------------------------------------
key           "SpringEmbedderFRExact.convTolerance"
summary       ""
--------------------------------------------------------------------------------


-- Local Variables:
-- mode:latex
-- End:                      
