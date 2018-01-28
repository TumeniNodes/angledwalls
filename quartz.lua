-- Register wall types


angledwalls.register_angled_wall_and_low_angled_wall_and_corner("quartzblock", "quartz:block",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"quartz_block.png"},
		"Quartz Block Angled Wall",
		"Quartz Block Low Angled Wall",
		"Quartz Block Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("quartzchiseled", "quartz:chiseled",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"quartz_chiseled.png"},
		"Quartz Chiseled Angled Wall",
		"Quartz Chiseled Low Angled Wall",
		"Quartz Chiseled Corner",
		default.node_sound_stone_defaults())

angledwalls.register_angled_wall_and_low_angled_wall_and_corner("quartzpillar", "quartz:pillar",
		{snappy = 2, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		{"quartz_pillar_side.png"},
		"Quartz Pillar Angled Wall",
		"Quartz Pillar Low Angled Wall",
		"Quartz Pillar Corner",
		default.node_sound_stone_defaults())


-- Register glass types

angledglass.register_glass("_quartz_block_glass", "quartz:block",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_glass.png", "quartz_block.png"},
		"Quartz Block Glass",
		default.node_sound_glass_defaults())

angledglass.register_glass("_quartz_block_obsidian_glass", "quartz:block",
		{choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		{"default_obsidian_glass.png", "quartz_block.png"},
		"Quartz Block Obsidian Glass",
		default.node_sound_glass_defaults())

-- Only quartz:block glass, as all the quartz textures look the same for this node.


