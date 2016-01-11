
-- Schematic file format version 4

local mts_save = function(name, schematic)
	local s = minetest.serialize_schematic(schematic, mts, {})
	local path = minetest.get_modpath("saveschems") .. "/schematics"
	local filename = path .. "/" .. name .. ".mts"
	filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
	local file, err = io.open(filename, "wb")
	if err == nil then
		file:write(s)
		file:flush()
		file:close()
	end
end

-- Aspen tree

local A = {name="air", prob=0}
local T = {name="default:aspen_tree", prob=255, force_place = true}
local B = {name="default:aspen_tree", prob=255}
local L = {name="default:aspen_leaves", prob=255}
local O = {name="default:aspen_leaves", prob=127}

mts_save("aspen_tree", {
	size = { x = 5, y = 10, z = 5 },
	data = {
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, L, A, A,
		A, L, L, L, A,
		O, L, L, L, O,
		O, L, A, L, O,
		A, A, A, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, O, A, A,
		A, A, L, A, A,
		A, L, L, L, A,
		L, L, L, L, L,
		L, L, L, L, L,
		L, L, L, L, L,
		A, O, L, O, A,

		A, A, A, A, A,
		A, A, T, A, A,
		A, A, T, A, A,
		A, O, T, O, A,
		A, L, T, L, A,
		L, L, T, L, L,
		L, L, T, L, L,
		L, L, L, L, L,
		A, L, L, L, A,
		A, L, L, L, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, O, A, A,
		A, A, L, A, A,
		A, L, L, L, A,
		L, L, L, L, L,
		L, L, L, L, L,
		L, L, L, L, L,
		A, O, L, O, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, L, A, A,
		A, L, L, L, A,
		O, L, L, L, O,
		O, L, A, L, O,
		A, A, A, A, A,
	},
	yslice_prob = {
		{ypos=2, prob=191},
		{ypos=7, prob=191},
	},
})

mts_save("aspen_tree_from_sapling", {
	size = { x = 5, y = 10, z = 5 },
	data = {
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, L, A, A,
		A, L, L, L, A,
		O, L, L, L, O,
		O, L, A, L, O,
		A, A, A, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, O, A, A,
		A, A, L, A, A,
		A, L, L, L, A,
		L, L, L, L, L,
		L, L, L, L, L,
		L, L, L, L, L,
		A, O, L, O, A,

		A, A, A, A, A,
		A, A, T, A, A,
		A, A, B, A, A,
		A, O, B, O, A,
		A, L, B, L, A,
		L, L, B, L, L,
		L, L, B, L, L,
		L, L, L, L, L,
		A, L, L, L, A,
		A, L, L, L, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, O, A, A,
		A, A, L, A, A,
		A, L, L, L, A,
		L, L, L, L, L,
		L, L, L, L, L,
		L, L, L, L, L,
		A, O, L, O, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, L, A, A,
		A, L, L, L, A,
		O, L, L, L, O,
		O, L, A, L, O,
		A, A, A, A, A,
	},
	yslice_prob = {
		{ypos=2, prob=191},
		{ypos=7, prob=191},
	},
})

-- Apple tree

local L = {name="default:leaves", prob=191}
local N = {name="default:leaves", prob=223}
local M = {name="default:leaves", prob=255}
local F = {name="default:apple", prob=63}
local T = {name="default:tree", prob=255}
local Y = {name="default:tree", prob=255, force_place = true}
local U = {name="default:tree", prob=191}
local I = {name="default:tree", prob=191, force_place = true}

mts_save("apple_tree", {
	size = {x=5, y=7, z=5},
	data = {
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		L, N, N, N, L,
		L, N, N, N, L,
		A, A, A, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, I, F, I, N,
		N, M, M, M, N,
		A, N, N, N, A,

		A, A, Y, A, A,
		A, A, Y, A, A,
		A, A, Y, A, A,
		A, A, Y, A, A,
		N, F, M, F, N,
		N, M, M, M, N,
		A, N, M, N, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, I, F, I, N,
		N, M, M, M, N,
		A, N, N, N, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		L, N, N, N, L,
		L, N, N, N, L,
		A, A, A, A, A,
	},
	yslice_prob = {
		{ypos=2, prob=127},
	},
})

-- Apple tree from sapling
mts_save("apple_tree_from_sapling", {
	size = {x=5, y=7, z=5},
	data = {
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		L, N, N, N, L,
		L, N, N, N, L,
		A, A, A, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, U, F, U, N,
		N, M, M, M, N,
		A, N, N, N, A,

		A, A, T, A, A,
		A, A, Y, A, A,
		A, A, T, A, A,
		A, A, T, A, A,
		N, F, M, F, N,
		N, M, M, M, N,
		A, N, M, N, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, U, F, U, N,
		N, M, M, M, N,
		A, N, N, N, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		L, N, N, N, L,
		L, N, N, N, L,
		A, A, A, A, A,
	},
	yslice_prob = {
		{ypos=2, prob=127},
	},
})

-- Jungle tree

local L = {name="default:jungleleaves", prob=255}
local N = {name="default:jungleleaves", prob=223}
local M = {name="default:jungleleaves", prob=191}
local B = {name="default:jungletree", prob=255, force_place = true}
local Y = {name="default:jungletree", prob=191, force_place = true}
local U = {name="default:jungletree", prob=127, force_place = true}
local I = {name="default:jungletree", prob=255}

mts_save("jungle_tree", {
	size = {x=5, y=17, z=5},
	data = {
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, L, N, A, A,
		A, A, N, L, N,
		A, A, A, A, A,
		A, A, A, A, A,
		M, N, N, N, M,
		M, N, N, N, M,
		A, A, A, A, A,

		A, A, B, A, A,
		A, A, B, A, A,
		A, A, U, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		L, B, L, A, A,
		A, A, L, B, L,
		A, A, A, A, A,
		A, A, A, A, A,
		N, Y, L, Y, N,
		N, L, L, L, N,
		A, N, N, N, A,

		A, B, B, B, A,
		A, I, B, I, A,
		A, U, B, U, A,
		A, A, B, A, A,
		A, A, B, A, A,
		A, A, B, A, A,
		A, A, B, A, A,
		A, A, B, A, A,
		A, A, B, L, N,
		N, L, B, A, A,
		N, L, B, A, A,
		A, A, B, L, N,
		A, A, B, A, A,
		A, A, B, A, A,
		N, L, L, L, N,
		N, L, L, L, N,
		A, N, L, N, A,

		A, A, B, A, A,
		A, A, B, A, A,
		A, A, U, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, L, B, L,
		L, B, L, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, Y, L, Y, N,
		N, L, L, L, N,
		A, N, N, N, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, N, L, N,
		N, L, N, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		M, N, N, N, M,
		M, N, N, N, M,
		A, A, A, A, A,
	},
	yslice_prob = {
		{ypos=8, prob=127},
		{ypos=9, prob=127},
		{ypos=10, prob=127},
		{ypos=11, prob=127},
	},
})

-- Jungle tree from sapling

local B = {name="default:jungletree", prob=255}
local Y = {name="default:jungletree", prob=191}
local U = {name="default:jungletree", prob=127}

mts_save("jungle_tree_from_sapling", {
	size = {x=5, y=17, z=5},
	data = {
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, L, N, A, A,
		A, A, N, L, N,
		A, A, A, A, A,
		A, A, A, A, A,
		M, N, N, N, M,
		M, N, N, N, M,
		A, A, A, A, A,

		A, A, B, A, A,
		A, A, B, A, A,
		A, A, U, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		L, B, L, A, A,
		A, A, L, B, L,
		A, A, A, A, A,
		A, A, A, A, A,
		N, Y, L, Y, N,
		N, L, L, L, N,
		A, N, N, N, A,

		A, B, B, B, A,
		A, B, {name="default:jungletree", prob=255, force_place = true}, B, A,
		A, U, B, U, A,
		A, A, B, A, A,
		A, A, B, A, A,
		A, A, B, A, A,
		A, A, B, A, A,
		A, A, B, A, A,
		A, A, B, L, N,
		N, L, B, A, A,
		N, L, B, A, A,
		A, A, B, L, N,
		A, A, B, A, A,
		A, A, B, A, A,
		N, L, L, L, N,
		N, L, L, L, N,
		A, N, L, N, A,

		A, A, B, A, A,
		A, A, B, A, A,
		A, A, U, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, L, B, L,
		L, B, L, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, Y, L, Y, N,
		N, L, L, L, N,
		A, N, N, N, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, N, L, N,
		N, L, N, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		M, N, N, N, M,
		M, N, N, N, M,
		A, A, A, A, A,
	},
	yslice_prob = {
		{ypos=8, prob=127},
		{ypos=9, prob=127},
		{ypos=10, prob=127},
		{ypos=11, prob=127},
	},
})

-- Pine tree

local L = {name="default:pine_needles", prob=255}
local M = {name="default:pine_needles", prob=223}
local N = {name="default:pine_needles", prob=191}
local T = {name="default:pine_tree", prob=255, force_place = true}

mts_save("pine_tree", {
	size = {x=5, y=14, z=5},
	data = {
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,

		A, A, T, A, A,
		A, A, T, A, A,
		A, A, T, A, A,
		A, A, T, A, A,
		A, A, T, A, A,
		L, A, T, A, L,
		A, L, T, L, A,
		A, A, T, A, A,
		L, A, T, A, L,
		A, L, T, L, A,
		A, A, T, A, A,
		L, A, T, A, L,
		A, L, L, L, A,
		A, A, L, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
	},
	yslice_prob = {
		{ypos=2, prob=127},
		{ypos=3, prob=127},
		{ypos=7, prob=127},
		{ypos=10, prob=127},
	},
})

-- Pine tree from sapling

local T = {name="default:pine_tree", prob=255}

mts_save("pine_tree_from_sapling", {
	size = {x=5, y=14, z=5},
	data = {
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,

		A, A, T, A, A,
		A, A, {name="default:pine_tree", prob=255, force_place = true}, A, A,
		A, A, T, A, A,
		A, A, T, A, A,
		A, A, T, A, A,
		L, A, T, A, L,
		A, L, T, L, A,
		A, A, T, A, A,
		L, A, T, A, L,
		A, L, T, L, A,
		A, A, T, A, A,
		L, A, T, A, L,
		A, L, L, L, A,
		A, A, L, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,
		M, L, A, L, M,
		A, L, L, L, A,
		A, A, A, A, A,

		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
		N, M, L, M, N,
		A, A, A, A, A,
		A, A, A, A, A,
	},
	yslice_prob = {
		{ypos=2, prob=127},
		{ypos=3, prob=127},
		{ypos=7, prob=127},
		{ypos=10, prob=127},
	},
})

-- Acacia tree

local L = {name="default:acacia_leaves", prob=255}
local M = {name="default:acacia_leaves", prob=223}
local T = {name="default:acacia_tree", prob=255, force_place = true}

mts_save("acacia_tree", {
	size = {x=9, y=8, z=9},
	data = {
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		M, M, M, M, A, A, A, A, A,
		A, A, A, A, M, M, M, M, M,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		M, L, L, M, A, A, A, A, A,
		A, A, A, A, M, L, L, L, M,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, T, A, A, A, A, A, A,
		M, L, L, M, A, A, T, A, A,
		A, A, A, A, M, L, L, L, M,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, T, A, A, A, A, A,
		A, A, A, A, A, T, A, A, A,
		M, M, M, M, A, A, A, A, A,
		A, A, A, A, M, L, L, L, M,

		A, A, A, A, T, A, A, A, A,
		A, A, A, A, T, A, A, A, A,
		A, A, A, A, T, A, A, A, A,
		A, A, A, A, T, A, A, A, A,
		A, A, A, A, T, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		M, M, M, M, M, M, M, M, M,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, T, A, A, A,
		A, A, A, T, A, A, A, A, A,
		A, A, A, A, A, M, M, M, M,
		M, L, L, L, M, A, A, A, A,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, T, A, A,
		A, A, T, A, A, M, L, L, M,
		M, L, L, L, M, A, A, A, A,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, M, L, L, M,
		M, L, L, L, M, A, A, A, A,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, M, M, M, M,
		M, M, M, M, M, A, A, A, A,
	},
	yslice_prob = {
		{ypos=2, prob=127},
	},
})

-- Acacia tree from sapling

local T = {name="default:acacia_tree", prob=255}

mts_save("acacia_tree_from_sapling", {
	size = {x=9, y=8, z=9},
	data = {

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		M, M, M, M, A, A, A, A, A,
		A, A, A, A, M, M, M, M, M,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		M, L, L, M, A, A, A, A, A,
		A, A, A, A, M, L, L, L, M,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, T, A, A, A, A, A, A,
		M, L, L, M, A, A, T, A, A,
		A, A, A, A, M, L, L, L, M,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, T, A, A, A, A, A,
		A, A, A, A, A, T, A, A, A,
		M, M, M, M, A, A, A, A, A,
		A, A, A, A, M, L, L, L, M,

		A, A, A, A, T, A, A, A, A,
		A, A, A, A, {name="default:acacia_tree", prob=255, force_place = true}, A, A, A, A,
		A, A, A, A, T, A, A, A, A,
		A, A, A, A, T, A, A, A, A,
		A, A, A, A, T, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		M, M, M, M, M, M, M, M, M,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, T, A, A, A,
		A, A, A, T, A, A, A, A, A,
		A, A, A, A, A, M, M, M, M,
		M, L, L, L, M, A, A, A, A,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, T, A, A,
		A, A, T, A, A, M, L, L, M,
		M, L, L, L, M, A, A, A, A,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, M, L, L, M,
		M, L, L, L, M, A, A, A, A,

		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, A, A, A, A,
		A, A, A, A, A, M, M, M, M,
		M, M, M, M, M, A, A, A, A,
	},
	yslice_prob = {
		{ypos=2, prob=127},
	},
})

-- Large cactus
local C = {name="default:cactus", prob=255, param2=20}
local E = {name="default:cactus", prob=127, param2=20}
mts_save("large_cactus", {
	size = {x=5, y=7, z=1},
	data = {
		A, A, {name="default:cactus", prob=255, param2=20, force_place = true}, A, A,
		A, A, C, A, A,
		A, A, C, A, A,
		C, C, C, C, C,
		C, A, C, A, C,
		E, A, C, A, E,
		A, A, C, A, A,
	},
})

-- Papyrus
mts_save("papyrus", {
	size = {x = 1, y = 7, z = 1},
	data = {
		{name = "default:sand", prob = 255, force_place = true},
		{name = "default:sand", prob = 255, force_place = true},
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

