-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /cvsroot/pgf/pgf/generic/pgf/graphdrawing/lua/pgf/gd/routing/library.lua,v 1.1 2014/02/24 10:40:33 tantau Exp $


-- Imports
local declare = require "pgf.gd.interface.InterfaceToAlgorithms".declare

---
-- This library contains algorithms for routing edges through a graph.
--
-- @library

local routing -- Library name

-- Load declarations from:

-- Load algorithms from:
require "pgf.gd.routing.NecklaceRouting"


-- General declarations
