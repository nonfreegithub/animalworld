mobs:register_mob("animalworld:viper", {
        stepheight = 3,
	type = "monster",
	passive = false,
        attack_type = "dogfight",
	attack_animals = true,
	reach = 2,
        damage = 6,
	hp_min = 10,
	hp_max = 30,
	armor = 100,
	collisionbox = {-0.3, -0.01, -0.3, 0.3, 0.8, 0.3},
	visual = "mesh",
	mesh = "Viper.b3d",
	visual_size = {x = 0.6, y = 0.6},
	textures = {
		{"textureviper.png"},
		{"textureviper2.png"},
		{"textureviper3.png"},
		{"textureviper4.png"},
	},
	sounds = {
		random = "animalworld_kobra",
		attack = "animalworld_kobra",
	},
	makes_footstep_sound = false,
	view_range = 2,
	walk_velocity = 0.5,
	run_velocity = 1,
	runaway = false,
	jump = false,
        jump_height = 0,
	drops = {
		{name = "mobs:meat_raw", chance = 1, min = 1, max = 1},
	        {name = "mobs:leather", chance = 1, min = 0, max = 2},
	},
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fear_height = 4,
	animation = {
		speed_normal = 40,
		stand_start = 0,
		stand_end = 100,
		stand1_start = 100,
		stand1_end = 200,
		walk_start = 300,
		walk_end = 420,
                punch_speed = 120,
		punch_start = 200,
		punch_end = 300,
		-- 50-70 is slide/water idle
	},

	fly_in = {"default:water_source", "default:river_water_source", "default:water_flowing"},
	floats = 0,
})

if minetest.get_modpath("ethereal") then
	spawn_on = {"default:desert_sandstone", "default:desert_stone", "default:sandstone", "default:dirt_with_rainforest_litter", "ethereal:grove_dirt"}
end

if not mobs.custom_spawn_animalworld then
mobs:spawn({
	name = "animalworld:viper",
	nodes = {"naturalbiomes:heath_litter3"}, 
	min_light = 0,
	interval = 60,
	active_object_count = 2,
	chance = 8000, -- 15000
	min_height = 0,
	max_height = 50,
})
end


mobs:register_egg("animalworld:viper", ("Viper"), "aviper.png")


mobs:alias_mob("animalworld:viper", "animalworld:viper") -- compatiblity