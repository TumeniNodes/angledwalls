-- [MOD] Sloped Walls [slopedwalls] [1.0] by TumeniNodes 6-09-2019

slopedwalls = {}

-- Register slopedwalls.
-- Node will be called slopedwalls:sloped_wall_<subname>

function slopedwalls.register_sloped_wall(subname, recipeitem, groups, images, description, sounds)
groups.sloped = 1
minetest.register_node(":slopedwalls:sloped_wall" .. subname, {
	description = description,
	drawtype = "mesh",
	mesh = "sloped_wall.obj",
	tiles = images,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = groups,
	sounds = sounds,
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.3125, -0.25, 0.5, 0.5},
			{-0.5, -0.5, 0.3125, 0.375, 0.5, 0.5},
			{-0.5, -0.5, -0.375, -0.3125, 0.5, 0.5},
			{-0.5, -0.5, 0.375, 0.4375, 0.5, 0.5},
			{-0.5, -0.5, -0.4375, -0.375, 0.5, 0.5},
			{-0.5, -0.5, 0.4375, 0.5, 0.5, 0.5},
			{-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5},
			{-0.5, -0.5, 0.25, 0.3125, 0.5, 0.5},
			{-0.5, -0.5, -0.25, -0.1875, 0.5, 0.5},
			{-0.5, -0.5, 0.1875, 0.25, 0.5, 0.5},
			{-0.5, -0.5, -0.1875, -0.125, 0.5, 0.5},
			{-0.5, -0.5, 0.125, 0.1875, 0.5, 0.5},
			{-0.5, -0.5, -0.125, -0.0625, 0.5, 0.5},
			{-0.5, -0.5, 0.0625, 0.125, 0.5, 0.5},
			{-0.5, -0.5, -0.0625, 0, 0.5, 0.5},
			{-0.5, -0.5, 0, 0.0625, 0.5, 0.5},
		}
	}
})
end


-- Register sloped walls

slopedwalls.register_sloped_wall("_acacia_wood", "default:acacia_wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_acacia_wood.png"},
		"Acacia Sloped Wall",
		default.node_sound_wood_defaults())

slopedwalls.register_sloped_wall("_aspen_wood", "default:aspen_wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_aspen_wood.png"},
		"Aspen Sloped Wall",
		default.node_sound_wood_defaults())

slopedwalls.register_sloped_wall("_junglewood", "default:junglewood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_junglewood.png"},
		"Junglewood Sloped Wall",
		default.node_sound_wood_defaults())

slopedwalls.register_sloped_wall("_pine_wood", "default:pine_wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_pine_wood.png"},
		"Pine Sloped Wall",
		default.node_sound_wood_defaults())

slopedwalls.register_sloped_wall("_wood", "default:wood",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"default_wood.png"},
		"Wooden Sloped Wall",
		default.node_sound_wood_defaults())

slopedwalls.register_sloped_wall("_brick", "default:brick",
		{cracky = 3},
		{"default_brick.png"},
		"Brick Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_clay", "default:clay",
		{cracky = 3},
		{"default_clay.png"},
		"Clay Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_cobble", "default:cobble",
		{cracky = 3},
		{"default_cobble.png"},
		"Cobblestone Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_mossycobble", "default:mossycobble",
		{cracky = 3},
		{"default_mossycobble.png"},
		"Mossy Cobblestone Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_desert_cobble", "default:desert_cobble",
		{cracky = 3},
		{"default_desert_cobble.png"},
		"Desert Cobble Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_desert_stone", "default:desert_stone",
		{cracky = 3},
		{"default_desert_stone.png"},
		"Desert Stone Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_desert_stone_block", "default:desert_stone_block",
		{cracky = 3},
		{"default_desert_stone_block.png"},
		"Desert Stone Block Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_desert_stonebrick", "default:desert_stonebrick",
		{cracky = 3},
		{"default_desert_stone_brick.png"},
		"Desert Stone Brick Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_desert_sandstone", "default:desert_sandstone",
		{cracky = 3},
		{"default_desert_sandstone.png"},
		"Desert Sandstone Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_desert_sandstone_block", "default:desert_sandstone_block",
		{cracky = 3},
		{"default_desert_sandstone_block.png"},
		"Desert Sandstone Block Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_desert_sandstone_brick", "default:desert_sandstone_brick",
		{cracky = 3},
		{"default_desert_sandstone_brick.png"},
		"Desert Sandstone Brick Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_sandstone", "default:sandstone",
		{crumbly = 1, cracky = 3},
		{"default_sandstone.png"},
		"Sandstone Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_sandstone_block", "default:sandstone_block",
		{cracky = 2},
		{"default_sandstone_block.png"},
		"Sandstone Block Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_sandstonebrick", "default:sandstonebrick",
		{cracky = 2},
		{"default_sandstone_brick.png"},
		"Sandstone Brick Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_silver_sandstone", "default:silver_sandstone",
		{crumbly = 1, cracky = 3},
		{"default_silver_sandstone.png"},
		"Silver Sandstone Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_silver_sandstone_block", "default:silver_sandstone_block",
		{crumbly = 1, cracky = 3},
		{"default_silver_sandstone_block.png"},
		"Silver Sandstone Block Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_silver_sandstone_brick", "default:silver_sandstone_brick",
		{crumbly = 1, cracky = 3},
		{"default_silver_sandstone_brick.png"},
		"Silver Sandstone Brick Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_stone", "default:stone",
		{cracky = 3},
		{"default_stone.png"},
		"Stone Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_stone_block", "default:stone_block",
		{cracky = 3},
		{"default_stone_block.png"},
		"Stone Block Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_stonebrick", "default:stonebrick",
		{cracky = 3},
		{"default_stone_brick.png"},
		"Stone Brick Sloped Wall",
		default.node_sound_stone_defaults())
		
slopedwalls.register_sloped_wall("_obsidian", "default:obsidian",
		{cracky = 1, level = 2},
		{"default_obsidian.png"},
		"Obsidian Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_obsidian_block", "default:obsidian_block",
		{cracky = 1, level = 2},
		{"default_obsidian_block.png"},
		"Obsidian Block Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_obsidianbrick", "default:obsidianbrick",
		{cracky = 1, level = 2},
		{"default_obsidian_brick.png"},
		"Obsidian Brick Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_bronzeblock", "default:bronzeblock",
		{cracky = 1, level = 2},
		{"default_bronze_block.png"},
		"Bronze Block Sloped Wall",
		default.node_sound_metal_defaults())

slopedwalls.register_sloped_wall("_copperblock", "default:copperblock",
		{cracky = 1, level = 2},
		{"default_copper_block.png"},
		"Copper Block Sloped Wall",
		default.node_sound_metal_defaults())

slopedwalls.register_sloped_wall("_diamondblock", "default:diamondblock",
		{cracky = 1},
		{"default_diamond_block.png"},
		"Diamond Block Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_goldblock", "default:goldblock",
		{cracky = 1},
		{"default_gold_block.png"},
		"Gold Block Sloped Wall",
		default.node_sound_stone_defaults())

slopedwalls.register_sloped_wall("_meseblock", "default:meseblock",
		{cracky = 1, level = 2},
		{"default_mese_block.png"},
		"Mese Block Sloped Wall",
		default.node_sound_metal_defaults())

slopedwalls.register_sloped_wall("_steelblock", "default:steelblock",
		{cracky = 1, level = 2},
		{"default_steel_block.png"},
		"Steel Block Sloped Wall",
		default.node_sound_metal_defaults())

slopedwalls.register_sloped_wall("_tinblock", "default:tinblock",
		{cracky = 1, level = 2},
		{"default_tin_block.png"},
		"Tin Block Sloped Wall",
		default.node_sound_metal_defaults())
