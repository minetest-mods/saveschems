-- Schematic file format version 4

local mts_save = function(name, schematic)
	local s = minetest.serialize_schematic(schematic, "mts", {})
	local path = minetest.get_modpath("saveschems") .. "/schematics"
	local filename = path .. "/" .. name .. ".mts"
	filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
	local file, err = io.open(filename, "wb")
	if err == nil then
		file:write(s)
		file:flush()
		file:close()
	end
	print("Wrote: " .. filename)
end

-- This node will not replace existing world nodes

local _ = {name = "air", prob = 0}

-- Mapgen Aspen tree

local T = {name = "default:aspen_tree", prob = 255, force_place = true}
local B = {name = "default:aspen_tree", prob = 255}
local L = {name = "default:aspen_leaves", prob = 255}
local M = {name = "default:aspen_leaves", prob = 223}
local N = {name = "default:aspen_leaves", prob = 127}

mts_save("aspen_tree", {
	size = {x = 5, y = 14, z = 5},
	data = {
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		_, _, _, _, _,

		_, _, T, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		_, L, T, L, _,
		L, L, T, L, L,
		_, L, T, L, _,
		L, L, T, L, L,
		_, L, T, L, _,
		L, L, L, L, L,
		_, L, L, L, _,
		_, _, L, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
		{ypos = 3, prob = 127},
		{ypos = 8, prob = 127},
		{ypos = 10, prob = 127},
	},
})

-- Aspen tree from sapling

mts_save("aspen_tree_from_sapling", {
	size = {x = 5, y = 14, z = 5},
	data = {
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		_, _, _, _, _,

		_, _, B, _, _,
		_, _, T, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, L, B, L, _,
		L, L, B, L, L,
		_, L, B, L, _,
		L, L, B, L, L,
		_, L, B, L, _,
		L, L, L, L, L,
		_, L, L, L, _,
		_, _, L, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		M, L, L, L, M,
		_, M, L, M, _,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
		{ypos = 3, prob = 127},
		{ypos = 8, prob = 127},
		{ypos = 10, prob = 127},
	},
})

-- Mapgen Apple tree

local L = {name = "default:leaves", prob = 191}
local N = {name = "default:leaves", prob = 223}
local M = {name = "default:leaves", prob = 255}
local F = {name = "default:apple", prob = 63}
local T = {name = "default:tree", prob = 255}
local Y = {name = "default:tree", prob = 255, force_place = true}
local U = {name = "default:tree", prob = 191}
local I = {name = "default:tree", prob = 191, force_place = true}

mts_save("apple_tree", {
	size = {x = 5, y = 8, z = 5},
	data = {
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		L, N, N, N, L,
		L, N, N, N, L,
		L, N, N, N, L,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, I, F, I, N,
		N, M, M, M, N,
		N, M, M, M, N,
		_, N, N, N, _,
 
		_, _, Y, _, _,
		_, _, Y, _, _,
		_, _, Y, _, _,
		_, _, Y, _, _,
		N, F, M, F, N,
		N, M, M, M, N,
		N, M, M, M, N,
		_, N, M, N, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, I, F, I, N,
		N, M, M, M, N,
		N, M, M, M, N,
		_, N, N, N, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		L, N, N, N, L,
		L, N, N, N, L,
		L, N, N, N, L,
		_, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
		{ypos = 6, prob = 127},
	},
})

-- Apple tree from sapling

mts_save("apple_tree_from_sapling", {
	size = {x = 5, y = 8, z = 5},
	data = {
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		L, N, N, N, L,
		L, N, N, N, L,
		L, N, N, N, L,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, U, F, U, N,
		N, M, M, M, N,
		N, M, M, M, N,
		_, N, N, N, _,

		_, _, T, _, _,
		_, _, Y, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		N, F, M, F, N,
		N, M, M, M, N,
		N, M, M, M, N,
		_, N, M, N, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, U, F, U, N,
		N, M, M, M, N,
		N, M, M, M, N,
		_, N, N, N, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		L, N, N, N, L,
		L, N, N, N, L,
		L, N, N, N, L,
		_, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
		{ypos = 6, prob = 127},
	},
})

-- Mapgen Jungle tree

local L = {name = "default:jungleleaves", prob = 255}
local N = {name = "default:jungleleaves", prob = 223}
local M = {name = "default:jungleleaves", prob = 191}
local B = {name = "default:jungletree", prob = 255, force_place = true}
local Y = {name = "default:jungletree", prob = 191, force_place = true}
local U = {name = "default:jungletree", prob = 127, force_place = true}
local I = {name = "default:jungletree", prob = 255}

mts_save("jungle_tree", {
	size = {x = 5, y = 17, z = 5},
	data = {
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, L, N, _, _,
		_, _, N, L, N,
		_, _, _, _, _,
		_, _, _, _, _,
		M, N, N, N, M,
		M, N, N, N, M,
		_, _, _, _, _,

		_, _, B, _, _,
		_, _, B, _, _,
		_, _, U, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		L, B, L, _, _,
		_, _, L, B, L,
		_, _, _, _, _,
		_, _, _, _, _,
		N, Y, L, Y, N,
		N, L, L, L, N,
		_, N, N, N, _,

		_, B, B, B, _,
		_, B, B, B, _,
		_, U, B, U, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, L, N,
		N, L, B, _, _,
		N, L, B, _, _,
		_, _, B, L, N,
		_, _, B, _, _,
		_, _, B, _, _,
		N, L, L, L, N,
		N, L, L, L, N,
		_, N, L, N, _,

		_, _, B, _, _,
		_, _, B, _, _,
		_, _, U, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, L, B, L,
		L, B, L, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, Y, L, Y, N,
		N, L, L, L, N,
		_, N, N, N, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, N, L, N,
		N, L, N, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		M, N, N, N, M,
		M, N, N, N, M,
		_, _, _, _, _,
	},
	yslice_prob = {
		{ypos=8, prob=127},
		{ypos=9, prob=127},
		{ypos=10, prob=127},
		{ypos=11, prob=127},
	},
})

-- Jungle tree from sapling

local B = {name = "default:jungletree", prob = 255}
local C = {name = "default:jungletree", prob = 255, force_place = true}
local Y = {name = "default:jungletree", prob = 191}
local U = {name = "default:jungletree", prob = 127}

mts_save("jungle_tree_from_sapling", {
	size = {x = 5, y = 17, z = 5},
	data = {
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, L, N, _, _,
		_, _, N, L, N,
		_, _, _, _, _,
		_, _, _, _, _,
		M, N, N, N, M,
		M, N, N, N, M,
		_, _, _, _, _,

		_, _, B, _, _,
		_, _, B, _, _,
		_, _, U, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		L, B, L, _, _,
		_, _, L, B, L,
		_, _, _, _, _,
		_, _, _, _, _,
		N, Y, L, Y, N,
		N, L, L, L, N,
		_, N, N, N, _,

		_, B, B, B, _,
		_, B, C, B, _,
		_, U, B, U, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, _, _,
		_, _, B, L, N,
		N, L, B, _, _,
		N, L, B, _, _,
		_, _, B, L, N,
		_, _, B, _, _,
		_, _, B, _, _,
		N, L, L, L, N,
		N, L, L, L, N,
		_, N, L, N, _,

		_, _, B, _, _,
		_, _, B, _, _,
		_, _, U, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, L, B, L,
		L, B, L, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, Y, L, Y, N,
		N, L, L, L, N,
		_, N, N, N, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, N, L, N,
		N, L, N, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		M, N, N, N, M,
		M, N, N, N, M,
		_, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 8, prob = 127},
		{ypos = 9, prob = 127},
		{ypos = 10, prob = 127},
		{ypos = 11, prob = 127},
	},
})

-- Mapgen Pine tree

local L = {name = "default:pine_needles", prob = 255}
local M = {name = "default:pine_needles", prob = 223}
local N = {name = "default:pine_needles", prob = 191}
local T = {name = "default:pine_tree", prob = 255, force_place = true}
local B = {name = "default:pine_tree", prob = 255}

mts_save("pine_tree", {
	size = {x = 5, y = 14, z = 5},
	data = {
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,

		_, _, T, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		L, _, T, _, L,
		_, L, T, L, _,
		_, _, T, _, _,
		L, _, T, _, L,
		_, L, T, L, _,
		_, _, T, _, _,
		L, _, T, _, L,
		_, L, L, L, _,
		_, _, L, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
		{ypos = 3, prob = 127},
		{ypos = 7, prob = 127},
		{ypos = 10, prob = 127},
	},
})

-- Pine tree from sapling

local T = {name = "default:pine_tree", prob = 255}
local U = {name = "default:pine_tree", prob = 255, force_place = true}

mts_save("pine_tree_from_sapling", {
	size = {x = 5, y = 14, z = 5},
	data = {
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,

		_, _, T, _, _,
		_, _, U, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		_, _, T, _, _,
		L, _, T, _, L,
		_, L, T, L, _,
		_, _, T, _, _,
		L, _, T, _, L,
		_, L, T, L, _,
		_, _, T, _, _,
		L, _, T, _, L,
		_, L, L, L, _,
		_, _, L, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,
		M, L, _, L, M,
		_, L, L, L, _,
		_, _, _, _, _,

		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
		N, M, L, M, N,
		_, _, _, _, _,
		_, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
		{ypos = 3, prob = 127},
		{ypos = 7, prob = 127},
		{ypos = 10, prob = 127},
	},
})

-- Mapgen Acacia tree

local L = {name = "default:acacia_leaves", prob = 255}
local M = {name = "default:acacia_leaves", prob = 223}
local T = {name = "default:acacia_tree", prob = 255, force_place = true}

mts_save("acacia_tree", {
	size = {x = 9, y = 8, z = 9},
	data = {
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		M, M, M, M, _, _, _, _, _,
		_, _, _, _, M, M, M, M, M,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		M, L, L, M, _, _, _, _, _,
		_, _, _, _, M, L, L, L, M,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, T, _, _, _, _, _, _,
		M, L, L, M, _, _, T, _, _,
		_, _, _, _, M, L, L, L, M,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, T, _, _, _, _, _,
		_, _, _, _, _, T, _, _, _,
		M, M, M, M, _, _, _, _, _,
		_, _, _, _, M, L, L, L, M,

		_, _, _, _, T, _, _, _, _,
		_, _, _, _, T, _, _, _, _,
		_, _, _, _, T, _, _, _, _,
		_, _, _, _, T, _, _, _, _,
		_, _, _, _, T, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		M, M, M, M, M, M, M, M, M,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, T, _, _, _,
		_, _, _, T, _, _, _, _, _,
		_, _, _, _, _, M, M, M, M,
		M, L, L, L, M, _, _, _, _,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, T, _, _,
		_, _, T, _, _, M, L, L, M,
		M, L, L, L, M, _, _, _, _,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, M, L, L, M,
		M, L, L, L, M, _, _, _, _,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, M, M, M, M,
		M, M, M, M, M, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
	},
})

-- Acacia tree from sapling

local T = {name = "default:acacia_tree", prob = 255}
local U = {name = "default:acacia_tree", prob = 255, force_place = true}

mts_save("acacia_tree_from_sapling", {
	size = {x = 9, y = 8, z = 9},
	data = {

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		M, M, M, M, _, _, _, _, _,
		_, _, _, _, M, M, M, M, M,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		M, L, L, M, _, _, _, _, _,
		_, _, _, _, M, L, L, L, M,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, T, _, _, _, _, _, _,
		M, L, L, M, _, _, T, _, _,
		_, _, _, _, M, L, L, L, M,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, T, _, _, _, _, _,
		_, _, _, _, _, T, _, _, _,
		M, M, M, M, _, _, _, _, _,
		_, _, _, _, M, L, L, L, M,

		_, _, _, _, T, _, _, _, _,
		_, _, _, _, U, _, _, _, _,
		_, _, _, _, T, _, _, _, _,
		_, _, _, _, T, _, _, _, _,
		_, _, _, _, T, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		M, M, M, M, M, M, M, M, M,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, T, _, _, _,
		_, _, _, T, _, _, _, _, _,
		_, _, _, _, _, M, M, M, M,
		M, L, L, L, M, _, _, _, _,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, T, _, _,
		_, _, T, _, _, M, L, L, M,
		M, L, L, L, M, _, _, _, _,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, M, L, L, M,
		M, L, L, L, M, _, _, _, _,

		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, _, _, _, _,
		_, _, _, _, _, M, M, M, M,
		M, M, M, M, M, _, _, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
	},
})

-- Large cactus

local C = {name = "default:cactus", prob = 255, param2 = 20}
local R = {name = "default:cactus", prob = 255, param2 = 20, force_place = true}
local E = {name = "default:cactus", prob = 127, param2 = 20}

mts_save("large_cactus", {
	size = {x = 5, y = 7, z = 1},
	data = {
		_, _, R, _, _,
		_, _, C, _, _,
		_, _, C, _, _,
		C, C, C, C, C,
		C, _, C, _, C,
		E, _, C, _, E,
		_, _, C, _, _,
	},
})

-- Papyrus

mts_save("papyrus", {
	size = {x = 1, y = 7, z = 1},
	data = {
		{name = "default:dirt", prob = 255, force_place = true},
		{name = "default:dirt", prob = 255, force_place = true},
		{name = "default:papyrus", prob = 255},
		{name = "default:papyrus", prob = 255},
		{name = "default:papyrus", prob = 255},
		{name = "default:papyrus", prob = 255},
		{name = "default:papyrus", prob = 255},
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
		{ypos = 3, prob = 127},
	},
})

-- Waterlily

mts_save("waterlily", {
	size = {x = 1, y = 3, z = 1},
	data = {
		{name = "default:dirt", prob = 255, force_place = true},
		{name = "air", prob = 0},
		{name = "flowers:waterlily", prob = 255},
	}
})

-- Corals

local C = {name = "default:coral_brown", prob = 255, force_place = true}
local c = {name = "default:coral_brown", prob = 191, force_place = true}
local O = {name = "default:coral_orange", prob = 255, force_place = true}
local o = {name = "default:coral_orange", prob = 191, force_place = true}
local X = {name = "default:coral_skeleton", prob = 255, force_place = true}
local x = {name = "default:coral_skeleton", prob = 63, force_place = true}

mts_save("corals", {
	size = {x = 5, y = 3, z = 5},
	data = {
		_, _, _, _, _,
		o, C, O, c, _,
		_, C, x, _, _,

		_, _, X, _, _,
		C, O, O, C, o,
		c, c, O, o, x,

		_, X, X, X, _,
		c, C, C, O, O,
		O, C, O, C, c,

		_, _, X, _, _,
		x, O, C, O, C,
		_, x, C, O, _,

		_, _, _, _, _,
		_, o, O, C, c,
		_, _, o, _, _,
	},
	yslice_prob = {
		{ypos = 2, prob = 127},
	}
})

-- Bush

local L = {name = "default:bush_leaves", prob = 255}
local M = {name = "default:bush_leaves", prob = 191}
local N = {name = "default:bush_leaves", prob = 127}
local S = {name = "default:bush_stem", prob = 255, force_place = true}

mts_save("bush", {
	size = {x = 3, y = 3, z = 3},
	data = {
		_, _, _,
		M, L, M,
		N, M, N,

		_, _, _,
		L, S, L,
		M, L, M,

		_, _, _,
		M, L, M,
		N, M, N,
	},
})

-- Acacia bush

local L = {name = "default:acacia_bush_leaves", prob = 255}
local M = {name = "default:acacia_bush_leaves", prob = 191}
local N = {name = "default:acacia_bush_leaves", prob = 127}
local S = {name = "default:acacia_bush_stem", prob = 255, force_place = true}

mts_save("acacia_bush", {
	size = {x = 3, y = 3, z = 3},
	data = {
		_, _, _,
		M, L, M,
		N, M, N,

		_, _, _,
		L, S, L,
		M, L, M,

		_, _, _,
		M, L, M,
		N, M, N,
	},
})

-- Apple tree log

mts_save("apple_log", {
	size = {x = 5, y = 2, z = 1},
	data = {
		{name = "default:tree", param2 = 12, prob = 127},
		{name = "default:tree", param2 = 12},
		{name = "default:tree", param2 = 12},
		{name = "default:tree", param2 = 12},
		{name = "default:tree", param2 = 12, prob = 127},
		{name = "air", prob = 0},
		{name = "air", prob = 0},
		{name = "flowers:mushroom_brown", prob = 63},
		{name = "air", prob = 0},
		{name = "air", prob = 0},
	},
})

-- Jungletree log

mts_save("jungle_log", {
	size = {x = 5, y = 2, z = 1},
	data = {
		{name = "default:jungletree", param2 = 12, prob = 127},
		{name = "default:jungletree", param2 = 12},
		{name = "default:jungletree", param2 = 12},
		{name = "default:jungletree", param2 = 12},
		{name = "default:jungletree", param2 = 12, prob = 127},
		{name = "air", prob = 0},
		{name = "air", prob = 0},
		{name = "flowers:mushroom_brown", prob = 127},
		{name = "air", prob = 0},
		{name = "air", prob = 0},
	},
})

-- Pine tree log

mts_save("pine_log", {
	size = {x = 5, y = 2, z = 1},
	data = {
		{name = "default:pine_tree", param2 = 12, prob = 127},
		{name = "default:pine_tree", param2 = 12},
		{name = "default:pine_tree", param2 = 12},
		{name = "default:pine_tree", param2 = 12},
		{name = "default:pine_tree", param2 = 12, prob = 127},
		{name = "air", prob = 0},
		{name = "air", prob = 0},
		{name = "flowers:mushroom_red", prob = 63},
		{name = "air", prob = 0},
		{name = "air", prob = 0},
	},
})

-- Acacia tree log

mts_save("acacia_log", {
	size = {x = 5, y = 1, z = 1},
	data = {
		{name = "default:acacia_tree", param2 = 12, prob = 127},
		{name = "default:acacia_tree", param2 = 12},
		{name = "default:acacia_tree", param2 = 12},
		{name = "default:acacia_tree", param2 = 12},
		{name = "default:acacia_tree", param2 = 12, prob = 127},
	},
})

-- Aspen tree log

mts_save("aspen_log", {
	size = {x = 5, y = 2, z = 1},
	data = {
		{name = "default:aspen_tree", param2 = 12, prob = 127},
		{name = "default:aspen_tree", param2 = 12},
		{name = "default:aspen_tree", param2 = 12},
		{name = "default:aspen_tree", param2 = 12},
		{name = "default:aspen_tree", param2 = 12, prob = 127},
		{name = "air", prob = 0},
		{name = "flowers:mushroom_red", prob = 63},
		{name = "flowers:mushroom_brown", prob = 63},
		{name = "air", prob = 0},
		{name = "air", prob = 0},
	},
})
