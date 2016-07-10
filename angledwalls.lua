-- [MOD] Angled Walls [angledwalls] [1.2] by TumeniNodes 6-24-2016

angledwalls = {}

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
	}
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
	}
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
	}
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

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("wood", "default:wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_wood.png"},
		"Wooden Angled Wall",
		"Wooden Low Angled Wall",
		"Wooden Corner",
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

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("stone", "default:stone",
		{cracky = 3, stone = 1},
		{"default_stone.png"},
		"Stone Angled Wall",
		"Stone Low Angled Wall",
		"Stone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("cobble", "default:cobble",
		{cracky = 3, stone = 2},
		{"default_cobble.png"},
		"Cobblestone Angled Wall",
		"Cobblestone Low Angled Wall",
		"Cobblestone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("stonebrick", "default:stonebrick",
		{cracky = 2, stone = 1},
		{"default_stone_brick.png"},
		"Stone Brick Angled Wall",
		"Stone Brick Low Angled Wall",
		"Stone Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("mossycobble", "default:mossycobble",
		{cracky = 3, stone = 1},
		{"default_mossycobble.png"},
		"Mossycobble Angled Wall",
		"Mossycobble Low Angled Wall",
		"Mossycobble Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desert_stone", "default:desert_stone",
		{cracky = 3, stone = 1},
		{"default_desert_stone.png"},
		"Desert Stone Angled Wall",
		"Desert Stone Low Angled Wall",
		"Desert Stone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desert_cobble", "default:desert_cobble",
		{cracky = 3, stone = 2},
		{"default_desert_cobble.png"},
		"Desert Cobblestone Angled Wall",
		"Desert Cobblestone Low Angled Wall",
		"Desert Cobblestone Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("desert_stonebrick", "default:desert_stonebrick",
		{cracky = 2, stone = 1},
		{"default_desert_stone_brick.png"},
		"Desert Stone Brick Angled Wall",
		"Desert Stone Brick Low Angled Wall",
		"Desert Stone Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("sandstone", "default:sandstone",
		{crumbly = 1, cracky = 3},
		{"default_sandstone.png"},
		"Sandstone Angled Wall",
		"Sandstone Low Angled Wall",
		"Sandstone Corner",
		default.node_sound_stone_defaults())
		
angledwalls.register_angled_wall_and_low_angled_wall_and_corner("sandstonebrick", "default:sandstonebrick",
		{cracky = 2},
		{"default_sandstone_brick.png"},
		"Sandstone Brick Angled Wall",
		"Sandstone Brick Low Angled Wall",
		"Sandstone Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("obsidian", "default:obsidian",
		{cracky = 1, level = 2},
		{"default_obsidian.png"},
		"Obsidian Angled Wall",
		"Obsidian Low Angled Wall",
		"Obsidian Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("obsidianbrick", "default:obsidianbrick",
		{cracky = 1, level = 2},
		{"default_obsidian_brick.png"},
		"Obsidian Brick Angled Wall",
		"Obsidian Brick Low Angled Wall",
		"Obsidian Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("brick", "default:brick",
		{cracky = 3},
		{"default_brick.png"},
		"Brick Angled Wall",
		"Brick Low Angled Wall",
		"Brick Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("clay", "default:clay",
		{crumbly = 3},
		{"default_clay.png"},
		"Clay Angled Wall",
		"Clay Low Angled Wall",
		"Clay Corner",
		default.node_sound_dirt_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("snowblock", "default:snowblock",
		{crumbly = 3, puts_out_fire = 1},
		{"default_snow.png"},
		"Snow Block Angled Wall",
		"Snow Block Low Angled Wall",
		"Snow Block Corner",
		default.node_sound_dirt_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("ice", "default:ice",
		{cracky = 3, puts_out_fire = 1},
		{"default_ice.png"},
		"Ice Angled Wall",
		"Ice Low Angled Wall",
		"Ice Corner",
		default.node_sound_glass_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("steelblock", "default:steelblock",
		{cracky = 1, level = 2},
		{"default_steel_block.png"},
		"Steel Block Angled Wall",
		"Steel Block Low Angled Wall",
		"Steel Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("coalblock", "default:coalblock",
		{cracky = 3},
		{"default_coal_block.png"},
		"Coal Block Angled Wall",
		"Coal Block Low_angled Wall",
		"Coal Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("copperblock", "default:copperblock",
		{cracky = 1, level = 2},
		{"default_copper_block.png"},
		"Copper Block Angled Wall",
		"Copper Block Low_angled Wall",
		"Copper Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("bronzeblock", "default:bronzeblock",
		{cracky = 1, level = 2},
		{"default_bronze_block.png"},
		"Bronze Block Angled Wall",
		"Bronze Block Low Angled Wall",
		"Bronze Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("mese", "default:mese",
		{cracky = 1, level = 2},
		{"default_mese_block.png"},
		"Mese Block Angled Wall",
		"Mese Block Low Angled Wall",
		"Mese Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("goldblock", "default:goldblock",
		{cracky = 1},
		{"default_gold_block.png"},
		"Gold Block Angled Wall",
		"Gold Block Low Angled Wall",
		"Gold Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("diamondblock", "default:diamondblock",
		{cracky = 1, level = 3},
		{"default_diamond_block.png"},
		"Diamond Block Angled Wall",
		"Diamond Block Low Angled Wall",
		"Diamond Block Corner",
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

minetest.register_node("angledwalls:glass", {
	description = "Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:obsidianglass", {
	description = "Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:obsidianglassglass", {
	description = "Obsidian Glass Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"obsidian_glass_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:obsidianbrickglass", {
	description = "Obsidian Brick Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"obsidian_brick_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:obsidianbrickobsidianglass", {
	description = "Obsidian Brick Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"obsidian_brick_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:acaciaglass", {
	description = "Acacia Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"acacia_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:acaciaobsidianglass", {
	description = "Acacia Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"acacia_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:aspenglass", {
	description = "Aspen Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"aspen_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:aspenobsidianglass", {
	description = "Aspen Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"aspen_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:brickglass", {
	description = "Brick Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"brick_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:brickobsidianglass", {
	description = "Brick Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"brick_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:bronzeglass", {
	description = "Bronze Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"bronze_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:bronzeobsidianglass", {
	description = "Bronze Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"bronze_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:clayglass", {
	description = "Clay Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"clay_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	colliosion_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:clayobsidianglass", {
	description = "Clay Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"clay_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	colliosion_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:coalglass", {
	description = "Coal Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"coal_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	colliosion_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:coalobsidianglass", {
	description = "Coal Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"coal_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	colliosion_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:cobbleglass", {
	description = "Cobble Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"cobble_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	colliosion_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:cobbleobsidianglass", {
	description = "Cobble Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"cobble_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:copperglass", {
	description = "Copper Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"copper_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	colliosion_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:copperpbsidianglass", {
	description = "Copper Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"copper_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	colliosion_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:desertbrickglass", {
	description = "Desert Brick Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"desert_brick_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:desertbrickobsidianglass", {
	description = "Desert Brick Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"desert_brick_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:desertcobbleglass", {
	description = "Desert Cobble Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"desert_cobble_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:desertcobbleobsidianglass", {
	description = "Desert Cobble Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"desert_cobble_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:desertstoneglass", {
	description = "Desertstone Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"desertstone_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:desertstoneobsidianglass", {
	description = "Desertstone Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"desertstone_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:diamondglass", {
	description = "Diamond Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"diamond_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:diamondobsidianglass", {
	description = "Diamond Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"diamond_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:goldglass", {
	description = "Gold Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"gold_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:goldobsidianglass", {
	description = "Gold Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"gold_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:iceglass", {
	description = "Ice Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"ice_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:iceobsidianglass", {
	description = "Ice Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"ice_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:junglewoodglass", {
	description = "Junglewood Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"junglewood_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:junglewoodobsidianglass", {
	description = "Junglewood Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"junglewood_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:meseglass", {
	description = "Mese Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"mese_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:meseobsidianglass", {
	description = "Mese Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"mese_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:mossycobbleglass", {
	description = "Mossy Cobble Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"mossycobble_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:mossycobbleobsidianglass", {
	description = "Mossy Cobble Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"mossycobble_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:pinewoodglass", {
	description = "Pinewood Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"pinewood_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:pinewoodobsidianglass", {
	description = "Pinewood Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"pinewood_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:sandstonebrickglass", {
	description = "Sandstone Brick Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"sandstone_brick_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:sandstonebrickobsidianglass", {
	description = "Sandstone Brick Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"sandstone_brick_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:sandstoneglass", {
	description = "Sandstone Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"sandstone_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:sandstoneobsidianglass", {
	description = "Sandstone Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"sandstone_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:snowglass", {
	description = "Snow Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"snow_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:snowobsidianglass", {
	description = "Snow Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"snow_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:steelglass", {
	description = "Steel Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"steel_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:steelobsidianglass", {
	description = "Steel Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"steel_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:stonebrickglass", {
	description = "Stone Brick Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"stone_brick_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:stonebrickobsidianglass", {
	description = "Stone Brick Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"stone_brick_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:stoneglass", {
	description = "Stone glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"stone_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:stoneobsidianglass", {
	description = "Stone Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"stone_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:woodglass", {
	description = "Wood Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"wood_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})

minetest.register_node("angledwalls:woodobsidianglass", {
	description = "Wood Obsidian Glass",
	drawtype = "mesh",
	mesh = "angledwalls_glass.obj",
	tiles = {"wood_obsidian_glass.png"},
	use_texture_alpha = true,
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	groups = {cracky=3, stone=2},
	is_ground_content = false,
	sounds = default.node_sound_glass_defaults(),
	collision_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.375, 0.5, -0.375},
			{-0.4375, -0.5, -0.4375, -0.3125, 0.5, -0.3125},
			{0.3125, -0.5, 0.3125, 0.4375, 0.5, 0.4375},
			{0.25, -0.5, 0.25, 0.375, 0.5, 0.375},
			{-0.375, -0.5, -0.375, -0.25, 0.5, -0.25},
			{0.1875, -0.5, 0.1875, 0.3125, 0.5, 0.3125},
			{-0.3125, -0.5, -0.3125, -0.1875, 0.5, -0.1875},
			{0.125, -0.5, 0.125, 0.25, 0.5, 0.25},
			{-0.25, -0.5, -0.25, -0.125, 0.5, -0.125},
			{0.0625, -0.5, 0.0625, 0.1875, 0.5, 0.1875},
			{-0.1875, -0.5, -0.1875, -0.0625, 0.5, -0.0625},
			{0, -0.5, 0, 0.125, 0.5, 0.125},
			{-0.125, -0.5, -0.125, 0, 0.5, 0},
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		}
	}
})


