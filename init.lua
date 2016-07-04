-- [MOD] Angled Walls [angledwalls] [1.1] by TumeniNodes 6-24-2016

angledwalls = {}

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
	on_place = angledwalls.angled_place
})
end

-- Angled wall/low wall registration function.
-- Nodes will be called angledwalls:{angled_wall,low_angled_wall}_<subname>

function angledwalls.register_angled_wall_and_low_angled_wall(subname, recipeitem, groups, images,desc_angled_wall, desc_low_angled_wall, sounds)
	angledwalls.register_angled_wall(subname, recipeitem, groups, images, desc_angled_wall, sounds)
	angledwalls.register_low_angled_wall(subname, recipeitem, groups, images, desc_low_angled_wall, sounds)
end

dofile(minetest.get_modpath("angledwalls").."/angledwalls.lua")

if minetest.get_modpath("bakedclay") then
	dofile(minetest.get_modpath("angledwalls").."/bakedclay.lua")
end

if minetest.get_modpath("quartz") then
	dofile(minetest.get_modpath("angledwalls").."/quartz.lua")
end
