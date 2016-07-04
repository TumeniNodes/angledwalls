angledwalls = {}
dofile(minetest.get_modpath("angledwalls").."/angledwalls.lua")
dofile(minetest.get_modpath("angledwalls").."/bakedclay.lua")
dofile(minetest.get_modpath("angledwalls").."/quartz.lua")


local mod_bakedclay = minetest.get_modpath("bakedclay")
local mod_quartz = minetest.get_modpath("quartz")


if mod_bakedclay then
	dofile(minetest.get_modpath("angledwalls").."/bakedclay.lua")
	
	end

if mod_quartz then
	dofile(minetest.get_modpath("angledwalls").."/quartz.lua")
	
	end
