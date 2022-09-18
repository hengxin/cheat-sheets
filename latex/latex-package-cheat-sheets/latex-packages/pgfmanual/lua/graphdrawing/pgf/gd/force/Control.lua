-- Copyright 2012 by Till Tantau
--
-- This file may be distributed an/or modified
--
-- 1. under the LaTeX Project Public License and/or
-- 2. under the GNU Public License
--
-- See the file doc/generic/pgf/licenses/LICENSE for more information

-- @release $Header: /cvsroot/pgf/pgf/generic/pgf/graphdrawing/lua/pgf/gd/force/Control.lua,v 1.3 2013/05/23 20:01:27 tantau Exp $


-- Imports
local declare = require("pgf.gd.interface.InterfaceToAlgorithms").declare


---
-- @section subsection {Controlling and Configuring Force-Based Algorithms}
--
-- All force-based algorithms are based on
-- a general pattern which we detail in the following. Numerous options
-- can be used to influence the behaviour of this general pattern; more
-- specific options that apply only to individual algorithms are
-- explained along with these algorithms.
--
-- @end


