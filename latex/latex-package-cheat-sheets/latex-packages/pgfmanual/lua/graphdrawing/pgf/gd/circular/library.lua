-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /cvsroot/pgf/pgf/generic/pgf/graphdrawing/lua/pgf/gd/circular/library.lua,v 1.2 2013/04/04 20:43:45 tantau Exp $


-- Imports
local declare = require "pgf.gd.interface.InterfaceToAlgorithms".declare

---
-- ``Circular'' graph drawing algorithms arrange the nodes of a graph
-- on one of more circles.
--
-- @library

local circular -- Library name

-- Load declarations from:

-- Load algorithms from:
require "pgf.gd.circular.Tantau2012"


-- General declarations
