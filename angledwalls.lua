-- [MOD] Angled Walls [angledwalls] [1.2] by TumeniNodes 6-24-2016

angledwalls = {}

-- Angled place function
-- To use put "on_place = angledwalls.angled_place" in the node def

function angledwalls.angled_place(itemstack, placer, pointed_thing)
	local placer_pos = placer:getpos()
	local pos = pointed_thing.above
	local param2
	if pos.x > placer_pos.x then
		if pos.z > placer_pos.z then
			param2 = 1
		else
			param2 = 2
		end
	else
		if pos.z > placer_pos.z then
			param2 = 0
		else
			param2 = 3
		end
	end
	return minetest.item_place(itemstack, placer, pointed_thing, param2)
end

--Register angledwalls.
--Node will be called angledwalls:angled_wall_<subname>

function angledwalls.register_angled_wall(subname, recipeitem, groups, images, description, sounds)
	groups.angledwall = 1
minetest.register_node(":angledwalls:angled_wall" .. subname, {
	description = description,
	drawtype = "mesh",
	mesh = "angled_wall.obj",
	tiles = images,
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	collision_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0, 0.5, 0},
			{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			{-0.3125, -0.5, -0.1875, 0.3125, 0.5, 0.1875},
			{-0.1875, -0.5, -0.3125, 0.1875, 0.5, 0.3125},
			{-0.125, -0.5, -0.375, 0.125, 0.5, 0.375},
			{-0.0625, -0.5, -0.4375, 0.0625, 0.5, 0.4375},
			{-0.375, -0.5, -0.125, 0.375, 0.5, 0.125},
			{-0.4375, -0.5, -0.0625, 0.4375, 0.5, 0.0625},
		}
	},
	on_place = angledwalls.angled_place
})
end

-- Register angledwalls.
-- Node will be called angledwalls:low_angled_wall_<subname>

function angledwalls.register_low_angled_wall(subname, recipeitem, groups, images, description, sounds)
	groups.lowangledwall = 1
minetest.register_node(":angledwalls:low_angled_wall" .. subname, {
	description = description,
	drawtype = "mesh",
	mesh = "low_angled_wall.obj",
	tiles = images,
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	collision_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0, 0.5, 0, 0.5},
			{-0.5, -0.5, -0.5, 0, 0, 0},
			{-0.25, -0.5, -0.25, 0.25, 0, 0.25},
			{-0.3125, -0.5, -0.1875, 0.3125, 0, 0.1875},
			{-0.1875, -0.5, -0.3125, 0.1875, 0, 0.3125},
			{-0.125, -0.5, -0.375, 0.125, 0, 0.375},
			{-0.0625, -0.5, -0.4375, 0.0625, 0, 0.4375},
			{-0.375, -0.5, -0.125, 0.375, 0, 0.125},
			{-0.4375, -0.5, -0.0625, 0.4375, 0, 0.062},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	on_place = angledwalls.angled_place
})
end

--Register angledwalls.
--Node will be called angledwalls:corner_<subname>

function angledwalls.register_corner(subname, recipeitem, groups, images, description, sounds)
	groups.corner = 1
minetest.register_node(":angledwalls:corner" .. subname, {
	description = description,
	drawtype = "mesh",
	mesh = "angledwalls_corner.obj",
	tiles = images,
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
	collision_box = {
		type = "fixed",
		fixed = {
			{0, -0.5, 0, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, 0, 0.5, 0},
			{-0.1875, -0.5, -0.1875, 0.3125, 0.5, 0.3125},
			{-0.125, -0.5, -0.125, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, 0.125, 0.5, 0.125},
			{-0.4375, -0.5, -0.4375, 0.0625, 0.5, 0.0625},
			{-0.0625, -0.5, -0.0625, 0.4375, 0.5, 0.4375},
			{-0.25, -0.5, -0.3125, 0.1875, 0.5, 0.25},
			{-0.5, -0.5, -0.25, 0.25, 0.5, 0.5},
		}
	},
	on_place = angledwalls.angled_place
})
end

-- Angled wall/low wall/corner registration function.
-- Nodes will be called angledwalls:{angled_wall,low_angled_wall,corner}_<subname>

function angledwalls.register_angled_wall_and_low_angled_wall_and_corner(subname, recipeitem, groups, images,desc_angled_wall, desc_low_angled_wall, desc_corner, sounds)
	angledwalls.register_angled_wall(subname, recipeitem, groups, images, desc_angled_wall, sounds)
	angledwalls.register_low_angled_wall(subname, recipeitem, groups, images, desc_low_angled_wall, sounds)
	angledwalls.register_corner(subname, recipeitem, groups, images, desc_corner, sounds)
end


-- Register angled walls and low angled walls and corner

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("acacia_wood", "default:acacia_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_acacia_wood.png"},
		"Acacia Wood Angled Wall",
		"Acacia Wood Low Angled Wall",
		"Acacia Wood Corner",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("aspen_wood", "default:aspen_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_aspen_wood.png"},
		"Aspen Wood Angled Wall",
		"Aspen Wood Low Angled Wall",
		"Aspen Wood Corner",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("junglewood", "default:junglewood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_junglewood.png"},
		"Junglewood Angled Wall",
		"Junglewood Low Angled Wall",
		"junglewood Corner",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("pine_wood", "default:pine_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_pine_wood.png"},
		"Pine Wood Angled Wall",
		"Pine Wood Low Angled Wall",
		"Pine Wood Corner",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("wood", "default:wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_wood.png"},
		"Wooden Angled Wall",
		"Wooden Low Angled Wall",
		"Wooden Corner",
		default.node_sound_wood_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("brick", "default:brick",
		{cracky = 3, stone = 2},
		{"default_brick.png"},
		"Brick Angled Wall",
		"Brick Low Angled Wall",
		"Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("bronze_block", "default:bronzeblock",
		{cracky = 1, level = 2},
		{"default_bronze_block.png"},
		"Bronze Block Angled Wall",
		"Bronze Block Low Angled Wall",
		"Bronze Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("clay", "default:clay",
		{cracky = 3, stone = 2},
		{"default_clay.png"},
		"Clay Angled Wall",
		"Clay Low Angled Wall",
		"Clay Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("coal_block", "default:coalblock",
		{cracky = 3, stone = 2},
		{"default_coal_block.png"},
		"Coal Block Angled Wall",
		"Coal Block Low Angled Wall",
		"Coal Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("copperblock", "default:copperblock",
		{cracky = 1, level = 2},
		{"default_copper_block.png"},
		"Copper Block Angled Wall",
		"Copper Block Low_angled Wall",
		"Copper Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("diamondblock", "default:diamondblock",
		{cracky = 1, level = 2},
		{"default_diamond_block.png"},
		"Diamond Block Angled Wall",
		"Diamond Block Low_angled Wall",
		"Diamond Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("goldblock", "default:goldblock",
		{cracky = 1, level = 2},
		{"default_gold_block.png"},
		"Gold Block Angled Wall",
		"Gold Block Low_angled Wall",
		"Gold Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("meseblock", "default:meseblock",
		{cracky = 1, level = 2},
		{"default_mese_block.png"},
		"Mese Block Angled Wall",
		"Mese Block Low_angled Wall",
		"Mese Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("steelblock", "default:steelblock",
		{cracky = 1, level = 2},
		{"default_steel_block.png"},
		"Steel Block Angled Wall",
		"Steel Block Low_angled Wall",
		"Steel Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("tinblock", "default:tinblock",
		{cracky = 1, level = 2},
		{"default_tin_block.png"},
		"Tin Block Angled Wall",
		"Tin Block Low_angled Wall",
		"Tin Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("cobble", "default:cobble",
		{cracky = 3, stone = 2},
		{"default_cobble.png"},
		"Cobblestone Angled Wall",
		"Cobblestone Low Angled Wall",
		"Cobblestone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("mossycobble", "default:mossycobble",
		{cracky = 3, stone = 1},
		{"default_mossycobble.png"},
		"Mossycobble Angled Wall",
		"Mossycobble Low Angled Wall",
		"Mossycobble Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("stone", "default:stone",
		{cracky = 2, stone = 1},
		{"default_stone.png"},
		"Stone Angled Wall",
		"Stone Low Angled Wall",
		"Stone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("stone_block", "default:stone_block",
		{cracky = 2, stone = 1},
		{"default_stone_block.png"},
		"Stone Block Angled Wall",
		"Stone Block Low Angled Wall",
		"Stone Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("stonebrick", "default:stonebrick",
		{cracky = 2, stone = 1},
		{"default_stone_brick.png"},
		"Stone Brick Angled Wall",
		"Stone Brick Low Angled Wall",
		"Stone Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desertcobble", "default:desertscobble",
		{cracky = 2, stone = 1},
		{"default_desert_cobble.png"},
		"Desert Cobble Angled Wall",
		"Desert Cobble Low Angled Wall",
		"Desert Cobble Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desertstone", "default:desertstone",
		{cracky = 2, stone = 1},
		{"default_desert_stone.png"},
		"Desert Stone Angled Wall",
		"Desert Stone Low Angled Wall",
		"Desert Stone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desert_stone_block", "default:desert_stone_block",
		{cracky = 2, stone = 1},
		{"default_desert_stone_block.png"},
		"Desert Stone Block Angled Wall",
		"Desert Stone Block Low Angled Wall",
		"Desert Stone Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desert_stonebrick", "default:desert_stonebrick",
		{cracky = 2, stone = 1},
		{"default_desert_stone_brick.png"},
		"Desert Stone Brick Angled Wall",
		"Desert Stone Brick Low Angled Wall",
		"Desert Stone Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desert_sandstone", "default:desert_sandstone",
		{cracky = 2, stone = 1},
		{"default_desert_sandstone.png"},
		"Desert Sandstone Angled Wall",
		"Desert Sandstone Low Angled Wall",
		"Desert Sandstone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desert_sandstone_block", "default:desert_sandstone_block",
		{cracky = 2, stone = 1},
		{"default_desert_sandstone_block.png"},
		"Desert Sandstone Block Angled Wall",
		"Desert Sandstone Block Low Angled Wall",
		"Desert Sandstone Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desert_sandstone_brick", "default:desert_sandstone_brick",
		{cracky = 2, stone = 1},
		{"default_desert_sandstone_brick.png"},
		"Desert Sandstone Brick Angled Wall",
		"Desert Sandstone Brick Low Angled Wall",
		"Desert Sandstone Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("sandstone", "default:sandstone",
		{crumbly = 1, cracky = 3},
		{"default_sandstone.png"},
		"Sandstone Angled Wall",
		"Sandstone Low Angled Wall",
		"Sandstone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("sandstone_block", "default:sandstone_block",
		{cracky = 2},
		{"default_sandstone_block.png"},
		"Sandstone Block Angled Wall",
		"Sandstone Block Low Angled Wall",
		"Sandstone Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("sandstonebrick", "default:sandstonebrick",
		{cracky = 2},
		{"default_sandstone_brick.png"},
		"Sandstone Brick Angled Wall",
		"Sandstone Brick Low Angled Wall",
		"Sandstone Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("silver_sandstone", "default:silver_sandstone",
		{cracky = 2, stone = 1},
		{"default_silver_sandstone.png"},
		"Silver Sandstone Angled Wall",
		"Silver Sandstone Low Angled Wall",
		"Silver Sandstone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("silver_sandstone_block", "default:silver_sandstone_block",
		{cracky = 2, stone = 1},
		{"default_silver_sandstone_block.png"},
		"Silver Sandstone Block Angled Wall",
		"Silver Sandstone Block Low Angled Wall",
		"Silver Sandstone Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("silver_sandstone_brick", "default:silver_sandstone_brick",
		{cracky = 2, stone = 1},
		{"default_silver_sandstone_brick.png"},
		"Silver Sandstone Brick Angled Wall",
		"Silver Sandstone Brick Low Angled Wall",
		"Silver Sandstone Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("obsidian", "default:obsidian",
		{cracky = 1, level = 2},
		{"default_obsidian.png"},
		"Obsidian Angled Wall",
		"Obsidian Low Angled Wall",
		"Obsidian Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("obsidian_block", "default:obsidian_block",
		{cracky = 1, level = 2},
		{"default_obsidian_block.png"},
		"Obsidian Block Angled Wall",
		"Obsidian Block Low Angled Wall",
		"Obsidian Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("obsidian_brick", "default:obsidian_brick",
		{cracky = 1, level = 2},
		{"default_obsidian_brick.png"},
		"Obsidian Brick Angled Wall",
		"Obsidian Brick Low Angled Wall",
		"Obsidian Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("glass", "default:glass",
		{cracky = 3, oddly_breakable_by_hand = 3},
		{"default_glass.png", "default_glass_detail.png"},
		"Glass Angled Wall",
		"Glass Low Angled Wall",
		"Glass Corner",
		default.node_sound_glass_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("obsidianglass", "default:obsidian_glass",
		{cracky = 3,},
		{"default_obsidian_glass.png", "default_obsidian_glass_detail.png"},
		"Obsidian Glass Angled Wall",
		"Obsidian Glass Low Angled Wall",
		"Obsidian Glass Corner",
		default.node_sound_glass_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("ice", "default:ice",
		{cracky = 3, oddly_breakable_by_hand = 3},
		{"default_ice.png"},
		"Ice Angled Wall",
		"Ice Low Angled Wall",
		"Ice Corner",
		default.node_sound_glass_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("snow", "default:snow",
		{cracky = 3,},
		{"default_snow.png"},
		"Snow Angled Wall",
		"Snow Low Angled Wall",
		"Snow Corner",
		default.node_sound_glass_defaults())
