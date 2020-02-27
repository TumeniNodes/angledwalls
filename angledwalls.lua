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

function angledwalls.register_angled_wall(subname, recipeitem, description, def)
	def = table.copy(def)
	
	def.groups.angledwall = 1	
	def.description = description
	def.drawtype = "mesh"
	def.mesh = "angled_wall.obj"
	def.paramtype = "light"
	def.sunlight_propogates = true
	def.paramtype2 = def.paramtype2 or "facedir"
	def.is_ground_content = false
	def.collision_box = {
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
	def.on_place = angledwalls.angled_place
	
	minetest.register_node(":angledwalls:angled_wall" .. subname, def)
end

-- Register angledwalls.
-- Node will be called angledwalls:low_angled_wall_<subname>

function angledwalls.register_low_angled_wall(subname, recipeitem, description, def)
	def = table.copy(def)
	
	def.groups.lowangledwall = 1
	def.description = description
	def.drawtype = "mesh"
	def.mesh = "low_angled_wall.obj"
	def.paramtype = "light"
	def.sunlight_propogates = true
	def.paramtype2 = def.paramtype2 or "facedir"
	def.is_ground_content = false
	def.collision_box = {
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
	def.selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
		}
	def.on_place = angledwalls.angled_place
	
	minetest.register_node(":angledwalls:low_angled_wall" .. subname, def)
end

--Register angledwalls.
--Node will be called angledwalls:corner_<subname>

function angledwalls.register_corner(subname, recipeitem, description, def)
	def = table.copy(def)
	
	def.groups.corner = 1	
	def.description = description
	def.drawtype = "mesh"
	def.mesh = "angledwalls_corner.obj"
	def.paramtype = "light"
	def.sunlight_propogates = true
	def.paramtype2 = def.paramtype2 or "facedir"
	def.is_ground_content = false
	def.collision_box = {
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
	def.on_place = angledwalls.angled_place
	
	minetest.register_node(":angledwalls:corner" .. subname, def)
end

-- Angled wall/low wall/corner registration function.
-- Nodes will be called angledwalls:{angled_wall,low_angled_wall,corner}_<subname>

function angledwalls.register_angled_wall_and_low_angled_wall_and_corner(subname, recipeitem, desc_angled_wall, desc_low_angled_wall, desc_corner, def)
	angledwalls.register_angled_wall(subname, recipeitem, desc_angled_wall, def)
	angledwalls.register_low_angled_wall(subname, recipeitem, desc_low_angled_wall, def)
	angledwalls.register_corner(subname, recipeitem, desc_corner, def)
end


-- Register angled walls and low angled walls and corner

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"acacia_wood",
	"default:acacia_wood",
	"Acacia Wood Angled Wall",
	"Acacia Wood Low Angled Wall",
	"Acacia Wood Corner",
	{
		tiles = {"default_acacia_wood.png"},
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		sounds = default.node_sound_wood_defaults(),
	}
)
angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"aspen_wood",
	"default:aspen_wood",
	"Aspen Wood Angled Wall",
	"Aspen Wood Low Angled Wall",
	"Aspen Wood Corner",
	{
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		tiles = {"default_aspen_wood.png"},
		sounds = default.node_sound_wood_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"junglewood",
	"default:junglewood",
	"Junglewood Angled Wall",
	"Junglewood Low Angled Wall",
	"junglewood Corner",
	{
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		tiles = {"default_junglewood.png"},
		sounds = default.node_sound_wood_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"pine_wood",
	"default:pine_wood",
	"Pine Wood Angled Wall",
	"Pine Wood Low Angled Wall",
	"Pine Wood Corner",
	{
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		tiles = {"default_pine_wood.png"},
		sounds = default.node_sound_wood_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"wood",
	"default:wood",
	"Wooden Angled Wall",
	"Wooden Low Angled Wall",
	"Wooden Corner",
	{
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3, wood = 1},
		tiles = {"default_wood.png"},
		sounds = default.node_sound_wood_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"brick",
	"default:brick",
	"Brick Angled Wall",
	"Brick Low Angled Wall",
	"Brick Corner",
	{
		groups = {cracky = 3, stone = 2},
		tiles = {"default_brick.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"bronze_block",
	"default:bronzeblock",
	"Bronze Block Angled Wall",
	"Bronze Block Low Angled Wall",
	"Bronze Block Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_bronze_block.png"},
		sounds = default.node_sound_stone_defaults(),
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"clay", 
	"default:clay",
	"Clay Angled Wall",
	"Clay Low Angled Wall",
	"Clay Corner",
	{
		groups = {cracky = 3, stone = 2},
		tiles = {"default_clay.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"coal_block",
	"default:coalblock",
	"Coal Block Angled Wall",
	"Coal Block Low Angled Wall",
	"Coal Block Corner",
	{
		groups = {cracky = 3, stone = 2},
		tiles = {"default_coal_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"copperblock",
	"default:copperblock",
	"Copper Block Angled Wall",
	"Copper Block Low_angled Wall",
	"Copper Block Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_copper_block.png"},
		sounds =default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"diamondblock",
	"default:diamondblock",
	"Diamond Block Angled Wall",
	"Diamond Block Low_angled Wall",
	"Diamond Block Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_diamond_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"goldblock",
	"default:goldblock",
	"Gold Block Angled Wall",
	"Gold Block Low_angled Wall",
	"Gold Block Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_gold_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"meseblock",
	"default:meseblock",
	"Mese Block Angled Wall",
	"Mese Block Low_angled Wall",
	"Mese Block Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_mese_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"steelblock",
	"default:steelblock",
	"Steel Block Angled Wall",
	"Steel Block Low_angled Wall",
	"Steel Block Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_steel_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"tinblock",
	"default:tinblock",
	"Tin Block Angled Wall",
	"Tin Block Low_angled Wall",
	"Tin Block Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_tin_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"cobble",
	"default:cobble",
	"Cobblestone Angled Wall",
	"Cobblestone Low Angled Wall",
	"Cobblestone Corner",
	{
		groups = {cracky = 3, stone = 2},
		tiles = {"default_cobble.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"mossycobble",
	"default:mossycobble",
	"Mossycobble Angled Wall",
	"Mossycobble Low Angled Wall",
	"Mossycobble Corner",
	{
		groups = {cracky = 3, stone = 1},
		tiles = {"default_mossycobble.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"stone",
	"default:stone",
	"Stone Angled Wall",
	"Stone Low Angled Wall",
	"Stone Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_stone.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"stone_block",
	"default:stone_block",
	"Stone Block Angled Wall",
	"Stone Block Low Angled Wall",
	"Stone Block Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_stone_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"stonebrick",
	"default:stonebrick",
	"Stone Brick Angled Wall",
	"Stone Brick Low Angled Wall",
	"Stone Brick Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_stone_brick.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"desertcobble",
	"default:desertscobble",
	"Desert Cobble Angled Wall",
	"Desert Cobble Low Angled Wall",
	"Desert Cobble Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_desert_cobble.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"desertstone",
	"default:desertstone",
	"Desert Stone Angled Wall",
	"Desert Stone Low Angled Wall",
	"Desert Stone Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_desert_stone.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"desert_stone_block",
	"default:desert_stone_block",
	"Desert Stone Block Angled Wall",
	"Desert Stone Block Low Angled Wall",
	"Desert Stone Block Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_desert_stone_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"desert_stonebrick",
	"default:desert_stonebrick",
	"Desert Stone Brick Angled Wall",
	"Desert Stone Brick Low Angled Wall",
	"Desert Stone Brick Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_desert_stone_brick.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"desert_sandstone",
	"default:desert_sandstone",
	"Desert Sandstone Angled Wall",
	"Desert Sandstone Low Angled Wall",
	"Desert Sandstone Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_desert_sandstone.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"desert_sandstone_block",
	"default:desert_sandstone_block",
	"Desert Sandstone Block Angled Wall",
	"Desert Sandstone Block Low Angled Wall",
	"Desert Sandstone Block Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_desert_sandstone_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"desert_sandstone_brick",
	"default:desert_sandstone_brick",
	"Desert Sandstone Brick Angled Wall",
	"Desert Sandstone Brick Low Angled Wall",
	"Desert Sandstone Brick Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_desert_sandstone_brick.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"sandstone",
	"default:sandstone",
	"Sandstone Angled Wall",
	"Sandstone Low Angled Wall",
	"Sandstone Corner",
	{
		groups = {crumbly = 1, cracky = 3},
		tiles = {"default_sandstone.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"sandstone_block",
	"default:sandstone_block",
	"Sandstone Block Angled Wall",
	"Sandstone Block Low Angled Wall",
	"Sandstone Block Corner",
	{
		groups = {cracky = 2},
		tiles = {"default_sandstone_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"sandstonebrick",
	"default:sandstonebrick",
	"Sandstone Brick Angled Wall",
	"Sandstone Brick Low Angled Wall",
	"Sandstone Brick Corner",
	{
		groups = {cracky = 2},
		tiles = {"default_sandstone_brick.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"silver_sandstone",
	"default:silver_sandstone",
	"Silver Sandstone Angled Wall",
	"Silver Sandstone Low Angled Wall",
	"Silver Sandstone Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_silver_sandstone.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"silver_sandstone_block",
	"default:silver_sandstone_block",
	"Silver Sandstone Block Angled Wall",
	"Silver Sandstone Block Low Angled Wall",
	"Silver Sandstone Block Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_silver_sandstone_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"silver_sandstone_brick",
	"default:silver_sandstone_brick",
	"Silver Sandstone Brick Angled Wall",
	"Silver Sandstone Brick Low Angled Wall",
	"Silver Sandstone Brick Corner",
	{
		groups = {cracky = 2, stone = 1},
		tiles = {"default_silver_sandstone_brick.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"obsidian",
	"default:obsidian",
	"Obsidian Angled Wall",
	"Obsidian Low Angled Wall",
	"Obsidian Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_obsidian.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"obsidian_block",
	"default:obsidian_block",
	"Obsidian Block Angled Wall",
	"Obsidian Block Low Angled Wall",
	"Obsidian Block Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_obsidian_block.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"obsidian_brick",
	"default:obsidian_brick",
	"Obsidian Brick Angled Wall",
	"Obsidian Brick Low Angled Wall",
	"Obsidian Brick Corner",
	{
		groups = {cracky = 1, level = 2},
		tiles = {"default_obsidian_brick.png"},
		sounds = default.node_sound_stone_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"glass",
	"default:glass",
	"Glass Angled Wall",
	"Glass Low Angled Wall",
	"Glass Corner",
	{
		groups = {cracky = 3, oddly_breakable_by_hand = 3},
		tiles = {"default_glass.png", "default_glass_detail.png"},
		sounds = default.node_sound_glass_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"obsidianglass",
	"default:obsidian_glass",
	"Obsidian Glass Angled Wall",
	"Obsidian Glass Low Angled Wall",
	"Obsidian Glass Corner",
	{
		groups = {cracky = 3,},
		tiles = {"default_obsidian_glass.png", "default_obsidian_glass_detail.png"},
		sounds = default.node_sound_glass_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"ice",
	"default:ice",
	"Ice Angled Wall",
	"Ice Low Angled Wall",
	"Ice Corner",
	{
		groups = {cracky = 3, oddly_breakable_by_hand = 3},
		tiles = {"default_ice.png"},
		sounds = default.node_sound_glass_defaults()
	}
)

angledwalls.register_angled_wall_and_low_angled_wall_and_corner(
	"snow",
	"default:snow",
	"Snow Angled Wall",
	"Snow Low Angled Wall",
	"Snow Corner",
	{
		groups = {cracky = 3,},
		tiles = {"default_snow.png"},
		sounds = default.node_sound_glass_defaults()
	}
)