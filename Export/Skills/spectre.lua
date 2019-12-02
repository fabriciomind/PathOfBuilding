-- Path of Building
--
-- Spectre active skills
-- Skill data (c) Grinding Gear Games
--
local skills, mod, flag, skill = ...

skills["BeastCleave"] = {
	name = "Cleave",
	hidden = true,
	color = 1,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
	},
	skillTypes = { [1] = true, [6] = true, [8] = true, [11] = true, [28] = true, [24] = true, [53] = true, },
	weaponTypes = {
		["Two Handed Axe"] = true,
		["One Handed Axe"] = true,
		["Two Handed Sword"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("levelRequirement", 4), 
		skill("manaCost", 14), 
		mod("Damage", "MORE", -40, 0, 0, { type = "Condition", var = "DualWielding" }), --"cleave_damage_+%_final_while_dual_wielding" = -40
		--"is_area_damage" = 1
		mod("PhysicalDamage", "INC", 52), --"physical_damage_+%" = 52
		skill("doubleHitsWhenDualWielding", true), --"skill_double_hits_when_dual_wielding" = 1
		mod("Speed", "INC", -30, ModFlag.Attack, 0, nil), --"attack_speed_+%" = -30
		--"skill_sound_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["BirdmanBloodProjectile"] = {
	name = "Blood Projectile",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		projectile = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, },
	baseMods = {
		skill("castTime", 1), 
		mod("Speed", "INC", 100, ModFlag.Attack, 0, nil), --"attack_speed_+%" = 100
		mod("Damage", "MORE", 10, ModFlag.Hit), --"active_skill_damage_+%_final" = 10
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"projectile_spread_radius" = 15
		--"base_is_projectile" = ?
		--"spell_maximum_action_distance_+%" = -15
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 4, },
		[2] = { 13, },
		[3] = { 33, },
		[4] = { 39, },
		[5] = { 55, },
		[6] = { 66, },
	},
}
skills["BirdmanConsumeCorpse"] = {
	name = "Consume Corpse",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
	},
	skillTypes = { [2] = true, },
	baseMods = {
		skill("castTime", 2.67), 
		skill("levelRequirement", 0), 
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["ChaosDegenAura"] = {
	name = "Chaos Aura",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		chaos = true,
	},
	skillTypes = { [2] = true, [5] = true, [11] = true, [15] = true, [40] = true, [44] = true, [50] = true, },
	baseMods = {
		skill("castTime", 1), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("ChaosDot", nil), --"base_chaos_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 3, 1.2833333333333, },
		[2] = { 5, 1.6, },
		[3] = { 8, 2.1333333333333, },
		[4] = { 10, 2.55, },
		[5] = { 12, 3.0166666666667, },
		[6] = { 14, 3.5333333333333, },
		[7] = { 17, 4.4333333333333, },
		[8] = { 20, 5.5, },
		[9] = { 24, 7.2, },
		[10] = { 30, 10.516666666667, },
		[11] = { 31, 11.166666666667, },
		[12] = { 36, 15, },
		[13] = { 41, 19.9, },
		[14] = { 44, 23.466666666667, },
		[15] = { 51, 34.083333333333, },
		[16] = { 52, 35.916666666667, },
		[17] = { 57, 46.433333333333, },
		[18] = { 60, 54.033333333333, },
		[19] = { 65, 69.283333333333, },
		[20] = { 66, 72.766666666667, },
		[21] = { 67, 76.416666666667, },
		[22] = { 68, 80.233333333333, },
		[23] = { 69, 84.233333333333, },
		[24] = { 70, 88.416666666667, },
		[25] = { 71, 92.8, },
		[26] = { 72, 97.366666666667, },
		[27] = { 73, 102.16666666667, },
		[28] = { 74, 107.16666666667, },
		[29] = { 75, 112.4, },
		[30] = { 76, 117.88333333333, },
		[31] = { 77, 123.6, },
		[32] = { 78, 129.6, },
		[33] = { 79, 135.85, },
		[34] = { 80, 142.4, },
		[35] = { 81, 149.25, },
		[36] = { 82, 156.4, },
	},
}
skills["DelayedBlastSpectre"] = {
	name = "Delayed Blast",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		area = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 1.3), 
		--"is_area_damage" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("PhysicalMin", nil), --"spell_minimum_base_physical_damage"
		[3] = skill("PhysicalMax", nil), --"spell_maximum_base_physical_damage"
	},
	levels = {
		[1] = { 3, 3, 5, },
		[2] = { 5, 4, 6, },
		[3] = { 8, 5, 8, },
		[4] = { 10, 6, 9, },
		[5] = { 12, 8, 11, },
		[6] = { 14, 9, 13, },
		[7] = { 17, 11, 17, },
		[8] = { 20, 14, 21, },
		[9] = { 24, 19, 28, },
		[10] = { 30, 28, 42, },
		[11] = { 31, 30, 45, },
		[12] = { 36, 41, 61, },
		[13] = { 41, 55, 82, },
		[14] = { 44, 65, 98, },
		[15] = { 51, 97, 146, },
		[16] = { 52, 103, 154, },
		[17] = { 57, 135, 202, },
		[18] = { 60, 159, 238, },
		[19] = { 65, 207, 310, },
		[20] = { 66, 218, 327, },
		[21] = { 67, 230, 345, },
		[22] = { 68, 242, 363, },
		[23] = { 69, 255, 382, },
		[24] = { 70, 269, 403, },
		[25] = { 71, 283, 424, },
		[26] = { 72, 298, 447, },
		[27] = { 73, 313, 470, },
		[28] = { 74, 330, 495, },
		[29] = { 75, 347, 521, },
		[30] = { 76, 365, 548, },
		[31] = { 77, 384, 577, },
		[32] = { 78, 404, 607, },
		[33] = { 79, 425, 638, },
		[34] = { 80, 447, 671, },
		[35] = { 81, 470, 706, },
		[36] = { 82, 495, 742, },
	},
}
skills["DemonFemaleRangedProjectile"] = {
	name = "Ranged Attack",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		projectile = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, },
	baseMods = {
		skill("castTime", 2), 
		skill("levelRequirement", 30), 
		--"spell_maximum_action_distance_+%" = -60
		mod("Damage", "MORE", -60, ModFlag.Hit), --"active_skill_damage_+%_final" = -60
		--"monster_reverse_point_blank_damage_-%_at_minimum_range" = 30
		--"base_is_projectile" = ?
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["ExperimenterDetonateDead"] = {
	name = "Detonate Dead",
	hidden = true,
	color = 4,
	baseFlags = {
		cast = true,
		area = true,
		fire = true,
	},
	skillTypes = { [39] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("critChance", 5), 
		--"is_area_damage" = 1
		--"spell_maximum_action_distance_+%" = -70
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"monster_penalty_against_minions_damage_+%_final_vs_player_minions" = -25
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		--[2] = "corpse_explosion_monster_life_%"
		[3] = skill("FireMin", nil), --"secondary_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"secondary_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 3, 7, 6, 9, },
		[2] = { 5, 7, 7, 10, },
		[3] = { 8, 7, 9, 13, },
		[4] = { 12, 7, 11, 17, },
		[5] = { 16, 7, 14, 21, },
		[6] = { 20, 7, 17, 25, },
		[7] = { 25, 7, 21, 32, },
		[8] = { 32, 7, 28, 42, },
		[9] = { 33, 5, 29, 44, },
		[10] = { 34, 5, 30, 46, },
		[11] = { 45, 5, 45, 67, },
		[12] = { 53, 5, 57, 86, },
		[13] = { 54, 5, 59, 88, },
		[14] = { 60, 4, 70, 105, },
		[15] = { 66, 4, 83, 125, },
		[16] = { 67, 4, 85, 128, },
		[17] = { 68, 4, 88, 132, },
		[18] = { 69, 4, 90, 135, },
		[19] = { 70, 4, 93, 139, },
		[20] = { 71, 4, 95, 143, },
		[21] = { 72, 4, 98, 146, },
		[22] = { 73, 4, 100, 150, },
		[23] = { 74, 4, 103, 154, },
		[24] = { 75, 4, 106, 158, },
		[25] = { 76, 4, 108, 163, },
		[26] = { 77, 4, 111, 167, },
		[27] = { 78, 4, 114, 171, },
		[28] = { 79, 4, 117, 176, },
		[29] = { 80, 4, 120, 180, },
		[30] = { 81, 4, 123, 185, },
		[31] = { 82, 4, 126, 189, },
	},
}
skills["FireMonsterWhirlingBlades"] = {
	name = "Fire Roll",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		melee = true,
		movement = true,
		duration = true,
	},
	skillTypes = { [1] = true, [6] = true, [24] = true, [38] = true, },
	weaponTypes = {
		["Claw"] = true,
		["Dagger"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 2.6), 
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		mod("Speed", "INC", -50, ModFlag.Attack, 0, nil), --"attack_speed_+%" = -50
		--"monster_flurry" = 1
		skill("castTimeOverridesAttackTime", true), --"cast_time_overrides_attack_duration" = ?
		--"ignores_proximity_shield" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireDot", nil), --"whirling_blades_base_ground_fire_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 3, 1.5833333333333, },
		[2] = { 5, 2.0666666666667, },
		[3] = { 8, 3, },
		[4] = { 11, 4.2333333333333, },
		[5] = { 15, 6.4833333333333, },
		[6] = { 19, 9.6833333333333, },
		[7] = { 23, 14.166666666667, },
		[8] = { 27, 20.4, },
		[9] = { 28, 22.316666666667, },
		[10] = { 32, 31.7, },
		[11] = { 40, 62.316666666667, },
		[12] = { 47, 110.18333333333, },
		[13] = { 50, 139.96666666667, },
		[14] = { 55, 207.4, },
		[15] = { 60, 305.51666666667, },
		[16] = { 64, 414.95, },
		[17] = { 65, 447.75, },
		[18] = { 66, 483.03333333333, },
		[19] = { 67, 521.03333333333, },
		[20] = { 68, 561.91666666667, },
		[21] = { 69, 605.9, },
		[22] = { 70, 653.23333333333, },
		[23] = { 71, 704.15, },
		[24] = { 72, 758.91666666667, },
		[25] = { 73, 817.81666666667, },
		[26] = { 74, 881.16666666667, },
		[27] = { 75, 949.28333333333, },
		[28] = { 76, 1022.5333333333, },
		[29] = { 77, 1101.2833333333, },
		[30] = { 78, 1185.9333333333, },
		[31] = { 79, 1276.9166666667, },
		[32] = { 80, 1374.7166666667, },
		[33] = { 81, 1479.8333333333, },
		[34] = { 82, 1592.7833333333, },
	},
}
skills["FlamebearerFlameBlue"] = {
	name = "Blue Flame",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [12] = true, [17] = true, [19] = true, [30] = true, [33] = true, },
	skillTotemId = 8,
	baseMods = {
		skill("castTime", 0.25), 
		skill("damageEffectiveness", 0.25), 
		skill("cooldown", 4), 
		--"skill_repeat_count" = 25
		--"skill_art_variation" = 1
		mod("Speed", "MORE", 25, ModFlag.Cast), --"active_skill_cast_speed_+%_final" = 25
		--"monster_penalty_against_minions_damage_+%_final_vs_player_minions" = -25
		--"base_is_projectile" = ?
		mod("PierceChance", "BASE", 100), --"always_pierce" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		--[4] = "spell_maximum_action_distance_+%"
	},
	levels = {
		[1] = { 4, 2, 3, -78, },
		[2] = { 8, 3, 5, -75, },
		[3] = { 16, 7, 10, -75, },
		[4] = { 20, 9, 13, -75, },
		[5] = { 29, 17, 25, -75, },
		[6] = { 34, 23, 34, -75, },
		[7] = { 39, 31, 47, -75, },
		[8] = { 45, 45, 67, -75, },
		[9] = { 51, 63, 95, -75, },
		[10] = { 58, 93, 140, -75, },
		[11] = { 62, 116, 174, -75, },
		[12] = { 64, 129, 194, -75, },
		[13] = { 66, 144, 216, -75, },
		[14] = { 67, 152, 228, -75, },
		[15] = { 68, 248, 372, -75, },
		[16] = { 69, 261, 392, -75, },
		[17] = { 70, 276, 413, -75, },
		[18] = { 71, 291, 436, -75, },
		[19] = { 72, 306, 459, -75, },
		[20] = { 73, 323, 484, -75, },
		[21] = { 74, 340, 510, -75, },
		[22] = { 75, 358, 537, -75, },
		[23] = { 76, 377, 566, -75, },
		[24] = { 77, 397, 596, -75, },
		[25] = { 78, 418, 627, -75, },
		[26] = { 79, 440, 660, -75, },
		[27] = { 80, 464, 695, -75, },
		[28] = { 81, 488, 732, -75, },
		[29] = { 82, 514, 770, -75, },
	},
}
skills["GoatmanMoltenShell"] = {
	name = "Molten Shell",
	hidden = true,
	color = 1,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [18] = true, [31] = true, [36] = true, [26] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("damageEffectiveness", 2), 
		mod("ElementalResist", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_resist_all_elements_%" = 0
		--"skill_art_variation" = 1
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"is_area_damage" = ?
		skill("critChance", 5), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		--[5] = "fire_shield_damage_threshold"
		[6] = mod("Armour", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_physical_damage_reduction_rating"
	},
	levels = {
		[1] = { 3, 200, 17, 25, 20, 335, },
		[2] = { 5, 200, 21, 32, 25, 649, },
		[3] = { 8, 190, 29, 43, 36, 1000, },
		[4] = { 12, 180, 41, 62, 49, 1633, },
		[5] = { 15, 180, 53, 79, 64, 2075, },
		[6] = { 19, 175, 72, 107, 91, 2573, },
		[7] = { 22, 175, 89, 133, 116, 3094, },
		[8] = { 26, 166, 117, 175, 160, 3641, },
		[9] = { 30, 160, 152, 228, 209, 4352, },
		[10] = { 36, 160, 222, 332, 315, 5313, },
		[11] = { 39, 160, 266, 398, 374, 5890, },
		[12] = { 40, 160, 282, 423, 377, 6189, },
		[13] = { 45, 160, 377, 566, 565, 7030, },
		[14] = { 50, 160, 501, 752, 752, 7870, },
		[15] = { 57, 160, 737, 1105, 1194, 9159, },
		[16] = { 60, 160, 866, 1299, 1403, 9867, },
		[17] = { 66, 160, 1190, 1784, 2091, 11090, },
		[18] = { 67, 160, 1253, 1880, 2211, 11524, },
		[19] = { 68, 160, 1321, 1981, 2334, 11966, },
		[20] = { 69, 160, 1391, 2087, 2456, 12428, },
		[21] = { 70, 160, 1465, 2198, 2579, 12894, },
		[22] = { 71, 160, 1543, 2314, 2746, 13369, },
		[23] = { 72, 160, 1624, 2437, 2912, 13857, },
		[24] = { 73, 160, 1710, 2565, 3074, 14358, },
		[25] = { 74, 160, 1800, 2700, 3237, 14875, },
		[26] = { 75, 160, 1894, 2841, 3397, 15397, },
		[27] = { 76, 160, 1993, 2990, 3552, 15931, },
		[28] = { 77, 160, 2097, 3146, 3703, 16480, },
		[29] = { 78, 160, 2206, 3309, 3847, 17039, },
		[30] = { 79, 160, 2321, 3481, 3981, 17613, },
		[31] = { 80, 160, 2441, 3661, 4110, 18195, },
		[32] = { 81, 160, 2566, 3850, 4230, 18790, },
		[33] = { 82, 160, 2698, 4048, 4334, 19399, },
	},
}
skills["GuardianArc"] = {
	name = "Arc",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [17] = true, [18] = true, [19] = true, [23] = true, [26] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.7), 
		skill("critChance", 5), 
		mod("EnemyShockChance", "BASE", 5), --"base_chance_to_shock_%" = 5
		mod("ChainCount", "BASE", 0), --"number_of_additional_projectiles_in_chain" = 0
		mod("Speed", "MORE", -80, ModFlag.Cast), --"active_skill_cast_speed_+%_final" = -80
		--"spell_maximum_action_distance_+%" = -50
		--"skill_art_variation" = 1
		mod("Speed", "INC", -80, ModFlag.Cast), --"base_cast_speed_+%" = -80
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 2, 2, 6, },
		[2] = { 4, 2, 7, },
		[3] = { 8, 3, 10, },
		[4] = { 12, 5, 14, },
		[5] = { 15, 6, 17, },
		[6] = { 18, 7, 21, },
		[7] = { 21, 9, 26, },
		[8] = { 25, 11, 32, },
		[9] = { 28, 13, 39, },
		[10] = { 32, 16, 48, },
		[11] = { 38, 22, 66, },
		[12] = { 46, 32, 97, },
		[13] = { 51, 41, 122, },
		[14] = { 56, 51, 154, },
		[15] = { 62, 67, 200, },
		[16] = { 64, 73, 218, },
		[17] = { 66, 79, 238, },
		[18] = { 67, 83, 248, },
		[19] = { 68, 86, 259, },
		[20] = { 69, 90, 270, },
		[21] = { 70, 113, 338, },
		[22] = { 71, 118, 353, },
		[23] = { 72, 123, 368, },
		[24] = { 73, 128, 383, },
		[25] = { 74, 133, 400, },
		[26] = { 75, 139, 416, },
		[27] = { 76, 145, 434, },
		[28] = { 77, 151, 452, },
		[29] = { 78, 157, 471, },
		[30] = { 79, 164, 491, },
		[31] = { 80, 170, 511, },
		[32] = { 81, 177, 532, },
		[33] = { 82, 185, 554, },
		[34] = { 83, 192, 577, },
		[35] = { 84, 200, 601, },
	},
}
skills["HalfSkeletonPuncture"] = {
	name = "Puncture",
	hidden = true,
	color = 2,
	baseFlags = {
		attack = true,
		melee = true,
		projectile = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, [6] = true, [12] = true, [17] = true, [19] = true, [22] = true, [25] = true, [28] = true, [24] = true, [40] = true, },
	weaponTypes = {
		["Bow"] = true,
		["Claw"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 7.5), 
		skill("bleedBasePercent", 14.5), --"base_bleed_on_hit_still_%_of_physical_damage_to_deal_per_minute" = 870
		--"base_bleed_on_hit_moving_%_of_physical_damage_to_deal_per_minute" = 4370
		--"bleed_on_hit_base_duration" = 5000
		--"melee_range_+" = 20
		mod("BleedChance", "BASE", 100), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 2, },
		[2] = { 6, },
		[3] = { 10, },
		[4] = { 14, },
		[5] = { 18, },
		[6] = { 22, },
		[7] = { 26, },
		[8] = { 30, },
		[9] = { 34, },
		[10] = { 38, },
		[11] = { 42, },
		[12] = { 46, },
		[13] = { 50, },
		[14] = { 54, },
		[15] = { 58, },
		[16] = { 61, },
		[17] = { 63, },
		[18] = { 66, },
		[19] = { 67, },
		[20] = { 68, },
		[21] = { 69, },
		[22] = { 70, },
		[23] = { 71, },
		[24] = { 72, },
		[25] = { 73, },
		[26] = { 74, },
		[27] = { 75, },
		[28] = { 76, },
		[29] = { 77, },
		[30] = { 78, },
		[31] = { 79, },
		[32] = { 80, },
		[33] = { 81, },
		[34] = { 82, },
	},
}
skills["IguanaProjectile"] = {
	name = "Ranged Attack",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		projectile = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, [10] = true, [57] = true, },
	baseMods = {
		skill("castTime", 1.5), 
		skill("levelRequirement", 1), 
		skill("cooldown", 3.5), 
		--"monster_projectile_variation" = 4
		--"skill_repeat_count" = 0
		--"spell_maximum_action_distance_+%" = -60
		mod("Damage", "MORE", -60, ModFlag.Hit), --"active_skill_damage_+%_final" = -60
		--"monster_reverse_point_blank_damage_-%_at_minimum_range" = 30
		--"base_is_projectile" = ?
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["IncaMinionProjectile"] = {
	name = "Chaos Projectile",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
	},
	skillTypes = { [2] = true, [10] = true, },
	baseMods = {
		skill("castTime", 1.65), 
		skill("critChance", 5), 
		--"base_is_projectile" = 1
		--"skill_range_+%" = -75
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ChaosMin", nil), --"spell_minimum_base_chaos_damage"
		[4] = skill("ChaosMax", nil), --"spell_maximum_base_chaos_damage"
		[5] = skill("PhysicalMin", nil), --"spell_minimum_base_physical_damage"
		[6] = skill("PhysicalMax", nil), --"spell_maximum_base_physical_damage"
	},
	levels = {
		[1] = { 4, 5, 2, 3, 3, 5, },
		[2] = { 9, 5, 3, 5, 5, 7, },
		[3] = { 13, 5, 4, 6, 6, 9, },
		[4] = { 17, 5, 5, 8, 8, 12, },
		[5] = { 21, 4, 7, 10, 10, 15, },
		[6] = { 22, 4, 7, 10, 10, 15, },
		[7] = { 25, 4, 8, 12, 12, 18, },
		[8] = { 32, 4, 11, 16, 16, 24, },
		[9] = { 39, 4, 14, 22, 22, 33, },
		[10] = { 45, 4, 18, 27, 27, 41, },
		[11] = { 47, 4, 20, 29, 29, 44, },
		[12] = { 48, 4, 20, 30, 30, 46, },
		[13] = { 52, 4, 23, 35, 35, 53, },
		[14] = { 56, 4, 27, 40, 40, 60, },
		[15] = { 63, 4, 34, 51, 51, 76, },
		[16] = { 64, 4, 35, 53, 53, 79, },
		[17] = { 65, 4, 36, 54, 54, 81, },
		[18] = { 66, 4, 37, 56, 56, 84, },
		[19] = { 67, 4, 39, 58, 58, 87, },
		[20] = { 68, 4, 101, 151, 151, 227, },
		[21] = { 69, 4, 104, 156, 156, 234, },
		[22] = { 70, 4, 107, 161, 161, 242, },
		[23] = { 71, 4, 110, 166, 166, 249, },
		[24] = { 72, 4, 114, 172, 171, 257, },
		[25] = { 73, 4, 118, 177, 176, 265, },
		[26] = { 74, 4, 121, 182, 182, 274, },
		[27] = { 75, 4, 125, 188, 188, 282, },
		[28] = { 76, 4, 129, 194, 193, 291, },
		[29] = { 77, 4, 133, 200, 199, 300, },
		[30] = { 78, 4, 137, 206, 205, 309, },
		[31] = { 79, 4, 141, 212, 212, 319, },
		[32] = { 80, 4, 145, 219, 218, 328, },
		[33] = { 81, 4, 150, 226, 225, 338, },
		[34] = { 82, 4, 154, 232, 232, 349, },
	},
}
skills["InsectSpawnerSpit"] = {
	name = "Spit",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		projectile = true,
	},
	skillTypes = { [3] = true, },
	baseMods = {
		skill("castTime", 1), 
		--"base_is_projectile" = 1
		--"monster_reverse_point_blank_damage_-%_at_minimum_range" = 30
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("FireMin", "BASE", nil, ModFlag.Attack, 0, nil), --"attack_minimum_added_fire_damage"
		[3] = mod("FireMax", "BASE", nil, ModFlag.Attack, 0, nil), --"attack_maximum_added_fire_damage"
		[4] = mod("PhysicalMin", "BASE", nil, ModFlag.Attack, 0, nil), --"attack_minimum_added_physical_damage"
		[5] = mod("PhysicalMax", "BASE", nil, ModFlag.Attack, 0, nil), --"attack_maximum_added_physical_damage"
	},
	levels = {
		[1] = { 2, 1, 1, 2, 3, },
		[2] = { 5, 1, 2, 3, 4, },
		[3] = { 8, 2, 2, 4, 6, },
		[4] = { 11, 2, 3, 6, 7, },
		[5] = { 15, 3, 4, 8, 10, },
		[6] = { 18, 3, 5, 9, 12, },
		[7] = { 22, 4, 7, 12, 15, },
		[8] = { 26, 6, 8, 15, 19, },
		[9] = { 28, 6, 9, 17, 21, },
		[10] = { 34, 9, 13, 24, 29, },
		[11] = { 41, 12, 19, 34, 42, },
		[12] = { 49, 18, 27, 49, 62, },
		[13] = { 50, 19, 29, 52, 65, },
		[14] = { 55, 24, 36, 65, 81, },
		[15] = { 60, 30, 45, 81, 101, },
		[16] = { 64, 36, 54, 97, 121, },
		[17] = { 65, 37, 56, 101, 126, },
		[18] = { 66, 39, 58, 105, 131, },
		[19] = { 67, 41, 61, 110, 137, },
		[20] = { 68, 42, 64, 115, 143, },
		[21] = { 69, 44, 66, 119, 149, },
		[22] = { 70, 46, 69, 125, 156, },
		[23] = { 71, 48, 72, 130, 162, },
		[24] = { 72, 50, 75, 136, 169, },
		[25] = { 73, 52, 78, 141, 177, },
		[26] = { 74, 55, 82, 147, 184, },
		[27] = { 75, 57, 85, 154, 192, },
		[28] = { 76, 59, 89, 160, 200, },
		[29] = { 77, 62, 93, 167, 208, },
		[30] = { 78, 64, 96, 174, 217, },
		[31] = { 79, 67, 101, 181, 226, },
		[32] = { 80, 70, 105, 188, 236, },
		[33] = { 81, 73, 109, 196, 245, },
		[34] = { 82, 76, 114, 204, 255, },
	},
}
skills["MassFrenzy"] = {
	name = "Mass Frenzy",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, },
	baseMods = {
		skill("castTime", 2), 
		skill("levelRequirement", 0), 
		skill("manaCost", 100), 
		skill("cooldown", 6), 
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["MonsterArc"] = {
	name = "Arc",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [17] = true, [18] = true, [19] = true, [23] = true, [26] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.7), 
		skill("critChance", 5), 
		mod("EnemyShockChance", "BASE", 10), --"base_chance_to_shock_%" = 10
		mod("ChainCount", "BASE", 1), --"number_of_additional_projectiles_in_chain" = 1
		--"skill_range_+%" = -50
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 3, 20, 2, 7, },
		[2] = { 5, 20, 3, 9, },
		[3] = { 8, 19, 4, 12, },
		[4] = { 12, 18, 6, 17, },
		[5] = { 15, 18, 8, 23, },
		[6] = { 18, 18, 10, 29, },
		[7] = { 21, 18, 12, 37, },
		[8] = { 25, 17, 17, 50, },
		[9] = { 32, 16, 27, 82, },
		[10] = { 38, 16, 41, 123, },
		[11] = { 46, 16, 68, 205, },
		[12] = { 52, 16, 99, 298, },
		[13] = { 56, 16, 127, 380, },
		[14] = { 62, 16, 181, 542, },
		[15] = { 66, 16, 229, 686, },
		[16] = { 67, 16, 242, 727, },
		[17] = { 68, 16, 257, 770, },
		[18] = { 69, 16, 272, 816, },
		[19] = { 70, 16, 288, 864, },
		[20] = { 71, 16, 305, 915, },
		[21] = { 72, 16, 323, 969, },
		[22] = { 73, 16, 342, 1026, },
		[23] = { 74, 16, 362, 1086, },
		[24] = { 75, 16, 383, 1150, },
		[25] = { 76, 16, 406, 1217, },
		[26] = { 77, 16, 429, 1288, },
		[27] = { 78, 16, 454, 1362, },
		[28] = { 79, 16, 480, 1441, },
		[29] = { 80, 16, 508, 1525, },
		[30] = { 81, 16, 537, 1612, },
		[31] = { 82, 16, 568, 1705, },
		[32] = { 83, 16, 601, 1803, },
		[33] = { 84, 16, 635, 1906, },
	},
}
skills["MonsterCausticArrow"] = {
	name = "Caustic Arrow",
	hidden = true,
	color = 2,
	baseFlags = {
		attack = true,
		projectile = true,
		area = true,
		duration = true,
		chaos = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, [11] = true, [12] = true, [17] = true, [19] = true, [22] = true, [40] = true, [50] = true, },
	weaponTypes = {
		["Bow"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		mod("PhysicalDamageGainAsChaos", "BASE", 34, 0, 0, nil), --"physical_damage_%_to_add_as_chaos" = 34
		--"skill_can_fire_arrows" = 1
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"monster_penalty_against_minions_damage_+%_final_vs_player_minions" = -25
		--"ground_caustic_art_variation" = 2
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = skill("ChaosDot", nil), --"base_chaos_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 3, 10, 1.2, 1.4833333333333, },
		[2] = { 5, 10, 1.2, 1.85, },
		[3] = { 8, 10, 1.2, 2.5, },
		[4] = { 12, 9, 1.2, 3.5833333333333, },
		[5] = { 15, 9, 1.2, 4.5833333333333, },
		[6] = { 19, 9, 1.2, 6.2166666666667, },
		[7] = { 20, 9, 1.2, 6.7, },
		[8] = { 21, 9, 1.2, 7.2, },
		[9] = { 26, 8, 1.2, 10.183333333333, },
		[10] = { 30, 8, 1.2, 13.25, },
		[11] = { 34, 8, 1.2, 17.05, },
		[12] = { 38, 8, 1.2, 21.766666666667, },
		[13] = { 43, 8, 1.2, 29.25, },
		[14] = { 45, 8, 1.2, 32.85, },
		[15] = { 53, 8, 1.2, 51.516666666667, },
		[16] = { 58, 8, 1.2, 67.666666666667, },
		[17] = { 62, 8, 1.2, 83.833333333333, },
		[18] = { 63, 8, 1.2, 88.4, },
		[19] = { 66, 8, 1.2, 103.53333333333, },
		[20] = { 67, 8, 1.2, 109.1, },
		[21] = { 68, 8, 2.4, 160.91666666667, },
		[22] = { 69, 8, 2.5, 169.5, },
		[23] = { 70, 8, 2.6, 178.51666666667, },
		[24] = { 71, 8, 2.7, 187.98333333333, },
		[25] = { 72, 8, 2.8, 197.91666666667, },
		[26] = { 73, 8, 2.9, 208.35, },
		[27] = { 74, 8, 3, 219.3, },
		[28] = { 75, 8, 3, 230.8, },
		[29] = { 76, 8, 3, 242.86666666667, },
		[30] = { 77, 8, 3, 255.51666666667, },
		[31] = { 78, 8, 3, 268.8, },
		[32] = { 79, 8, 3, 282.75, },
		[33] = { 80, 8, 3, 297.36666666667, },
		[34] = { 81, 8, 3, 312.7, },
		[35] = { 82, 8, 3, 328.8, },
	},
}
skills["MonsterCausticBomb"] = {
	name = "Caustic Bomb",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		trap = true,
		area = true,
		duration = true,
		chaos = true,
	},
	skillTypes = { [2] = true, [12] = true, [10] = true, [19] = true, [11] = true, [37] = true, [40] = true, [50] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("critChance", 5), 
		skill("cooldown", 4), 
		--"base_trap_duration" = 2500
		skill("duration", 4), --"base_skill_effect_duration" = 4000
		--"trap_variation" = 2
		--"monster_penalty_against_minions_damage_+%_final_vs_player_minions" = -25
		--"ground_caustic_art_variation" = 2
		--"is_trap" = ?
		--"is_area_damage" = ?
		--"base_skill_is_trapped" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("ChaosMin", nil), --"spell_minimum_base_chaos_damage"
		[3] = skill("ChaosMax", nil), --"spell_maximum_base_chaos_damage"
		[4] = skill("ChaosDot", nil), --"base_chaos_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 4, 4, 5, 3.5, },
		[2] = { 7, 5, 7, 4.7833333333333, },
		[3] = { 9, 6, 8, 5.7666666666667, },
		[4] = { 12, 8, 11, 7.4833333333333, },
		[5] = { 16, 11, 15, 10.3, },
		[6] = { 20, 15, 20, 13.85, },
		[7] = { 27, 24, 32, 22.283333333333, },
		[8] = { 28, 26, 34, 23.766666666667, },
		[9] = { 29, 27, 36, 25.333333333333, },
		[10] = { 32, 33, 44, 30.566666666667, },
		[11] = { 36, 42, 56, 38.966666666667, },
		[12] = { 40, 53, 71, 49.283333333333, },
		[13] = { 45, 71, 94, 65.5, },
		[14] = { 49, 88, 118, 81.75, },
		[15] = { 50, 93, 124, 86.333333333333, },
		[16] = { 52, 104, 139, 96.233333333333, },
		[17] = { 56, 129, 172, 119.16666666667, },
		[18] = { 60, 159, 212, 147.03333333333, },
		[19] = { 64, 195, 260, 180.83333333333, },
		[20] = { 65, 206, 274, 190.33333333333, },
		[21] = { 66, 216, 288, 200.3, },
		[22] = { 67, 228, 303, 210.76666666667, },
		[23] = { 68, 239, 319, 221.73333333333, },
		[24] = { 69, 252, 336, 233.21666666667, },
		[25] = { 70, 265, 353, 245.28333333333, },
		[26] = { 71, 279, 371, 257.91666666667, },
		[27] = { 72, 293, 390, 271.15, },
		[28] = { 73, 308, 410, 285.03333333333, },
		[29] = { 74, 324, 431, 299.58333333333, },
		[30] = { 75, 340, 453, 314.83333333333, },
		[31] = { 76, 357, 476, 330.81666666667, },
		[32] = { 77, 375, 500, 347.55, },
		[33] = { 78, 394, 526, 365.1, },
		[34] = { 79, 414, 552, 383.46666666667, },
		[35] = { 80, 435, 580, 402.71666666667, },
		[36] = { 81, 457, 609, 422.88333333333, },
		[37] = { 82, 480, 639, 444, },
	},
}
skills["MonsterDischarge"] = {
	name = "Discharge",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
		cold = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [18] = true, [26] = true, [36] = true, [45] = true, [33] = true, [34] = true, [35] = true, [60] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 1.5), 
		skill("critChance", 4), 
		--"spell_maximum_action_distance_+%" = -75
		--"skill_art_variation" = 1
		--"is_area_damage" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil, { type = "Multiplier", var = "PowerCharge" }), --"spell_minimum_base_lightning_damage_per_power_charge"
		[3] = skill("LightningMax", nil, { type = "Multiplier", var = "PowerCharge" }), --"spell_maximum_base_lightning_damage_per_power_charge"
		[4] = skill("FireMin", nil, { type = "Multiplier", var = "EnduranceCharge" }), --"spell_minimum_base_fire_damage_per_endurance_charge"
		[5] = skill("FireMax", nil, { type = "Multiplier", var = "EnduranceCharge" }), --"spell_maximum_base_fire_damage_per_endurance_charge"
		[6] = skill("ColdMin", nil, { type = "Multiplier", var = "FrenzyCharge" }), --"spell_minimum_base_cold_damage_per_frenzy_charge"
		[7] = skill("ColdMax", nil, { type = "Multiplier", var = "FrenzyCharge" }), --"spell_maximum_base_cold_damage_per_frenzy_charge"
	},
	levels = {
		[1] = { 4, 7, 20, 10, 14, 8, 12, },
		[2] = { 7, 9, 27, 13, 19, 10, 16, },
		[3] = { 10, 11, 34, 16, 24, 13, 20, },
		[4] = { 12, 13, 40, 19, 28, 15, 23, },
		[5] = { 15, 16, 49, 23, 35, 19, 29, },
		[6] = { 20, 23, 68, 32, 49, 26, 40, },
		[7] = { 27, 34, 103, 49, 73, 40, 60, },
		[8] = { 28, 36, 108, 51, 77, 42, 63, },
		[9] = { 29, 38, 115, 54, 81, 44, 67, },
		[10] = { 32, 45, 134, 64, 95, 52, 78, },
		[11] = { 36, 55, 165, 78, 117, 64, 96, },
		[12] = { 40, 67, 200, 95, 142, 78, 116, },
		[13] = { 45, 85, 254, 120, 180, 98, 148, },
		[14] = { 49, 101, 304, 144, 217, 118, 177, },
		[15] = { 50, 106, 318, 151, 226, 124, 185, },
		[16] = { 52, 116, 348, 165, 248, 135, 203, },
		[17] = { 64, 194, 582, 276, 414, 226, 339, },
		[18] = { 65, 202, 607, 288, 432, 236, 353, },
		[19] = { 66, 211, 633, 300, 450, 245, 368, },
		[20] = { 67, 220, 659, 313, 469, 256, 384, },
		[21] = { 68, 252, 756, 358, 537, 293, 440, },
		[22] = { 69, 262, 787, 373, 560, 305, 458, },
		[23] = { 70, 273, 820, 389, 583, 318, 477, },
		[24] = { 71, 285, 854, 405, 607, 331, 497, },
		[25] = { 72, 296, 889, 422, 632, 345, 517, },
		[26] = { 73, 309, 926, 439, 658, 359, 539, },
		[27] = { 74, 321, 964, 457, 685, 374, 561, },
		[28] = { 75, 334, 1003, 475, 713, 389, 584, },
		[29] = { 76, 348, 1044, 495, 742, 405, 607, },
		[30] = { 77, 362, 1086, 515, 772, 421, 632, },
		[31] = { 78, 377, 1130, 536, 803, 438, 657, },
		[32] = { 79, 392, 1175, 557, 836, 456, 684, },
		[33] = { 80, 407, 1222, 579, 869, 474, 711, },
		[34] = { 81, 424, 1271, 603, 904, 493, 740, },
		[35] = { 82, 441, 1322, 627, 940, 513, 769, },
	},
}
skills["MonsterEnduringCry"] = {
	name = "Enduring Cry",
	hidden = true,
	color = 1,
	baseFlags = {
		warcry = true,
		area = true,
		duration = true,
	},
	skillTypes = { [5] = true, [11] = true, [12] = true, },
	baseMods = {
		skill("castTime", 0.25), 
		skill("cooldown", 4), 
		--"endurance_charges_granted_per_one_hundred_nearby_enemies_during_endurance_warcry" = 300
		skill("duration", 0.75), --"base_skill_effect_duration" = 750
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("LifeRegen", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_life_regeneration_rate_per_minute"
	},
	levels = {
		[1] = { 4, 5, },
		[2] = { 7, 7.6, },
		[3] = { 10, 11, },
		[4] = { 14, 17, },
		[5] = { 18, 25.2, },
		[6] = { 22, 36.4, },
		[7] = { 24, 43.4, },
		[8] = { 28, 60.8, },
		[9] = { 32, 84.4, },
		[10] = { 36, 115.4, },
		[11] = { 40, 156.6, },
		[12] = { 44, 211, },
		[13] = { 48, 282.2, },
		[14] = { 52, 375.6, },
		[15] = { 56, 497.2, },
		[16] = { 60, 655.8, },
		[17] = { 63, 805, },
		[18] = { 66, 986.4, },
		[19] = { 67, 1055.2, },
		[20] = { 68, 1128.4, },
		[21] = { 69, 1206.6, },
		[22] = { 70, 1289.8, },
		[23] = { 71, 1378.8, },
		[24] = { 72, 1473.4, },
		[25] = { 73, 1574.4, },
		[26] = { 74, 1682, },
		[27] = { 75, 1796.8, },
		[28] = { 76, 1919, },
		[29] = { 77, 2049.2, },
		[30] = { 78, 2188, },
		[31] = { 79, 2335.8, },
		[32] = { 80, 2493.2, },
		[33] = { 81, 2660.8, },
		[34] = { 82, 2839.6, },
	},
}
skills["MonsterEnfeeble"] = {
	name = "Enfeeble",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("levelRequirement", 4), 
		skill("manaCost", 35), 
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		mod("Accuracy", "INC", -40, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"accuracy_rating_+%" = -40
		mod("CritChance", "INC", -40, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"critical_strike_chance_+%" = -40
		mod("Damage", "MORE", -40, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"enfeeble_damage_+%_final" = -40
		mod("CritMultiplier", "BASE", -60, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_critical_strike_multiplier_+" = -60
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["MonsterFireball"] = {
	name = "Fireball",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		area = true,
		fire = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("critChance", 6), 
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -50
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 3, 5, 7, },
		[2] = { 5, 6, 9, },
		[3] = { 8, 8, 12, },
		[4] = { 10, 10, 14, },
		[5] = { 12, 11, 17, },
		[6] = { 14, 13, 20, },
		[7] = { 17, 17, 26, },
		[8] = { 20, 21, 32, },
		[9] = { 25, 30, 45, },
		[10] = { 28, 37, 55, },
		[11] = { 31, 45, 67, },
		[12] = { 36, 61, 91, },
		[13] = { 41, 82, 122, },
		[14] = { 46, 109, 163, },
		[15] = { 51, 144, 216, },
		[16] = { 52, 152, 228, },
		[17] = { 57, 199, 299, },
		[18] = { 65, 304, 456, },
		[19] = { 66, 320, 480, },
		[20] = { 67, 337, 506, },
		[21] = { 68, 861, 1336, },
		[22] = { 69, 906, 1406, },
		[23] = { 70, 954, 1480, },
		[24] = { 71, 1004, 1557, },
		[25] = { 72, 1056, 1639, },
		[26] = { 73, 1111, 1724, },
		[27] = { 74, 1169, 1814, },
		[28] = { 75, 1230, 1908, },
		[29] = { 76, 1293, 2006, },
		[30] = { 77, 1360, 2110, },
		[31] = { 78, 1430, 2218, },
		[32] = { 79, 1503, 2332, },
		[33] = { 80, 1580, 2451, },
		[34] = { 81, 1660, 2576, },
		[35] = { 82, 1745, 2707, },
	},
}
skills["MonsterFireBomb"] = {
	name = "Fire Bomb",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		trap = true,
		area = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [12] = true, [10] = true, [19] = true, [11] = true, [29] = true, [37] = true, [40] = true, [33] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("critChance", 5), 
		--"base_trap_duration" = 2500
		skill("duration", 4.5), --"base_skill_effect_duration" = 4500
		--"trap_variation" = 1
		--"monster_penalty_against_minions_damage_+%_final_vs_player_minions" = -25
		--"is_trap" = ?
		--"is_area_damage" = ?
		--"base_skill_is_trapped" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		[4] = skill("FireDot", nil), --"base_fire_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 4, 4, 7, 3.0333333333333, },
		[2] = { 7, 6, 9, 4.3, },
		[3] = { 10, 8, 13, 5.9, },
		[4] = { 12, 10, 16, 7.2, },
		[5] = { 16, 15, 23, 10.433333333333, },
		[6] = { 20, 21, 32, 14.75, },
		[7] = { 27, 37, 56, 25.983333333333, },
		[8] = { 28, 40, 61, 28.066666666667, },
		[9] = { 34, 63, 95, 44.083333333333, },
		[10] = { 40, 98, 147, 67.95, },
		[11] = { 45, 139, 208, 96.35, },
		[12] = { 49, 182, 274, 126.63333333333, },
		[13] = { 50, 195, 293, 135.48333333333, },
		[14] = { 54, 255, 382, 177.03333333333, },
		[15] = { 58, 332, 498, 230.43333333333, },
		[16] = { 62, 430, 646, 298.88333333333, },
		[17] = { 64, 490, 734, 339.98333333333, },
		[18] = { 65, 522, 783, 362.51666666667, },
		[19] = { 66, 557, 835, 386.46666666667, },
		[20] = { 67, 593, 890, 411.91666666667, },
		[21] = { 68, 885, 1328, 614.58333333333, },
		[22] = { 69, 943, 1414, 654.85, },
		[23] = { 70, 1005, 1507, 697.65, },
		[24] = { 71, 1070, 1605, 743.13333333333, },
		[25] = { 72, 1140, 1710, 791.45, },
		[26] = { 73, 1214, 1820, 842.78333333333, },
		[27] = { 74, 1292, 1938, 897.31666666667, },
		[28] = { 75, 1376, 2063, 955.25, },
		[29] = { 76, 1464, 2196, 1016.7666666667, },
		[30] = { 77, 1558, 2337, 1082.1166666667, },
		[31] = { 78, 1658, 2487, 1151.5, },
		[32] = { 79, 1764, 2646, 1225.1833333333, },
		[33] = { 80, 1877, 2815, 1303.4, },
		[34] = { 81, 1996, 2995, 1386.45, },
		[35] = { 82, 2123, 3185, 1474.6166666667, },
	},
}
skills["MonsterFlickerStrike"] = {
	name = "Flicker Strike",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		melee = true,
		movement = true,
	},
	skillTypes = { [1] = true, [6] = true, [24] = true, [25] = true, [28] = true, [38] = true, },
	weaponTypes = {
		["One Handed Mace"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["Staff"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["Claw"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("levelRequirement", 13), 
		skill("manaCost", 18), 
		skill("cooldown", 2), 
		mod("Speed", "INC", 30, ModFlag.Attack, 0, nil), --"attack_speed_+%" = 30
		mod("Speed", "INC", 10, ModFlag.Attack, 0, { type = "Multiplier", var = "FrenzyCharge" }), --"base_attack_speed_+%_per_frenzy_charge" = 10
		mod("PhysicalDamage", "INC", 0), --"physical_damage_+%" = 0
		mod("Damage", "MORE", 10, ModFlag.Hit), --"active_skill_damage_+%_final" = 10
		--"ignores_proximity_shield" = ?
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["MonsterLeapSlam"] = {
	name = "Leap Slam",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		melee = true,
		area = true,
	},
	skillTypes = { [1] = true, [6] = true, [7] = true, [11] = true, [24] = true, [38] = true, },
	weaponTypes = {
		["Two Handed Sword"] = true,
		["One Handed Mace"] = true,
		["Two Handed Axe"] = true,
		["Two Handed Mace"] = true,
		["One Handed Axe"] = true,
		["One Handed Sword"] = true,
		["Staff"] = true,
	},
	baseMods = {
		skill("castTime", 1.4), 
		skill("levelRequirement", 2), 
		mod("Damage", "MORE", 50, ModFlag.Attack), 
		--"skill_art_variation" = 1
		--"is_area_damage" = ?
		skill("castTimeOverridesAttackTime", true), --"cast_time_overrides_attack_duration" = ?
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["MonsterLesserMultiFireballSpectre"] = {
	name = "Lesser Multi Fireball",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		area = true,
		fire = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("critChance", 6), 
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -50
		mod("ProjectileCount", "BASE", 1), --"number_of_additional_projectiles" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 3, 4, 5, },
		[2] = { 5, 4, 7, },
		[3] = { 8, 6, 9, },
		[4] = { 12, 9, 13, },
		[5] = { 15, 11, 16, },
		[6] = { 19, 15, 22, },
		[7] = { 20, 16, 24, },
		[8] = { 21, 17, 26, },
		[9] = { 26, 24, 36, },
		[10] = { 30, 31, 47, },
		[11] = { 34, 40, 60, },
		[12] = { 38, 51, 77, },
		[13] = { 43, 69, 103, },
		[14] = { 45, 77, 115, },
		[15] = { 53, 120, 180, },
		[16] = { 58, 157, 236, },
		[17] = { 62, 194, 291, },
		[18] = { 63, 205, 307, },
		[19] = { 66, 239, 359, },
		[20] = { 67, 252, 378, },
		[21] = { 68, 584, 876, },
		[22] = { 69, 615, 922, },
		[23] = { 70, 647, 970, },
		[24] = { 71, 681, 1021, },
		[25] = { 72, 716, 1075, },
		[26] = { 73, 754, 1131, },
		[27] = { 74, 793, 1189, },
		[28] = { 75, 834, 1251, },
		[29] = { 76, 877, 1316, },
		[30] = { 77, 922, 1384, },
		[31] = { 78, 970, 1455, },
		[32] = { 79, 1019, 1529, },
		[33] = { 80, 1072, 1607, },
		[34] = { 81, 1126, 1689, },
		[35] = { 82, 1183, 1775, },
	},
}
skills["MonsterLightningArrow"] = {
	name = "Lightning Arrow",
	hidden = true,
	color = 2,
	baseFlags = {
		attack = true,
		projectile = true,
		lightning = true,
	},
	skillTypes = { [1] = true, [48] = true, [11] = true, [3] = true, [22] = true, [17] = true, [19] = true, [35] = true, },
	weaponTypes = {
		["Bow"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		skill("levelRequirement", 9), 
		mod("SkillPhysicalDamageConvertToLightning", "BASE", 50), --"skill_physical_damage_%_to_convert_to_lightning" = 50
		--"lightning_arrow_maximum_number_of_extra_targets" = 4
		mod("EnemyShockChance", "BASE", 25), --"base_chance_to_shock_%" = 25
		--"active_skill_area_of_effect_radius_+%_final" = 0
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["MonsterLightningThorns"] = {
	name = "Lightning Thorns",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [5] = true, [12] = true, [35] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 3.5), 
		skill("duration", 3.5), --"base_skill_effect_duration" = 3500
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		--[2] = "minimum_lightning_damage_to_return_when_hit"
		--[3] = "maximum_lightning_damage_to_return_when_hit"
	},
	levels = {
		[1] = { 3, 3, 10, },
		[2] = { 5, 4, 13, },
		[3] = { 8, 6, 17, },
		[4] = { 12, 8, 24, },
		[5] = { 16, 11, 32, },
		[6] = { 24, 18, 55, },
		[7] = { 28, 23, 70, },
		[8] = { 29, 25, 74, },
		[9] = { 32, 29, 88, },
		[10] = { 38, 41, 123, },
		[11] = { 44, 57, 170, },
		[12] = { 50, 77, 231, },
		[13] = { 51, 81, 243, },
		[14] = { 52, 85, 255, },
		[15] = { 56, 103, 310, },
		[16] = { 60, 125, 376, },
		[17] = { 63, 145, 434, },
		[18] = { 65, 159, 476, },
		[19] = { 66, 166, 499, },
		[20] = { 67, 174, 523, },
		[21] = { 68, 183, 548, },
		[22] = { 69, 191, 574, },
		[23] = { 70, 200, 601, },
		[24] = { 71, 210, 629, },
		[25] = { 72, 219, 658, },
		[26] = { 73, 230, 689, },
		[27] = { 74, 240, 721, },
		[28] = { 75, 252, 755, },
		[29] = { 76, 263, 790, },
		[30] = { 77, 275, 826, },
		[31] = { 78, 288, 864, },
		[32] = { 79, 301, 903, },
		[33] = { 80, 315, 945, },
		[34] = { 81, 329, 988, },
		[35] = { 82, 344, 1032, },
	},
}
skills["MonsterMultiFireballSpectre"] = {
	name = "Multi Fireball",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		area = true,
		fire = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("critChance", 6), 
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -50
		mod("ProjectileCount", "BASE", 2), --"number_of_additional_projectiles" = 2
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 3, 3, 5, },
		[2] = { 5, 4, 6, },
		[3] = { 8, 5, 8, },
		[4] = { 12, 7, 11, },
		[5] = { 15, 10, 14, },
		[6] = { 19, 13, 19, },
		[7] = { 20, 14, 21, },
		[8] = { 21, 15, 22, },
		[9] = { 26, 21, 32, },
		[10] = { 30, 27, 41, },
		[11] = { 34, 35, 53, },
		[12] = { 38, 45, 67, },
		[13] = { 43, 60, 90, },
		[14] = { 45, 67, 101, },
		[15] = { 53, 105, 157, },
		[16] = { 58, 137, 206, },
		[17] = { 62, 170, 255, },
		[18] = { 63, 179, 269, },
		[19] = { 66, 209, 314, },
		[20] = { 67, 221, 331, },
		[21] = { 68, 511, 766, },
		[22] = { 69, 538, 807, },
		[23] = { 70, 566, 849, },
		[24] = { 71, 596, 894, },
		[25] = { 72, 627, 940, },
		[26] = { 73, 660, 989, },
		[27] = { 74, 694, 1041, },
		[28] = { 75, 730, 1095, },
		[29] = { 76, 768, 1151, },
		[30] = { 77, 807, 1211, },
		[31] = { 78, 849, 1273, },
		[32] = { 79, 892, 1338, },
		[33] = { 80, 938, 1406, },
		[34] = { 81, 985, 1478, },
		[35] = { 82, 1035, 1553, },
	},
}
skills["MonsterProjectileWeakness"] = {
	name = "Projectile Weakness",
	hidden = true,
	color = 2,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		--"active_skill_area_of_effect_radius_+%_final" = 0
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("duration", nil), --"base_skill_effect_duration"
		[3] = mod("SelfPierceChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_pierced_%"
		--[4] = "chance_to_be_knocked_back_%"
		[5] = mod("ProjectileDamageTaken", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"projectile_damage_taken_+%"
	},
	levels = {
		[1] = { 25, 10.4, 54, 22, 32, },
		[2] = { 36, 10.4, 54, 22, 32, },
		[3] = { 47, 10.4, 54, 22, 32, },
		[4] = { 55, 10.9, 70, 24, 34, },
		[5] = { 60, 10.9, 95, 24, 34, },
	},
}
skills["MonsterProximityShield"] = {
	name = "Proximity Shield",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [36] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("levelRequirement", 0), 
		skill("cooldown", 18), 
		skill("duration", 8), --"base_skill_effect_duration" = 8000
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["MonsterPuncture"] = {
	name = "Puncture",
	hidden = true,
	color = 2,
	baseFlags = {
		attack = true,
		melee = true,
		projectile = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, [6] = true, [12] = true, [17] = true, [19] = true, [22] = true, [25] = true, [28] = true, [24] = true, [40] = true, },
	weaponTypes = {
		["Bow"] = true,
		["Claw"] = true,
		["Two Handed Sword"] = true,
		["Dagger"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		--"bleed_on_hit_base_duration" = 5000
		--"skill_can_fire_arrows" = ?
		mod("BleedChance", "BASE", 100), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("bleedBasePercent", nil), --"base_bleed_on_hit_still_%_of_physical_damage_to_deal_per_minute"
		--[3] = "base_bleed_on_hit_moving_%_of_physical_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 9, 14.5, 4370, },
		[2] = { 30, 20.666666666667, 6210, },
		[3] = { 60, 25.833333333333, 7730, },
	},
}
skills["MonsterRighteousFireWhileSpectred"] = {
	name = "Unrighteous Fire",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
	},
	skillTypes = { [2] = true, [5] = true, [11] = true, [18] = true, [29] = true, [36] = true, [40] = true, [33] = true, },
	baseMods = {
		skill("castTime", 1), 
		--"skill_art_variation" = 1
		--"active_skill_area_of_effect_radius_+%_final" = 0
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireDot", nil), --"base_fire_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 3, 1.5833333333333, },
		[2] = { 5, 2.05, },
		[3] = { 8, 2.9, },
		[4] = { 10, 3.6, },
		[5] = { 12, 4.4166666666667, },
		[6] = { 14, 5.3666666666667, },
		[7] = { 17, 7.1166666666667, },
		[8] = { 20, 9.3333333333333, },
		[9] = { 24, 13.15, },
		[10] = { 27, 16.866666666667, },
		[11] = { 28, 18.3, },
		[12] = { 31, 23.25, },
		[13] = { 36, 34.283333333333, },
		[14] = { 41, 49.933333333333, },
		[15] = { 44, 62.266666666667, },
		[16] = { 48, 83.183333333333, },
		[17] = { 50, 95.983333333333, },
		[18] = { 52, 110.61666666667, },
		[19] = { 57, 157, },
		[20] = { 63, 237.28333333333, },
		[21] = { 64, 254.01666666667, },
		[22] = { 65, 271.86666666667, },
		[23] = { 66, 290.93333333333, },
		[24] = { 67, 311.28333333333, },
		[25] = { 68, 332.98333333333, },
		[26] = { 69, 356.16666666667, },
		[27] = { 70, 380.88333333333, },
		[28] = { 71, 407.25, },
		[29] = { 72, 435.38333333333, },
		[30] = { 73, 465.38333333333, },
		[31] = { 74, 497.38333333333, },
		[32] = { 75, 531.5, },
		[33] = { 76, 567.88333333333, },
		[34] = { 77, 606.68333333333, },
		[35] = { 78, 648.03333333333, },
		[36] = { 79, 692.11666666667, },
		[37] = { 80, 739.1, },
		[38] = { 81, 789.18333333333, },
		[39] = { 82, 842.56666666667, },
	},
}
skills["MonsterShockNova"] = {
	name = "Shock Nova",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.75), 
		skill("critChance", 3), 
		--"is_area_damage" = 1
		--"active_skill_area_of_effect_radius_+%_final" = 0
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 4, 3, 10, },
		[2] = { 8, 5, 15, },
		[3] = { 11, 6, 19, },
		[4] = { 12, 7, 20, },
		[5] = { 17, 10, 29, },
		[6] = { 22, 13, 40, },
		[7] = { 29, 20, 60, },
		[8] = { 31, 22, 67, },
		[9] = { 35, 28, 83, },
		[10] = { 37, 31, 92, },
		[11] = { 40, 36, 107, },
		[12] = { 45, 46, 137, },
		[13] = { 50, 58, 173, },
		[14] = { 55, 73, 218, },
		[15] = { 58, 83, 250, },
		[16] = { 65, 113, 340, },
		[17] = { 66, 118, 355, },
		[18] = { 67, 124, 371, },
		[19] = { 68, 377, 1132, },
		[20] = { 69, 393, 1182, },
		[21] = { 70, 410, 1233, },
		[22] = { 71, 428, 1286, },
		[23] = { 72, 446, 1342, },
		[24] = { 73, 465, 1400, },
		[25] = { 74, 485, 1459, },
		[26] = { 75, 506, 1522, },
		[27] = { 76, 528, 1587, },
		[28] = { 77, 550, 1654, },
		[29] = { 78, 573, 1724, },
		[30] = { 79, 597, 1796, },
		[31] = { 80, 623, 1872, },
		[32] = { 81, 649, 1950, },
		[33] = { 82, 676, 2032, },
	},
}
skills["MonsterSpark"] = {
	name = "Spark",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.65), 
		skill("damageEffectiveness", 0.7), 
		skill("critChance", 5), 
		skill("duration", 3.5), --"base_skill_effect_duration" = 3500
		--"base_is_projectile" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
		[5] = mod("ProjectileCount", "BASE", nil), --"number_of_additional_projectiles"
	},
	levels = {
		[1] = { 4, 20, 2, 7, 0, },
		[2] = { 8, 19, 3, 10, 0, },
		[3] = { 11, 18, 4, 12, 1, },
		[4] = { 12, 18, 4, 13, 1, },
		[5] = { 15, 18, 5, 16, 1, },
		[6] = { 20, 18, 7, 22, 1, },
		[7] = { 25, 17, 10, 29, 1, },
		[8] = { 29, 16, 12, 36, 1, },
		[9] = { 31, 16, 13, 40, 2, },
		[10] = { 32, 16, 14, 42, 2, },
		[11] = { 34, 16, 15, 46, 2, },
		[12] = { 37, 16, 18, 54, 2, },
		[13] = { 40, 16, 21, 62, 2, },
		[14] = { 42, 16, 22, 67, 2, },
		[15] = { 45, 16, 26, 77, 2, },
		[16] = { 50, 16, 32, 96, 2, },
		[17] = { 51, 16, 33, 100, 2, },
		[18] = { 52, 16, 35, 104, 2, },
		[19] = { 54, 16, 38, 113, 2, },
		[20] = { 58, 16, 44, 133, 2, },
		[21] = { 66, nil, 61, 183, 2, },
		[22] = { 67, nil, 63, 190, 2, },
		[23] = { 68, nil, 145, 435, 2, },
		[24] = { 69, nil, 151, 452, 2, },
		[25] = { 70, nil, 157, 470, 2, },
		[26] = { 71, nil, 163, 488, 2, },
		[27] = { 72, nil, 169, 507, 2, },
		[28] = { 73, nil, 176, 527, 2, },
		[29] = { 74, nil, 182, 547, 2, },
		[30] = { 75, nil, 189, 568, 2, },
		[31] = { 76, nil, 197, 590, 2, },
		[32] = { 77, nil, 204, 612, 2, },
		[33] = { 78, nil, 212, 636, 2, },
		[34] = { 79, nil, 220, 660, 2, },
		[35] = { 80, nil, 228, 684, 2, },
		[36] = { 81, nil, 237, 710, 2, },
		[37] = { 82, nil, 246, 737, 2, },
	},
}
skills["MonsterSplitFireballSpectre"] = {
	name = "Split Fireball",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		area = true,
		fire = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("critChance", 6), 
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -50
		--"projectiles_fork" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 3, 4, 6, },
		[2] = { 5, 5, 7, },
		[3] = { 8, 6, 10, },
		[4] = { 12, 9, 14, },
		[5] = { 15, 12, 18, },
		[6] = { 19, 16, 24, },
		[7] = { 20, 17, 26, },
		[8] = { 21, 18, 28, },
		[9] = { 26, 26, 39, },
		[10] = { 30, 34, 50, },
		[11] = { 34, 43, 65, },
		[12] = { 38, 55, 82, },
		[13] = { 43, 74, 111, },
		[14] = { 45, 83, 124, },
		[15] = { 53, 129, 193, },
		[16] = { 58, 169, 253, },
		[17] = { 62, 209, 313, },
		[18] = { 63, 220, 330, },
		[19] = { 66, 257, 386, },
		[20] = { 67, 271, 406, },
		[21] = { 68, 628, 941, },
		[22] = { 69, 661, 991, },
		[23] = { 70, 695, 1043, },
		[24] = { 71, 732, 1098, },
		[25] = { 72, 770, 1155, },
		[26] = { 73, 810, 1216, },
		[27] = { 74, 852, 1279, },
		[28] = { 75, 897, 1345, },
		[29] = { 76, 943, 1414, },
		[30] = { 77, 992, 1487, },
		[31] = { 78, 1042, 1564, },
		[32] = { 79, 1096, 1644, },
		[33] = { 80, 1152, 1728, },
		[34] = { 81, 1211, 1816, },
		[35] = { 82, 1272, 1908, },
	},
}
skills["MonsterWarlordsMark"] = {
	name = "Warlord's Mark",
	hidden = true,
	color = 1,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("levelRequirement", 5), 
		skill("manaCost", 50), 
		skill("duration", 8.8), --"base_skill_effect_duration" = 8800
		--"active_skill_area_of_effect_radius_+%_final" = 0
		mod("StunRecovery", "INC", -27, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_stun_recovery_+%" = -27
		--"chance_to_be_stunned_%" = 10
		mod("SelfDamageLifeLeech", "BASE", 128, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"life_leech_on_any_damage_when_hit_permyriad" = 128
		mod("SelfDamageManaLeech", "BASE", 108, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"mana_leech_on_any_damage_when_hit_permyriad" = 108
		--"chance_to_grant_endurance_charge_on_death_%" = 37
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["NecromancerConductivity"] = {
	name = "Conductivity",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("cooldown", 10), 
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("LightningResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_lightning_damage_resistance_%"
		[3] = mod("SelfShockChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_shocked_%"
	},
	levels = {
		[1] = { 10, -20, 14, },
		[2] = { 40, -20, 14, },
		[3] = { 41, -25, 16, },
		[4] = { 57, -25, 16, },
		[5] = { 58, -30, 18, },
		[6] = { 70, -30, 18, },
		[7] = { 71, -40, 20, },
	},
}
skills["NecromancerElementalWeakness"] = {
	name = "Elemental Weakness",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("manaCost", 35), 
		skill("cooldown", 10), 
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		mod("SelfShockChance", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_shocked_%" = 0
		mod("SelfFreezeChance", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_frozen_%" = 0
		mod("SelfIgniteChance", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_ignited_%" = 0
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("ElementalResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_resist_all_elements_%"
	},
	levels = {
		[1] = { 10, -20, },
		[2] = { 39, -20, },
		[3] = { 40, -25, },
		[4] = { 55, -25, },
		[5] = { 56, -30, },
		[6] = { 70, -30, },
		[7] = { 71, -40, },
	},
}
skills["NecromancerEnfeeble"] = {
	name = "Enfeeble",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("levelRequirement", 4), 
		skill("manaCost", 35), 
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		mod("Accuracy", "INC", -40, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"accuracy_rating_+%" = -40
		mod("CritChance", "INC", -40, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"critical_strike_chance_+%" = -40
		mod("Damage", "MORE", -40, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"enfeeble_damage_+%_final" = -40
		mod("CritMultiplier", "BASE", -60, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_critical_strike_multiplier_+" = -60
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["NecromancerFlammability"] = {
	name = "Flammability",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("manaCost", 50), 
		skill("cooldown", 10), 
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("FireResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_fire_damage_resistance_%"
		[3] = mod("SelfIgniteChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_ignited_%"
	},
	levels = {
		[1] = { 10, -20, 14, },
		[2] = { 40, -20, 14, },
		[3] = { 41, -25, 16, },
		[4] = { 57, -25, 16, },
		[5] = { 58, -30, 18, },
		[6] = { 70, -30, 18, },
		[7] = { 71, -40, 20, },
	},
}
skills["NecromancerFrostbite"] = {
	name = "Frostbite",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
		cold = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("manaCost", 50), 
		skill("cooldown", 10), 
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("ColdResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_cold_damage_resistance_%"
		[3] = mod("SelfFreezeChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_frozen_%"
	},
	levels = {
		[1] = { 10, -20, 14, },
		[2] = { 40, -20, 14, },
		[3] = { 41, -25, 16, },
		[4] = { 57, -25, 16, },
		[5] = { 58, -30, 18, },
		[6] = { 70, -30, 18, },
		[7] = { 71, -40, 20, },
	},
}
skills["NecromancerProjectileWeakness"] = {
	name = "Projectile Weakness",
	hidden = true,
	color = 2,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("duration", nil), --"base_skill_effect_duration"
		[3] = mod("SelfPierceChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_pierced_%"
		--[4] = "chance_to_be_knocked_back_%"
		[5] = mod("ProjectileDamageTaken", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"projectile_damage_taken_+%"
	},
	levels = {
		[1] = { 25, 10.4, 54, 22, 32, },
		[2] = { 36, 10.4, 54, 22, 32, },
		[3] = { 47, 10.4, 54, 22, 32, },
		[4] = { 55, 10.9, 70, 24, 34, },
		[5] = { 60, 10.9, 95, 24, 34, },
	},
}
skills["NecromancerRaiseZombie"] = {
	name = "Raise Zombie",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		minion = true,
	},
	skillTypes = { [2] = true, [9] = true, [21] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [49] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, [11] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		--"alternate_minion" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("ActiveZombieLimit", "BASE", nil), --"base_number_of_zombies_allowed"
	},
	levels = {
		[1] = { 2, 3, },
		[2] = { 3, 3, },
		[3] = { 5, 3, },
		[4] = { 8, 3, },
		[5] = { 11, 3, },
		[6] = { 16, 3, },
		[7] = { 21, 3, },
		[8] = { 26, 4, },
		[9] = { 31, 4, },
		[10] = { 35, 4, },
		[11] = { 40, 5, },
		[12] = { 44, 5, },
		[13] = { 48, 5, },
		[14] = { 51, 6, },
		[15] = { 54, 6, },
		[16] = { 58, 6, },
		[17] = { 63, 6, },
	},
}
skills["NecromancerVulnerability"] = {
	name = "Vulnerability",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("levelRequirement", 1), 
		skill("manaCost", 110), 
		skill("duration", 10.9), --"base_skill_effect_duration" = 10900
		--"active_skill_area_of_effect_radius_+%_final" = 0
		mod("PhysicalDamageTaken", "INC", 50, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"physical_damage_taken_+%" = 50
		mod("DotTaken", "INC", 50, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"degen_effect_+%" = 50
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["PyroChaosFireball"] = {
	name = "Chaos Fireball",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
		area = true,
		fire = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("critChance", 6), 
		skill("cooldown", 3), 
		--"spell_maximum_action_distance_+%" = -50
		--"skill_art_variation" = 4
		--"base_is_projectile" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		[4] = skill("ChaosMin", nil), --"spell_minimum_base_chaos_damage"
		[5] = skill("ChaosMax", nil), --"spell_maximum_base_chaos_damage"
	},
	levels = {
		[1] = { 3, 3, 4, 2, 2, },
		[2] = { 5, 3, 5, 2, 3, },
		[3] = { 8, 4, 6, 3, 3, },
		[4] = { 10, 5, 7, 3, 4, },
		[5] = { 12, 6, 9, 4, 5, },
		[6] = { 14, 7, 10, 5, 6, },
		[7] = { 17, 8, 12, 6, 7, },
		[8] = { 20, 10, 15, 7, 8, },
		[9] = { 27, 15, 22, 10, 12, },
		[10] = { 28, 16, 24, 11, 13, },
		[11] = { 31, 19, 28, 12, 15, },
		[12] = { 36, 24, 36, 16, 20, },
		[13] = { 41, 31, 46, 21, 25, },
		[14] = { 49, 44, 66, 30, 37, },
		[15] = { 50, 46, 69, 31, 38, },
		[16] = { 52, 51, 76, 34, 42, },
		[17] = { 57, 63, 94, 42, 52, },
		[18] = { 63, 81, 122, 55, 67, },
		[19] = { 64, 85, 127, 57, 70, },
		[20] = { 65, 88, 132, 60, 73, },
		[21] = { 66, 92, 138, 62, 76, },
		[22] = { 67, 96, 144, 65, 79, },
		[23] = { 68, 100, 150, 67, 82, },
		[24] = { 69, 104, 156, 70, 86, },
		[25] = { 70, 108, 163, 73, 89, },
		[26] = { 71, 113, 169, 76, 93, },
		[27] = { 72, 117, 176, 79, 97, },
		[28] = { 73, 122, 183, 83, 101, },
		[29] = { 74, 127, 191, 86, 105, },
		[30] = { 75, 132, 199, 89, 109, },
		[31] = { 76, 138, 207, 93, 114, },
		[32] = { 77, 143, 215, 97, 118, },
		[33] = { 78, 149, 224, 101, 123, },
		[34] = { 79, 155, 233, 105, 128, },
		[35] = { 80, 161, 242, 109, 133, },
		[36] = { 81, 168, 252, 113, 139, },
		[37] = { 82, 175, 262, 118, 144, },
	},
}
skills["PyroFireball"] = {
	name = "Fireball",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
		area = true,
		fire = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("critChance", 6), 
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -50
		--"skill_art_variation" = 3
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 3, 5, 7, },
		[2] = { 5, 6, 9, },
		[3] = { 8, 8, 12, },
		[4] = { 10, 10, 14, },
		[5] = { 12, 11, 17, },
		[6] = { 14, 13, 20, },
		[7] = { 17, 17, 26, },
		[8] = { 20, 21, 32, },
		[9] = { 24, 28, 42, },
		[10] = { 28, 37, 55, },
		[11] = { 31, 45, 67, },
		[12] = { 36, 61, 91, },
		[13] = { 41, 82, 122, },
		[14] = { 46, 109, 163, },
		[15] = { 50, 136, 204, },
		[16] = { 52, 152, 228, },
		[17] = { 57, 199, 299, },
		[18] = { 63, 274, 411, },
		[19] = { 64, 288, 433, },
		[20] = { 65, 304, 456, },
		[21] = { 66, 320, 480, },
		[22] = { 67, 337, 506, },
		[23] = { 68, 497, 745, },
		[24] = { 69, 523, 785, },
		[25] = { 70, 551, 826, },
		[26] = { 71, 580, 869, },
		[27] = { 72, 610, 915, },
		[28] = { 73, 642, 962, },
		[29] = { 74, 675, 1012, },
		[30] = { 75, 710, 1065, },
		[31] = { 76, 747, 1120, },
		[32] = { 77, 785, 1178, },
		[33] = { 78, 825, 1238, },
		[34] = { 79, 868, 1301, },
		[35] = { 80, 912, 1368, },
		[36] = { 81, 958, 1438, },
		[37] = { 82, 1007, 1511, },
	},
}
skills["PyroSuicideExplosion"] = {
	name = "Suicide Explosion",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, [10] = true, },
	baseMods = {
		skill("castTime", 1), 
		--"is_area_damage" = 1
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"secondary_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"secondary_maximum_base_fire_damage"
		--[4] = "grant_kill_to_target_when_exploding_self"
	},
	levels = {
		[1] = { 3, 9, 14, nil, },
		[2] = { 5, 12, 18, nil, },
		[3] = { 9, 18, 27, nil, },
		[4] = { 12, 24, 37, nil, },
		[5] = { 13, 27, 40, nil, },
		[6] = { 18, 42, 62, nil, },
		[7] = { 23, 63, 94, nil, },
		[8] = { 27, 85, 128, nil, },
		[9] = { 28, 92, 138, nil, },
		[10] = { 35, 154, 231, nil, },
		[11] = { 49, 399, 599, nil, },
		[12] = { 50, 427, 640, nil, },
		[13] = { 58, 714, 1072, nil, },
		[14] = { 64, 1042, 1563, nil, },
		[15] = { 65, 1109, 1664, nil, },
		[16] = { 66, 1180, 1770, nil, },
		[17] = { 67, 1256, 1883, nil, },
		[18] = { 68, 1336, 2003, nil, },
		[19] = { 69, 1420, 2131, nil, },
		[20] = { 70, 1510, 2265, nil, },
		[21] = { 71, 1606, 2409, nil, },
		[22] = { 72, 1707, 2560, nil, },
		[23] = { 73, 1814, 2721, nil, },
		[24] = { 74, 1928, 2892, nil, },
		[25] = { 75, 2048, 3073, nil, },
		[26] = { 76, 2176, 3264, nil, },
		[27] = { 77, 2312, 3467, nil, },
		[28] = { 78, 2455, 3683, nil, },
		[29] = { 79, 2607, 3911, nil, },
		[30] = { 80, 2768, 4153, nil, },
		[31] = { 81, 2939, 4409, nil, },
		[32] = { 82, 3120, 4680, nil, },
	},
}
skills["RevenantSpellProjectileSpectre"] = {
	name = "Lightning Projectile",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
	},
	skillTypes = { [2] = true, [3] = true, [36] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 3), 
		--"monster_projectile_variation" = 7
		--"base_number_of_projectiles_in_spiral_nova" = 3
		--"projectile_spiral_nova_time_ms" = 150
		--"projectile_spiral_nova_angle" = 20
		--"projectile_spiral_nova_starting_angle_offset" = -10
		--"monster_reverse_point_blank_damage_-%_at_minimum_range" = 60
		--"base_is_projectile" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 3, 3, 7, },
		[2] = { 5, 4, 9, },
		[3] = { 8, 6, 13, },
		[4] = { 11, 8, 18, },
		[5] = { 15, 11, 26, },
		[6] = { 20, 17, 40, },
		[7] = { 24, 24, 56, },
		[8] = { 28, 33, 77, },
		[9] = { 29, 36, 83, },
		[10] = { 32, 45, 104, },
		[11] = { 36, 60, 141, },
		[12] = { 40, 81, 188, },
		[13] = { 45, 115, 268, },
		[14] = { 49, 152, 354, },
		[15] = { 50, 162, 379, },
		[16] = { 52, 186, 434, },
		[17] = { 56, 243, 568, },
		[18] = { 60, 318, 741, },
		[19] = { 64, 413, 963, },
		[20] = { 65, 441, 1028, },
		[21] = { 66, 470, 1097, },
		[22] = { 67, 502, 1170, },
		[23] = { 68, 535, 1248, },
		[24] = { 69, 571, 1331, },
		[25] = { 70, 608, 1420, },
		[26] = { 71, 649, 1514, },
		[27] = { 72, 692, 1614, },
		[28] = { 73, 737, 1720, },
		[29] = { 74, 786, 1833, },
		[30] = { 75, 837, 1953, },
		[31] = { 76, 892, 2081, },
		[32] = { 77, 950, 2217, },
		[33] = { 78, 1012, 2361, },
		[34] = { 79, 1078, 2515, },
		[35] = { 80, 1148, 2678, },
		[36] = { 81, 1222, 2851, },
		[37] = { 82, 1301, 3035, },
	},
}
skills["SeaWitchScreech"] = {
	name = "Screech",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		duration = true,
		area = true,
	},
	skillTypes = { [2] = true, },
	baseMods = {
		skill("castTime", 2.73), 
		skill("cooldown", 6.5), 
		mod("MovementSpeed", "INC", -20, 0, 0, { type = "GlobalEffect", effectType = "Debuff" }), --"base_movement_velocity_+%" = -20
		skill("duration", 1.9), --"base_skill_effect_duration" = 1900
		--"is_area_damage" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[3] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 3, 1, 2, },
		[2] = { 5, 1, 2, },
		[3] = { 6, 2, 2, },
		[4] = { 8, 2, 3, },
		[5] = { 10, 2, 3, },
		[6] = { 13, 3, 4, },
		[7] = { 17, 4, 6, },
		[8] = { 20, 5, 8, },
		[9] = { 24, 7, 10, },
		[10] = { 27, 8, 13, },
		[11] = { 29, 10, 14, },
		[12] = { 35, 14, 21, },
		[13] = { 42, 22, 33, },
		[14] = { 49, 33, 50, },
		[15] = { 51, 37, 56, },
		[16] = { 58, 56, 83, },
		[17] = { 64, 77, 116, },
		[18] = { 65, 82, 123, },
		[19] = { 66, 86, 130, },
		[20] = { 67, 91, 137, },
		[21] = { 68, 223, 347, },
		[22] = { 69, 235, 366, },
		[23] = { 70, 248, 386, },
		[24] = { 71, 262, 407, },
		[25] = { 72, 276, 430, },
		[26] = { 73, 291, 453, },
		[27] = { 74, 307, 478, },
		[28] = { 75, 324, 504, },
		[29] = { 76, 341, 531, },
		[30] = { 77, 360, 560, },
		[31] = { 78, 379, 590, },
		[32] = { 79, 400, 622, },
		[33] = { 80, 421, 655, },
		[34] = { 81, 444, 690, },
		[35] = { 82, 467, 727, },
	},
}
skills["SeaWitchWave"] = {
	name = "Wave",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
	},
	skillTypes = { [2] = true, [10] = true, [26] = true, },
	baseMods = {
		skill("castTime", 1.5), 
		skill("manaCost", 6), 
		skill("critChance", 5), 
		--"base_is_projectile" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[3] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 4, 6, 10, },
		[2] = { 6, 8, 12, },
		[3] = { 9, 10, 16, },
		[4] = { 12, 13, 20, },
		[5] = { 13, 14, 22, },
		[6] = { 14, 16, 23, },
		[7] = { 15, 17, 25, },
		[8] = { 18, 21, 31, },
		[9] = { 22, 27, 41, },
		[10] = { 25, 33, 49, },
		[11] = { 29, 42, 63, },
		[12] = { 31, 47, 71, },
		[13] = { 34, 56, 84, },
		[14] = { 38, 70, 105, },
		[15] = { 39, 74, 111, },
		[16] = { 40, 78, 117, },
		[17] = { 43, 91, 137, },
		[18] = { 49, 125, 187, },
		[19] = { 56, 176, 265, },
		[20] = { 58, 194, 292, },
		[21] = { 59, 204, 306, },
		[22] = { 60, 214, 321, },
		[23] = { 63, 247, 370, },
		[24] = { 66, 284, 427, },
		[25] = { 67, 298, 447, },
		[26] = { 68, 874, 1312, },
		[27] = { 69, 916, 1374, },
		[28] = { 70, 959, 1439, },
		[29] = { 71, 1004, 1507, },
		[30] = { 72, 1052, 1577, },
		[31] = { 73, 1101, 1651, },
		[32] = { 74, 1152, 1728, },
		[33] = { 75, 1206, 1809, },
		[34] = { 76, 1262, 1893, },
		[35] = { 77, 1320, 1980, },
		[36] = { 78, 1381, 2072, },
		[37] = { 79, 1445, 2167, },
		[38] = { 80, 1511, 2266, },
		[39] = { 81, 1580, 2370, },
		[40] = { 82, 1652, 2478, },
	},
}
skills["SkeletonMassBowProjectile"] = {
	name = "Puncture",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		melee = true,
		projectile = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, [10] = true, [57] = true, },
	baseMods = {
		skill("castTime", 1.5), 
		--"monster_projectile_variation" = 12
		--"spell_maximum_action_distance_+%" = -50
		mod("ProjectileSpeed", "INC", 200), --"base_projectile_speed_+%" = 200
		--"base_bleed_on_hit_moving_%_of_physical_damage_to_deal_per_minute" = 3000
		skill("bleedBasePercent", 10), --"base_bleed_on_hit_still_%_of_physical_damage_to_deal_per_minute" = 600
		--"bleed_on_hit_base_duration" = 5000
		--"base_is_projectile" = ?
		mod("BleedChance", "BASE", 100), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
	},
	levels = {
		[1] = { 2, },
		[2] = { 6, },
		[3] = { 10, },
		[4] = { 14, },
		[5] = { 18, },
		[6] = { 22, },
		[7] = { 26, },
		[8] = { 30, },
		[9] = { 34, },
		[10] = { 38, },
		[11] = { 42, },
		[12] = { 46, },
		[13] = { 50, },
		[14] = { 54, },
		[15] = { 58, },
		[16] = { 61, },
		[17] = { 63, },
		[18] = { 66, },
		[19] = { 67, },
		[20] = { 68, },
		[21] = { 69, },
		[22] = { 70, },
		[23] = { 71, },
		[24] = { 72, },
		[25] = { 73, },
		[26] = { 74, },
		[27] = { 75, },
		[28] = { 76, },
		[29] = { 77, },
		[30] = { 78, },
		[31] = { 79, },
		[32] = { 80, },
		[33] = { 81, },
		[34] = { 82, },
	},
}
skills["SkeletonSpark"] = {
	name = "Spark",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.65), 
		skill("damageEffectiveness", 0.7), 
		skill("critChance", 5), 
		skill("duration", 3.5), --"base_skill_effect_duration" = 3500
		--"base_is_projectile" = 1
		mod("ProjectileCount", "BASE", 2), --"number_of_additional_projectiles" = 2
		--"skill_art_variation" = 1
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 4, 50, 2, 6, },
		[2] = { 8, 48, 3, 9, },
		[3] = { 11, 45, 4, 11, },
		[4] = { 15, 45, 5, 15, },
		[5] = { 20, 44, 7, 21, },
		[6] = { 28, 41, 11, 34, },
		[7] = { 29, 40, 12, 36, },
		[8] = { 31, 40, 14, 41, },
		[9] = { 32, 40, 14, 43, },
		[10] = { 34, 40, 16, 48, },
		[11] = { 37, 40, 19, 56, },
		[12] = { 40, 40, 22, 65, },
		[13] = { 42, 40, 24, 72, },
		[14] = { 44, 40, 26, 79, },
		[15] = { 50, 40, 35, 105, },
		[16] = { 51, 40, 37, 110, },
		[17] = { 52, 40, 38, 115, },
		[18] = { 63, 40, 63, 189, },
		[19] = { 65, 40, 69, 206, },
		[20] = { 66, 40, 72, 215, },
		[21] = { 67, 40, 75, 225, },
		[22] = { 68, 40, 351, 1052, },
		[23] = { 69, 40, 366, 1098, },
		[24] = { 70, 40, 382, 1146, },
		[25] = { 71, 40, 398, 1195, },
		[26] = { 72, 40, 416, 1247, },
		[27] = { 73, 40, 434, 1301, },
		[28] = { 74, 40, 452, 1356, },
		[29] = { 75, 40, 471, 1414, },
		[30] = { 76, 40, 492, 1475, },
		[31] = { 77, 40, 512, 1537, },
		[32] = { 78, 40, 534, 1602, },
		[33] = { 79, 40, 557, 1670, },
		[34] = { 80, 40, 580, 1740, },
		[35] = { 81, 40, 604, 1813, },
		[36] = { 82, 40, 629, 1888, },
	},
}
skills["SkeletonTemporalChains"] = {
	name = "Temporal Chains",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("levelRequirement", 0), 
		skill("manaCost", 20), 
		skill("duration", 4), --"base_skill_effect_duration" = 4000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"temporal_chains_action_speed_+%_final" = -20
		mod("BuffExpireFaster", "MORE", -40, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"buff_time_passed_-%" = 40
		--"skill_art_variation" = 0
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["SkeletonVulnerability"] = {
	name = "Vulnerability",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("levelRequirement", 1), 
		skill("manaCost", 110), 
		skill("duration", 10.9), --"base_skill_effect_duration" = 10900
		--"active_skill_area_of_effect_radius_+%_final" = 0
		mod("PhysicalDamageTaken", "INC", 50, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"physical_damage_taken_+%" = 50
		mod("DotTaken", "INC", 50, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"degen_effect_+%" = 50
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["SnakeSpineProjectile"] = {
	name = "Spine Attack",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		projectile = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, [10] = true, [57] = true, },
	baseMods = {
		skill("castTime", 1.5), 
		skill("levelRequirement", 1), 
		--"monster_projectile_variation" = 2
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -60
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["UndyingWhirlingBlades"] = {
	name = "Whirling Blades",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		melee = true,
		movement = true,
	},
	skillTypes = { [1] = true, [6] = true, [24] = true, [38] = true, },
	weaponTypes = {
		["Claw"] = true,
		["Dagger"] = true,
		["One Handed Sword"] = true,
	},
	baseMods = {
		skill("castTime", 2.6), 
		skill("levelRequirement", 0), 
		skill("manaCost", 50), 
		--"skill_art_variation" = 1
		mod("Damage", "MORE", -40, ModFlag.Hit), --"active_skill_damage_+%_final" = -40
		--"monster_flurry" = 1
		skill("castTimeOverridesAttackTime", true), --"cast_time_overrides_attack_duration" = ?
		--"ignores_proximity_shield" = ?
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}