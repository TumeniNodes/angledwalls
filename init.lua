-- [MOD] Angled Walls [angledwalls] [1.2] by TumeniNodes 6-24-2016

dofile(minetest.get_modpath("angledwalls").."/angledwalls.lua")

if minetest.get_modpath("bakedclay") then
	dofile(minetest.get_modpath("angledwalls").."/bakedclay.lua")
end

if minetest.get_modpath("quartz") then
	dofile(minetest.get_modpath("angledwalls").."/quartz.lua")
end
