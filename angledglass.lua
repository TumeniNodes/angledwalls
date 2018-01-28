angledglass = {}

-- Angled place function
-- To use put "on_place = angledglass.angled_place" in the node def

function angledglass.angled_place(itemstack, placer, pointed_thing)
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


--Register angledglass.
--Node will be called angledglass:glass_<subname>

function angledglass.register_glass(subname, recipeitem, groups, images, description, sounds)
	groups.glass = 1

minetest.register_node(":angledglass:glass" .. subname, {
	description = description,
	drawtype = "mesh",
	mesh = "angled_glass.obj",
	tiles = images,
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propogates = true,
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = groups,
	sounds = sounds,
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
	},
	on_place = angledglass.angled_place
})
end


-- Register glass types

angledglass.register_glass("_acacia_wood_glass", "default:acacia_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_glass.png", "default_acacia_wood.png"},
		"Acacia Wood Glass",
		default.node_sound_glass_defaults())
		
angledglass.register_glass("_acacia_wood_obsidian_glass", "default:acacia_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_obsidian_glass.png", "default_acacia_wood.png"},
		"Acacia Wood Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_aspen_wood_glass", "default:aspen_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_glass.png", "default_aspen_wood.png"},
		"Aspen Wood Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_aspen_wood_obsidian_glass", "default:aspen_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_obsidian_glass.png", "default_aspen_wood.png"},
		"Aspen Wood Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_junglewood_glass", "default:junglewood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_glass.png", "default_junglewood.png"},
		"Junglewood Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_junglewood_obsidian_glass", "default:junglewood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_obsidian_glass.png", "default_junglewood.png",},
		"Junglewood Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_pine_wood_glass", "default:pine_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_glass.png", "default_pine_wood.png"},
		"Pine Wood Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_pine_wood_obsidian_glass", "default:pine_wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_obsidian_glass.png", "default_pine_wood.png"},
		"Pine Wood Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_wooden_glass", "default:wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_glass.png", "default_wood.png"},
		"Wooden Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_wooden_obsidian_glass", "default:wood",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_obsidian_glass.png", "default_wood.png"},
		"Wooden Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_brick_glass", "default:brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_brick.png"},
		"Brick Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_brick_obsidian_glass", "default:brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_brick.png"},
		"Brick Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_cobble_glass", "default:cobble",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_cobble.png"},
		"Cobble Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_cobble_obsidian_glass", "default:cobble",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_cobble.png"},
		"Cobble Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_mossycobble_glass", "default:mossycobble",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_mossycobble.png"},
		"Mossycobble Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_mossycobble_obsidian_glass", "default:mossycobble",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_mossycobble.png"},
		"Mossycobble Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_stone_glass", "default:stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_stone.png"},
		"Stone Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_stone_obsidian_glass", "default:stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_stone.png"},
		"Stone Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_stone_block_glass", "default:stone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_stone_block.png"},
		"Stone Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_stone_block_obsidian_glass", "default:stone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_stone_block.png"},
		"Stone Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_stone_brick_glass", "default:stone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_stone_brick.png"},
		"Stone Brick Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_stone_brick_obsidian_glass", "default:stone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_stone_brick.png"},
		"Stone Brick Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_cobble_glass", "default:desert_cobble",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_desert_cobble.png"},
		"Desert Cobble Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_cobble_obsidian_glass", "default:desert_cobble",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_desert_cobble.png"},
		"Desert Cobble Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_stone_glass", "default:desert_stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_desert_stone.png"},
		"Desert Stone Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_stone_obsidian_glass", "default:desert_stone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_desert_stone.png"},
		"Desert Stone Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_stone_block_glass", "default:desert_stone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_desert_stone_block.png"},
		"Desert Stone Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_stone_block_obsidian_glass", "default:desert_stone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_desert_stone_block.png"},
		"Desert Stone Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_stone_brick_glass", "default:desert_stone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_desert_stone_brick.png"},
		"Desert Stone Brick Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_stone_brick_obsidian_glass", "default:desert_stone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_desert_stone_brick.png"},
		"Desert Stone Brick Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_sandstone_glass", "default:desert_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_desert_sandstone.png"},
		"Desert Sandstone Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_sandstone_obsidian_glass", "default:desert_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_desert_sandstone.png"},
		"Desert Sandstone Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_sandstone_block_glass", "default:desert_sandstone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_desert_sandstone_block.png"},
		"Desert Sandstone Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_sandstone_block_obsidian_glass", "default:desert_sandstone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_desert_sandstone_block.png"},
		"Desert Sandstone Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_sandstone_brick_glass", "default:desert_sandstone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_desert_sandstone_brick.png"},
		"Desert Sandstone Brick Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_desert_sandstone_brick_obsidian_glass", "default:desert_sandstone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_desert_sandstone_brick.png"},
		"Desert Sandstone Brick Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_sandstone_glass", "default:sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_sandstone.png"},
		"Sandstone Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_sandstone_obsidian_glass", "default:sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_sandstone.png"},
		"Sandstone Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_sandstone_block_glass", "default:sandstone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_sandstone_block.png"},
		"Sandstone Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_sandstone_block_obsidian_glass", "default:sandstone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_sandstone_block.png"},
		"Sandstone Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_sandstone_brick_glass", "default:sandstone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_sandstone_brick.png"},
		"Sandstone Brick Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_sandstone_brick_obsidian_glass", "default:sandstone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_sandstone_brick.png"},
		"Sandstone Brick Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_silver_sandstone_glass", "default:silver_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_silver_sandstone.png"},
		"Silver Sandstone Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_silver_sandstone_obsidian_glass", "default:silver_sandstone",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_silver_sandstone.png"},
		"Silver Sandstone Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_silver_sandstone_block_glass", "default:silver_sandstone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_silver_sandstone_block.png"},
		"Silver Sandstone Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_silver_sandstone_block_obsidian_glass", "default:silver_sandstone_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_silver_sandstone_block.png"},
		"Silver Sandstone Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_silver_sandstone_brick_glass", "default:silver_sandstone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_silver_sandstone_brick.png"},
		"Silver Sandstone Brick Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_silver_sandstone_brick_obsidian_glass", "default:silver_sandstone_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_silver_sandstone_brick.png"},
		"Silver Sandstone Brick Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_bronze_block_glass", "default:bronze_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_bronze_block.png"},
		"Bronze Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_bronze_block_obsidian_glass", "default:bronze_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_bronze_block.png"},
		"Bronze Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_clay_glass", "default:clay",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_clay.png"},
		"Clay Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_clay_obsidian_glass", "default:clay",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_clay.png"},
		"Clay Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_coal_block_glass", "default:coal_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_coal_block.png"},
		"Coal Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_coal_block_obsidian_glass", "default:coal_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_coal_block.png"},
		"Coal Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_copper_block_glass", "default:copper_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_copper_block.png"},
		"Copper Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_copper_block_obsidian_glass", "default:copper_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_copper_block.png"},
		"Copper Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_diamond_block_glass", "default:diamond_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_diamond_block.png"},
		"Diamond Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_diamond_block_obsidian_glass", "default:diamond_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_diamond_block.png"},
		"Diamond Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_gold_block_glass", "default:gold_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_gold_block.png"},
		"Gold Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_gold_block_obsidian_glass", "default:gold_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_gold_block.png"},
		"Gold Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_mese_block_glass", "default:mese_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_mese_block.png"},
		"Mese Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_mese_block_obsidian_glass", "default:mese_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_mese_block.png"},
		"Mese Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_steel_block_glass", "default:steel_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_steel_block.png"},
		"Steel Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_steel_block_obsidian_glass", "default:steel_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_steel_block.png"},
		"Steel Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_tin_block_glass", "default:tin_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_tin_block.png"},
		"Tin Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_tin_block_obsidian_glass", "default:tin_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_tin_block.png"},
		"Tin Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_glass_glass", "default:glass",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_glass.png"},
		"Glass Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_glass_obsidian_glass", "default:glass",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_glass.png"},
		"Glass Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_obsidian_glass", "default:obsidian",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_obsidian.png"},
		"Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_obsidian_obsidian_glass", "default:obsidian",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_obsidian.png"},
		"Obsidian Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_obsidian_block_glass", "default:obsidian_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_obsidian_block.png"},
		"Obsidian Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_obsidian_block_obsidian_glass", "default:obsidian_block",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_obsidian_block.png"},
		"Obsidian Block Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_obsidian_brick_glass", "default:obsidian_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_obsidian_brick.png"},
		"Obsidian Brick Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_obsidian_brick_obsidian_glass", "default:obsidian_brick",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_obsidian_brick.png"},
		"Obsidian Brick Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_obsidian_glass_glass", "default:obsidian_glass",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_obsidian_glass.png"},
		"Obsidian Glass Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_obsidian_glass_obsidian_glass", "default:obsidian_glass",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_obsidian_glass.png"},
		"Obsidian Glass Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_snow_glass", "default:snow",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_snow.png"},
		"Snow Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_snow_obsidian_glass", "default:snow",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_snow.png"},
		"Snow Obsidian Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_ice_glass", "default:ice",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_glass.png", "default_ice.png"},
		"Ice Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_ice_obsidian_glass", "default:ice",
		{cracky = 2, oddly_breakable_by_hand = 2, stone = 1},
		{"default_obsidian_glass.png", "default_ice.png"},
		"Ice Obsidian Glass",
		default.node_sound_glass_defaults())





