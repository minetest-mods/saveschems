-- Schematic file format version 4

local A = {name="air", prob=0}
local T = {name="default:aspen_tree", prob=255, force_place = true}
local B = {name="default:aspen_tree", prob=255}
local L = {name="default:aspen_leaves", prob=255}
local O = {name="default:aspen_leaves", prob=127}

local aspen_tree_data = {
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
}

local aspen_tree_serialized = minetest.serialize_schematic(aspen_tree_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/aspen_tree.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(aspen_tree_serialized)
	file:flush()
	file:close()
end
 
local aspen_tree_from_sapling_data = {
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
}

local aspen_tree_from_sapling_serialized = minetest.serialize_schematic(aspen_tree_from_sapling_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/aspen_tree_from_sapling.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(aspen_tree_from_sapling_serialized)
	file:flush()
	file:close()
end

-- Apple tree

	local apple_tree_data = {
		size = {x=5, y=7, z=5},
		data = {-- -2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=191},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=191},

			{name="default:leaves", prob=191},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- -1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=223},
			{name="default:tree", prob=191, force_place = true},
			{name="default:apple", prob=63},
			{name="default:tree", prob=191, force_place = true},
			{name="default:leaves", prob=223},

			{name="default:leaves", prob=223},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=223},

			{name="air", prob=0},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="air", prob=0},

			-- 0

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=223},
			{name="default:apple", prob=63},
			{name="default:leaves", prob=255},
			{name="default:apple", prob=63},
			{name="default:leaves", prob=223},

			{name="default:leaves", prob=223},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=223},

			{name="air", prob=0},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=223},
			{name="air", prob=0},

			-- 1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=223},
			{name="default:tree", prob=191, force_place = true},
			{name="default:apple", prob=63},
			{name="default:tree", prob=191, force_place = true},
			{name="default:leaves", prob=223},

			{name="default:leaves", prob=223},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=223},

			{name="air", prob=0},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="air", prob=0},

			-- 2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=191},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=191},

			{name="default:leaves", prob=191},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
		},
		yslice_prob = {
                	{ypos=2, prob=127},
		},
	}

local apple_tree_serialized = minetest.serialize_schematic(apple_tree_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/apple_tree.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(apple_tree_serialized)
	file:flush()
	file:close()
end


-- Apple tree from sapling

	local apple_tree_from_sapling_data = {
		size = {x=5, y=7, z=5},
		data = {-- -2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=191},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=191},

			{name="default:leaves", prob=191},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- -1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=223},
			{name="default:tree", prob=191},
			{name="default:apple", prob=63},
			{name="default:tree", prob=191},
			{name="default:leaves", prob=223},

			{name="default:leaves", prob=223},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=223},

			{name="air", prob=0},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="air", prob=0},

			-- 0

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=223},
			{name="default:apple", prob=63},
			{name="default:leaves", prob=255},
			{name="default:apple", prob=63},
			{name="default:leaves", prob=223},

			{name="default:leaves", prob=223},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=223},

			{name="air", prob=0},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=223},
			{name="air", prob=0},

			-- 1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=223},
			{name="default:tree", prob=191},
			{name="default:apple", prob=63},
			{name="default:tree", prob=191},
			{name="default:leaves", prob=223},

			{name="default:leaves", prob=223},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=255},
			{name="default:leaves", prob=223},

			{name="air", prob=0},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="air", prob=0},

			-- 2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:leaves", prob=191},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=191},

			{name="default:leaves", prob=191},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=223},
			{name="default:leaves", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
		},
		yslice_prob = {
                	{ypos=2, prob=127},
		},
	}

local apple_tree_from_sapling_serialized = minetest.serialize_schematic(apple_tree_from_sapling_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/apple_tree_from_sapling.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(apple_tree_from_sapling_serialized)
	file:flush()
	file:close()
end


-- Jungle tree

	local jungle_tree_data = {
		size = {x=5, y=17, z=5},
		data = {
			-- -2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=191},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=191},

			{name="default:jungleleaves", prob=191},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- -1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=127, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungleleaves", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungleleaves", prob=255},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungletree", prob=191, force_place = true},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=191, force_place = true},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},

			-- 0

			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="default:jungletree", prob=127, force_place = true},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungletree", prob=127, force_place = true},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},

			-- 1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=127, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungleleaves", prob=255},

			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungleleaves", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungletree", prob=191, force_place = true},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=191, force_place = true},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},

			-- 2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=191},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=191},

			{name="default:jungleleaves", prob=191},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
		},
		yslice_prob = {
                	{ypos=8, prob=127},
                	{ypos=9, prob=127},
                	{ypos=10, prob=127},
                	{ypos=11, prob=127},
		},
	}

local jungle_tree_serialized = minetest.serialize_schematic(jungle_tree_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/jungle_tree.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(jungle_tree_serialized)
	file:flush()
	file:close()
end


-- Jungle tree from sapling

	local jungle_tree_from_sapling_data = {
		size = {x=5, y=17, z=5},
		data = {
			-- -2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=191},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=191},

			{name="default:jungleleaves", prob=191},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- -1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=127},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255},
			{name="default:jungleleaves", prob=255},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungletree", prob=191},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=191},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},

			-- 0

			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="default:jungletree", prob=255},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="default:jungletree", prob=255, force_place = true},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="default:jungletree", prob=127},
			{name="default:jungletree", prob=255},
			{name="default:jungletree", prob=127},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},

			-- 1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungletree", prob=127},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255},
			{name="default:jungleleaves", prob=255},

			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=223},
			{name="default:jungletree", prob=191},
			{name="default:jungleleaves", prob=255},
			{name="default:jungletree", prob=191},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},

			-- 2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},

			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=255},
			{name="default:jungleleaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:jungleleaves", prob=191},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=191},

			{name="default:jungleleaves", prob=191},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=223},
			{name="default:jungleleaves", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
		},
		yslice_prob = {
                	{ypos=8, prob=127},
                	{ypos=9, prob=127},
                	{ypos=10, prob=127},
                	{ypos=11, prob=127},
		},
	}

local jungle_tree_from_sapling_serialized = minetest.serialize_schematic(jungle_tree_from_sapling_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/jungle_tree_from_sapling.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(jungle_tree_from_sapling_serialized)
	file:flush()
	file:close()
end


-- Pine tree

	local pine_tree_data = {
		size = {x=5, y=14, z=5},
		data = {-- -2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- -1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 0

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
		},
		yslice_prob = {
                	{ypos=2, prob=127},
                	{ypos=3, prob=127},
                	{ypos=7, prob=127},
                	{ypos=10, prob=127},
		},
	}

local pine_tree_serialized = minetest.serialize_schematic(pine_tree_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/pine_tree.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(pine_tree_serialized)
	file:flush()
	file:close()
end


-- Pine tree from sapling

	local pine_tree_from_sapling_data = {
		size = {x=5, y=14, z=5},
		data = {-- -2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- -1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 0

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_tree", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_tree", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_tree", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},

			{name="air", prob=0},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=255},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:pine_needles", prob=191},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=255},
			{name="default:pine_needles", prob=223},
			{name="default:pine_needles", prob=191},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
		},
		yslice_prob = {
                	{ypos=2, prob=127},
                	{ypos=3, prob=127},
                	{ypos=7, prob=127},
                	{ypos=10, prob=127},
		},
	}

local pine_tree_from_sapling_serialized = minetest.serialize_schematic(pine_tree_from_sapling_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/pine_tree_from_sapling.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(pine_tree_from_sapling_serialized)
	file:flush()
	file:close()
end


-- Acacia tree

	local acacia_tree_data = {
		size = {x=9, y=8, z=9},
		data = {-- -4

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},

			-- -3

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			-- -2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			-- -1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			-- 0

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},

			-- 1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 3

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 4

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
		},
		yslice_prob = {
                	{ypos=2, prob=127},
		},
	}


local acacia_tree_serialized = minetest.serialize_schematic(acacia_tree_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/acacia_tree.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(acacia_tree_serialized)
	file:flush()
	file:close()
end


-- Acacia tree from sapling

	local acacia_tree_from_sapling_data = {
		size = {x=9, y=8, z=9},
		data = {-- -4

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},

			-- -3

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			-- -2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			-- -1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			-- 0

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255, force_place = true},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},

			-- 1

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 2

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_tree", prob=255},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 3

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=255},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			-- 4

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},

			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},

			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="default:acacia_leaves", prob=223},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
			{name="air", prob=0},
		},
		yslice_prob = {
                	{ypos=2, prob=127},
		},
	}


local acacia_tree_from_sapling_serialized = minetest.serialize_schematic(acacia_tree_from_sapling_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/acacia_tree_from_sapling.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(acacia_tree_from_sapling_serialized)
	file:flush()
	file:close()
end


-- Large cactus

local large_cactus_data = {
	size = {x=5, y=7, z=1},
	data = {
		{name="air", prob=0},
		{name="air", prob=0},
		{name="default:cactus", prob=255, param2=20, force_place = true},
		{name="air", prob=0},
		{name="air", prob=0},

		{name="air", prob=0},
		{name="air", prob=0},
		{name="default:cactus", prob=255, param2=20},
		{name="air", prob=0},
		{name="air", prob=0},

		{name="air", prob=0},
		{name="air", prob=0},
		{name="default:cactus", prob=255, param2=20},
		{name="air", prob=0},
		{name="air", prob=0},

		{name="default:cactus", prob=255, param2=20},
		{name="default:cactus", prob=255, param2=20},
		{name="default:cactus", prob=255, param2=20},
		{name="default:cactus", prob=255, param2=20},
		{name="default:cactus", prob=255, param2=20},

		{name="default:cactus", prob=255, param2=20},
		{name="air", prob=0},
		{name="default:cactus", prob=255, param2=20},
		{name="air", prob=0},
		{name="default:cactus", prob=255, param2=20},

		{name="default:cactus", prob=127, param2=20},
		{name="air", prob=0},
		{name="default:cactus", prob=255, param2=20},
		{name="air", prob=0},
		{name="default:cactus", prob=127, param2=20},

		{name="air", prob=0},
		{name="air", prob=0},
		{name="default:cactus", prob=255, param2=20},
		{name="air", prob=0},
		{name="air", prob=0},
	},
}

local large_cactus_serialized = minetest.serialize_schematic(large_cactus_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/large_cactus.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(large_cactus_serialized)
	file:flush()
	file:close()
end


-- Papyrus

local papyrus_data = {
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
}

local papyrus_serialized = minetest.serialize_schematic(papyrus_data, mts, {})
local path = minetest.get_modpath("saveschems") .. "/schematics"
local filename = path .. "/papyrus.mts"
filename = filename:gsub("\"", "\\\""):gsub("\\", "\\\\")
local file, err = io.open(filename, "wb")
if err == nil then
	file:write(papyrus_serialized)
	file:flush()
	file:close()
end
