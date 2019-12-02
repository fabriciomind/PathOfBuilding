-- Path of Building
--
-- Minion active skills
-- Skill data (c) Grinding Gear Games
--
local skills, mod, flag, skill = ...

skills["ChaosElementalCascadeSummoned"] = {
	name = "Cascade",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		cold = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.6), 
		skill("cooldown", 3.5), 
		--"upheaval_number_of_spikes" = 6
		mod("Speed", "INC", 0, ModFlag.Cast), --"base_cast_speed_+%" = 0
		--"skill_art_variation" = 3
		mod("PhysicalDamageConvertToChaos", "BASE", 50, 0, 0, nil), --"base_physical_damage_%_to_convert_to_chaos" = 50
		--"monster_penalty_against_minions_damage_+%_final_vs_player_minions" = -25
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
		[1] = { 4, 9, 13, },
		[2] = { 7, 12, 18, },
		[3] = { 9, 14, 22, },
		[4] = { 12, 19, 28, },
		[5] = { 16, 26, 39, },
		[6] = { 20, 35, 52, },
		[7] = { 27, 55, 83, },
		[8] = { 28, 59, 89, },
		[9] = { 29, 63, 94, },
		[10] = { 32, 76, 114, },
		[11] = { 36, 96, 145, },
		[12] = { 40, 122, 182, },
		[13] = { 45, 161, 242, },
		[14] = { 49, 201, 301, },
		[15] = { 50, 212, 318, },
		[16] = { 52, 236, 354, },
		[17] = { 56, 292, 438, },
		[18] = { 60, 360, 539, },
		[19] = { 64, 441, 662, },
		[20] = { 65, 464, 696, },
		[21] = { 66, 488, 733, },
		[22] = { 67, 514, 770, },
		[23] = { 68, 540, 810, },
		[24] = { 69, 568, 852, },
		[25] = { 70, 597, 895, },
		[26] = { 71, 627, 941, },
		[27] = { 72, 659, 989, },
		[28] = { 73, 693, 1039, },
		[29] = { 74, 728, 1091, },
		[30] = { 75, 764, 1146, },
		[31] = { 76, 803, 1204, },
		[32] = { 77, 843, 1264, },
		[33] = { 78, 885, 1328, },
		[34] = { 79, 929, 1394, },
		[35] = { 80, 975, 1463, },
		[36] = { 81, 1024, 1535, },
		[37] = { 82, 1074, 1611, },
	},
}
skills["SandstormChaosElementalSummoned"] = {
	name = "Chaos Aura",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		duration = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 8), 
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"skill_art_variation" = 2
		--"is_area_damage" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("ChaosDot", nil), --"base_chaos_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 3, 14.533333333333, },
		[2] = { 5, 17.383333333333, },
		[3] = { 8, 21.95, },
		[4] = { 11, 26.95, },
		[5] = { 15, 34.3, },
		[6] = { 20, 44.75, },
		[7] = { 24, 54.183333333333, },
		[8] = { 28, 64.7, },
		[9] = { 29, 67.516666666667, },
		[10] = { 32, 76.383333333333, },
		[11] = { 36, 89.366666666667, },
		[12] = { 40, 103.75, },
		[13] = { 45, 123.9, },
		[14] = { 49, 141.93333333333, },
		[15] = { 50, 146.73333333333, },
		[16] = { 52, 156.7, },
		[17] = { 56, 178.11666666667, },
		[18] = { 60, 201.73333333333, },
		[19] = { 64, 227.73333333333, },
		[20] = { 65, 234.63333333333, },
		[21] = { 66, 241.68333333333, },
		[22] = { 67, 248.91666666667, },
		[23] = { 68, 256.31666666667, },
		[24] = { 69, 263.9, },
		[25] = { 70, 271.65, },
		[26] = { 71, 279.6, },
		[27] = { 72, 287.73333333333, },
		[28] = { 73, 296.05, },
		[29] = { 74, 304.58333333333, },
		[30] = { 75, 313.3, },
		[31] = { 76, 322.21666666667, },
		[32] = { 77, 331.35, },
		[33] = { 78, 340.7, },
		[34] = { 79, 350.26666666667, },
		[35] = { 80, 360.06666666667, },
		[36] = { 81, 370.08333333333, },
		[37] = { 82, 380.33333333333, },
	},
}
skills["FireElementalFlameRedSummoned"] = {
	name = "Immolate",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
		fire = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [12] = true, [17] = true, [19] = true, [30] = true, [33] = true, },
	skillTotemId = 8,
	baseMods = {
		skill("castTime", 0.25), 
		skill("damageEffectiveness", 0.2), 
		--"skill_art_variation" = 4
		mod("Speed", "MORE", -89, ModFlag.Cast), --"active_skill_cast_speed_+%_final" = -89
		--"spell_maximum_action_distance_+%" = -77
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
	},
	levels = {
		[1] = { 3, 6, 8, },
		[2] = { 5, 7, 11, },
		[3] = { 8, 10, 14, },
		[4] = { 12, 14, 21, },
		[5] = { 15, 18, 27, },
		[6] = { 19, 24, 37, },
		[7] = { 20, 26, 39, },
		[8] = { 21, 28, 42, },
		[9] = { 26, 40, 61, },
		[10] = { 30, 53, 79, },
		[11] = { 34, 69, 103, },
		[12] = { 38, 88, 133, },
		[13] = { 43, 120, 180, },
		[14] = { 45, 135, 203, },
		[15] = { 53, 215, 323, },
		[16] = { 58, 285, 428, },
		[17] = { 62, 356, 534, },
		[18] = { 63, 376, 565, },
		[19] = { 66, 443, 665, },
		[20] = { 67, 468, 702, },
		[21] = { 68, 494, 741, },
		[22] = { 69, 522, 782, },
		[23] = { 70, 550, 825, },
		[24] = { 71, 581, 871, },
		[25] = { 72, 612, 919, },
		[26] = { 73, 646, 969, },
		[27] = { 74, 681, 1022, },
		[28] = { 75, 718, 1078, },
		[29] = { 76, 757, 1136, },
		[30] = { 77, 798, 1198, },
		[31] = { 78, 841, 1262, },
		[32] = { 79, 887, 1330, },
		[33] = { 80, 934, 1402, },
		[34] = { 81, 985, 1477, },
		[35] = { 82, 1037, 1556, },
	},
}
skills["FireElementalMortarSummoned"] = {
	name = "Magma Ball",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
		area = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("critChance", 5), 
		skill("cooldown", 6), 
		--"monster_projectile_variation" = 3
		--"projectile_spread_radius" = 15
		--"spell_maximum_action_distance_+%" = -33
		--"is_area_damage" = ?
		--"base_is_projectile" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 34, 152, 228, },
		[2] = { 36, 170, 254, },
		[3] = { 38, 188, 283, },
		[4] = { 40, 209, 314, },
		[5] = { 42, 232, 347, },
		[6] = { 44, 256, 384, },
		[7] = { 46, 283, 425, },
		[8] = { 48, 312, 468, },
		[9] = { 50, 344, 516, },
		[10] = { 52, 379, 568, },
		[11] = { 54, 416, 625, },
		[12] = { 56, 457, 686, },
		[13] = { 58, 502, 753, },
		[14] = { 60, 550, 826, },
		[15] = { 62, 603, 904, },
		[16] = { 64, 660, 990, },
		[17] = { 66, 722, 1083, },
		[18] = { 68, 789, 1184, },
		[19] = { 69, 825, 1237, },
		[20] = { 70, 862, 1293, },
		[21] = { 72, 941, 1412, },
		[22] = { 74, 1027, 1540, },
		[23] = { 76, 1120, 1680, },
		[24] = { 78, 1220, 1831, },
		[25] = { 80, 1329, 1994, },
		[26] = { 82, 1447, 2171, },
		[27] = { 84, 1575, 2363, },
		[28] = { 86, 1713, 2570, },
		[29] = { 88, 1863, 2794, },
		[30] = { 90, 2025, 3037, },
	},
}
skills["FireElementalConeSummoned"] = {
	name = "Flame Wave",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.935), 
		skill("critChance", 10), 
		skill("cooldown", 2), 
		--"is_area_damage" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 34, 106, 165, },
		[2] = { 36, 117, 184, },
		[3] = { 38, 131, 204, },
		[4] = { 40, 145, 226, },
		[5] = { 42, 160, 250, },
		[6] = { 44, 177, 277, },
		[7] = { 46, 196, 306, },
		[8] = { 48, 216, 337, },
		[9] = { 50, 237, 371, },
		[10] = { 52, 261, 408, },
		[11] = { 54, 287, 448, },
		[12] = { 56, 315, 492, },
		[13] = { 58, 346, 540, },
		[14] = { 60, 379, 592, },
		[15] = { 62, 415, 648, },
		[16] = { 64, 454, 709, },
		[17] = { 66, 496, 775, },
		[18] = { 68, 542, 847, },
		[19] = { 69, 566, 885, },
		[20] = { 70, 592, 924, },
		[21] = { 72, 645, 1008, },
		[22] = { 74, 704, 1100, },
		[23] = { 76, 767, 1198, },
		[24] = { 78, 835, 1305, },
		[25] = { 80, 909, 1421, },
		[26] = { 82, 990, 1546, },
		[27] = { 84, 1076, 1682, },
		[28] = { 86, 1170, 1828, },
		[29] = { 88, 1271, 1987, },
		[30] = { 90, 1381, 2158, },
	},
}
skills["IceElementalIceCyclone"] = {
	name = "Cyclone",
	hidden = true,
	color = 2,
	baseFlags = {
		attack = true,
		area = true,
		melee = true,
		movement = true,
	},
	skillTypes = { [1] = true, [6] = true, [11] = true, [24] = true, [38] = true, },
	weaponTypes = {
		["None"] = true,
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
		skill("levelRequirement", 1), 
		skill("cooldown", 6), 
		--"skill_art_variation" = 4
		mod("MovementSpeed", "MORE", 75), --"cyclone_movement_speed_+%_final" = 75
		--"cyclone_extra_distance" = 40
		mod("Damage", "MORE", -20, ModFlag.Hit), --"active_skill_damage_+%_final" = -20
		skill("duration", 4), --"base_skill_effect_duration" = 4000
		--"is_area_damage" = ?
		--"cyclone_places_ground_ice" = ?
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["IceElementalSpearSummoned"] = {
	name = "Ice Spear",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
	},
	skillTypes = { [3] = true, [2] = true, [17] = true, [18] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 4), 
		--"monster_reverse_point_blank_damage_-%_at_minimum_range" = 25
		--"base_is_projectile" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[3] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 3, 10, 15, },
		[2] = { 5, 12, 18, },
		[3] = { 8, 16, 24, },
		[4] = { 11, 21, 31, },
		[5] = { 15, 28, 42, },
		[6] = { 20, 40, 60, },
		[7] = { 24, 51, 77, },
		[8] = { 28, 65, 97, },
		[9] = { 29, 69, 103, },
		[10] = { 32, 81, 122, },
		[11] = { 36, 101, 152, },
		[12] = { 40, 125, 187, },
		[13] = { 45, 161, 241, },
		[14] = { 49, 196, 293, },
		[15] = { 50, 205, 308, },
		[16] = { 52, 226, 339, },
		[17] = { 56, 273, 409, },
		[18] = { 60, 328, 493, },
		[19] = { 64, 394, 591, },
		[20] = { 65, 412, 618, },
		[21] = { 66, 431, 646, },
		[22] = { 67, 450, 676, },
		[23] = { 68, 471, 706, },
		[24] = { 69, 492, 738, },
		[25] = { 70, 514, 772, },
		[26] = { 71, 537, 806, },
		[27] = { 72, 562, 842, },
		[28] = { 73, 587, 880, },
		[29] = { 74, 613, 919, },
		[30] = { 75, 640, 960, },
		[31] = { 76, 668, 1002, },
		[32] = { 77, 698, 1046, },
		[33] = { 78, 728, 1092, },
		[34] = { 79, 760, 1140, },
		[35] = { 80, 793, 1190, },
		[36] = { 81, 828, 1241, },
		[37] = { 82, 864, 1295, },
	},
}
skills["LightningGolemArcSummoned"] = {
	name = "Storm Orb",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		lightning = true,
		duration = true,
	},
	skillTypes = { [12] = true, [35] = true, [3] = true, [14] = true, [2] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.6), 
		skill("critChance", 5), 
		skill("cooldown", 8), 
		skill("duration", 8), --"base_skill_effect_duration" = 8000
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 1, 1, 8, },
		[2] = { 2, 1, 9, },
		[3] = { 4, 1, 11, },
		[4] = { 7, 2, 14, },
		[5] = { 10, 2, 18, },
		[6] = { 13, 2, 22, },
		[7] = { 16, 3, 27, },
		[8] = { 19, 4, 32, },
		[9] = { 22, 4, 39, },
		[10] = { 25, 5, 46, },
		[11] = { 28, 6, 54, },
		[12] = { 31, 7, 62, },
		[13] = { 34, 8, 72, },
		[14] = { 36, 9, 80, },
		[15] = { 38, 10, 88, },
		[16] = { 40, 11, 96, },
		[17] = { 42, 12, 105, },
		[18] = { 44, 13, 115, },
		[19] = { 46, 14, 126, },
		[20] = { 48, 15, 137, },
		[21] = { 50, 17, 149, },
		[22] = { 52, 18, 162, },
		[23] = { 54, 20, 176, },
		[24] = { 56, 21, 191, },
		[25] = { 58, 23, 208, },
		[26] = { 60, 25, 225, },
		[27] = { 62, 27, 244, },
		[28] = { 64, 29, 264, },
		[29] = { 66, 32, 285, },
		[30] = { 68, 34, 308, },
		[31] = { 69, 36, 320, },
		[32] = { 70, 37, 333, },
		[33] = { 72, 40, 359, },
		[34] = { 74, 43, 387, },
		[35] = { 76, 46, 417, },
		[36] = { 78, 50, 449, },
		[37] = { 80, 54, 484, },
		[38] = { 82, 58, 521, },
		[39] = { 84, 62, 560, },
		[40] = { 86, 67, 602, },
		[41] = { 88, 72, 647, },
		[42] = { 90, 77, 695, },
	},
}
skills["MonsterProjectileSpellLightningGolemSummoned"] = {
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
		skill("critChance", 5), 
		--"monster_projectile_variation" = 11
		mod("Speed", "MORE", -15, ModFlag.Cast), --"active_skill_cast_speed_+%_final" = -15
		--"spell_maximum_action_distance_+%" = -40
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
		[1] = { 1, 2, 18, },
		[2] = { 2, 2, 21, },
		[3] = { 4, 3, 26, },
		[4] = { 7, 4, 35, },
		[5] = { 10, 5, 45, },
		[6] = { 13, 6, 58, },
		[7] = { 16, 8, 72, },
		[8] = { 19, 10, 89, },
		[9] = { 22, 12, 108, },
		[10] = { 25, 15, 131, },
		[11] = { 28, 17, 157, },
		[12] = { 31, 21, 187, },
		[13] = { 34, 25, 221, },
		[14] = { 36, 27, 247, },
		[15] = { 38, 31, 275, },
		[16] = { 40, 34, 306, },
		[17] = { 42, 38, 340, },
		[18] = { 44, 42, 378, },
		[19] = { 46, 46, 418, },
		[20] = { 48, 51, 463, },
		[21] = { 50, 57, 511, },
		[22] = { 52, 63, 565, },
		[23] = { 54, 69, 623, },
		[24] = { 56, 76, 686, },
		[25] = { 58, 84, 755, },
		[26] = { 60, 92, 830, },
		[27] = { 62, 101, 912, },
		[28] = { 64, 111, 1001, },
		[29] = { 66, 122, 1098, },
		[30] = { 68, 134, 1204, },
		[31] = { 69, 140, 1261, },
		[32] = { 70, 147, 1319, },
		[33] = { 72, 161, 1445, },
		[34] = { 74, 176, 1581, },
		[35] = { 76, 192, 1729, },
		[36] = { 78, 210, 1889, },
		[37] = { 80, 229, 2064, },
		[38] = { 82, 250, 2254, },
		[39] = { 84, 273, 2460, },
		[40] = { 86, 298, 2683, },
		[41] = { 88, 325, 2926, },
		[42] = { 90, 354, 3189, },
	},
}
skills["LightningGolemWrath"] = {
	name = "Wrath",
	hidden = true,
	color = 3,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [16] = true, [44] = true, [35] = true, [12] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("cooldown", 12), 
		skill("duration", 4), --"base_skill_effect_duration" = 4000
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("LightningMin", "BASE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Aura" }), --"attack_minimum_added_lightning_damage"
		[3] = mod("LightningMax", "BASE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Aura" }), --"attack_maximum_added_lightning_damage"
		[4] = mod("LightningMin", "BASE", nil, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Aura" }), --"spell_minimum_added_lightning_damage"
		[5] = mod("LightningMax", "BASE", nil, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Aura" }), --"spell_maximum_added_lightning_damage"
	},
	levels = {
		[1] = { 1, 1, 1, 1, 1, },
		[2] = { 8, 1, 2, 1, 1, },
		[3] = { 16, 1, 4, 1, 2, },
		[4] = { 24, 1, 6, 1, 3, },
		[5] = { 34, 1, 9, 1, 5, },
		[6] = { 36, 1, 10, 1, 6, },
		[7] = { 38, 1, 10, 1, 6, },
		[8] = { 40, 1, 11, 1, 7, },
		[9] = { 42, 1, 12, 1, 7, },
		[10] = { 44, 1, 13, 1, 8, },
		[11] = { 46, 2, 14, 1, 9, },
		[12] = { 48, 2, 15, 1, 9, },
		[13] = { 50, 2, 17, 1, 10, },
		[14] = { 52, 2, 18, 1, 11, },
		[15] = { 54, 2, 19, 1, 12, },
		[16] = { 56, 2, 21, 1, 12, },
		[17] = { 58, 2, 22, 1, 13, },
		[18] = { 60, 3, 24, 2, 14, },
		[19] = { 62, 3, 25, 2, 15, },
		[20] = { 64, 3, 27, 2, 16, },
		[21] = { 66, 3, 29, 2, 17, },
		[22] = { 68, 3, 31, 2, 19, },
		[23] = { 69, 4, 32, 2, 19, },
		[24] = { 70, 4, 33, 2, 20, },
		[25] = { 72, 4, 35, 2, 21, },
		[26] = { 74, 4, 37, 2, 22, },
		[27] = { 76, 4, 40, 3, 24, },
		[28] = { 78, 5, 42, 3, 25, },
		[29] = { 80, 5, 45, 3, 27, },
		[30] = { 82, 5, 48, 3, 29, },
		[31] = { 84, 6, 51, 3, 31, },
		[32] = { 86, 6, 54, 4, 33, },
		[33] = { 88, 6, 58, 4, 35, },
		[34] = { 90, 7, 61, 4, 37, },
	},
}
skills["PlayerRagingSpiritMeleeAttack"] = {
	name = "Melee Attack",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		melee = true,
	},
	skillTypes = { [1] = true, [48] = true, [6] = true, [3] = true, [25] = true, [28] = true, [24] = true, },
	baseMods = {
		skill("castTime", 1), 
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Hit), --"active_skill_damage_+%_final"
	},
	levels = {
		[1] = { 4, 76, },
		[2] = { 6, 75, },
		[3] = { 9, 74, },
		[4] = { 12, 73, },
		[5] = { 15, 72, },
		[6] = { 19, 71, },
		[7] = { 23, 70, },
		[8] = { 28, 69, },
		[9] = { 33, 68, },
		[10] = { 39, 67, },
		[11] = { 43, 66, },
		[12] = { 46, 65, },
		[13] = { 49, 64, },
		[14] = { 52, 63, },
		[15] = { 55, 62, },
		[16] = { 58, 61, },
		[17] = { 61, 60, },
		[18] = { 64, 59, },
		[19] = { 66, 58, },
		[20] = { 68, 57, },
		[21] = { 70, 56, },
		[22] = { 72, 55, },
		[23] = { 74, 54, },
		[24] = { 76, 53, },
		[25] = { 78, 52, },
		[26] = { 80, 51, },
		[27] = { 82, 50, },
		[28] = { 84, 49, },
		[29] = { 86, 48, },
		[30] = { 88, 47, },
	},
}
skills["SkeletonProjectileCold"] = {
	name = "Cold Projectile",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
	},
	skillTypes = { [2] = true, [10] = true, [26] = true, [3] = true, },
	baseMods = {
		skill("castTime", 1.95), 
		skill("critChance", 5), 
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -60
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 4, 5, 3, 5, },
		[2] = { 7, 5, 4, 6, },
		[3] = { 10, 5, 6, 8, },
		[4] = { 15, 5, 8, 13, },
		[5] = { 19, 4, 11, 17, },
		[6] = { 20, 4, 12, 18, },
		[7] = { 25, 4, 17, 26, },
		[8] = { 28, 4, 21, 32, },
		[9] = { 29, 4, 22, 34, },
		[10] = { 30, 4, 24, 36, },
		[11] = { 33, 4, 29, 43, },
		[12] = { 34, 4, 31, 46, },
		[13] = { 37, 4, 37, 55, },
		[14] = { 39, 4, 42, 62, },
		[15] = { 43, 4, 53, 79, },
		[16] = { 44, 4, 56, 84, },
		[17] = { 47, 4, 66, 99, },
		[18] = { 48, 4, 70, 105, },
		[19] = { 51, 4, 82, 124, },
		[20] = { 58, 4, 121, 181, },
		[21] = { 61, 4, 141, 212, },
		[22] = { 62, 4, 149, 223, },
		[23] = { 63, 4, 157, 236, },
		[24] = { 64, 4, 165, 248, },
		[25] = { 65, 4, 174, 261, },
		[26] = { 66, 4, 184, 275, },
		[27] = { 67, 4, 193, 290, },
		[28] = { 68, 4, 687, 1071, },
		[29] = { 69, 4, 723, 1128, },
		[30] = { 70, 4, 761, 1187, },
		[31] = { 71, 4, 801, 1249, },
		[32] = { 72, 4, 843, 1315, },
		[33] = { 73, 4, 887, 1383, },
		[34] = { 74, 4, 933, 1455, },
		[35] = { 75, 4, 981, 1530, },
		[36] = { 76, 4, 1032, 1609, },
		[37] = { 77, 4, 1085, 1692, },
		[38] = { 78, 4, 1141, 1779, },
		[39] = { 79, 4, 1200, 1870, },
		[40] = { 80, 4, 1261, 1966, },
		[41] = { 81, 4, 1325, 2066, },
		[42] = { 82, 4, 1393, 2171, },
	},
}
skills["SkeletonProjectileFire"] = {
	name = "Fire Projectile",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
	},
	skillTypes = { [2] = true, [10] = true, [26] = true, [3] = true, },
	baseMods = {
		skill("castTime", 1.95), 
		skill("critChance", 5), 
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -60
	},
	qualityMods = {
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 4, 5, 4, 6, },
		[2] = { 7, 5, 5, 8, },
		[3] = { 10, 5, 7, 10, },
		[4] = { 15, 5, 10, 15, },
		[5] = { 19, 4, 14, 21, },
		[6] = { 20, 4, 15, 22, },
		[7] = { 25, 4, 21, 32, },
		[8] = { 28, 4, 26, 39, },
		[9] = { 29, 4, 27, 41, },
		[10] = { 30, 4, 29, 44, },
		[11] = { 33, 4, 35, 53, },
		[12] = { 34, 4, 38, 56, },
		[13] = { 37, 4, 45, 68, },
		[14] = { 39, 4, 51, 76, },
		[15] = { 43, 4, 64, 96, },
		[16] = { 44, 4, 68, 102, },
		[17] = { 47, 4, 81, 121, },
		[18] = { 48, 4, 85, 128, },
		[19] = { 51, 4, 101, 151, },
		[20] = { 58, 4, 147, 221, },
		[21] = { 61, 4, 173, 259, },
		[22] = { 62, 4, 182, 273, },
		[23] = { 63, 4, 192, 288, },
		[24] = { 64, 4, 202, 303, },
		[25] = { 65, 4, 213, 320, },
		[26] = { 66, 4, 224, 337, },
		[27] = { 67, 4, 236, 354, },
		[28] = { 68, 4, 840, 1309, },
		[29] = { 69, 4, 884, 1378, },
		[30] = { 70, 4, 930, 1451, },
		[31] = { 71, 4, 979, 1527, },
		[32] = { 72, 4, 1030, 1607, },
		[33] = { 73, 4, 1084, 1690, },
		[34] = { 74, 4, 1140, 1778, },
		[35] = { 75, 4, 1200, 1870, },
		[36] = { 76, 4, 1262, 1967, },
		[37] = { 77, 4, 1327, 2068, },
		[38] = { 78, 4, 1395, 2175, },
		[39] = { 79, 4, 1466, 2286, },
		[40] = { 80, 4, 1541, 2403, },
		[41] = { 81, 4, 1620, 2525, },
		[42] = { 82, 4, 1702, 2654, },
	},
}
skills["SkeletonProjectileLightning"] = {
	name = "Lightning Projectile",
	hidden = true,
	color = 4,
	baseFlags = {
		spell = true,
		projectile = true,
	},
	skillTypes = { [2] = true, [10] = true, [26] = true, [3] = true, },
	baseMods = {
		skill("castTime", 1.95), 
		skill("critChance", 5), 
		--"base_is_projectile" = 1
		--"spell_maximum_action_distance_+%" = -60
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
		[1] = { 4, 5, 3, 8, },
		[2] = { 7, 5, 4, 11, },
		[3] = { 10, 5, 5, 14, },
		[4] = { 15, 5, 7, 22, },
		[5] = { 19, 4, 10, 29, },
		[6] = { 20, 4, 10, 31, },
		[7] = { 25, 4, 15, 45, },
		[8] = { 28, 4, 18, 54, },
		[9] = { 29, 4, 19, 58, },
		[10] = { 30, 4, 21, 62, },
		[11] = { 31, 4, 22, 66, },
		[12] = { 34, 4, 26, 79, },
		[13] = { 37, 4, 32, 95, },
		[14] = { 39, 4, 36, 107, },
		[15] = { 43, 4, 45, 136, },
		[16] = { 44, 4, 48, 144, },
		[17] = { 47, 4, 57, 170, },
		[18] = { 48, 4, 60, 180, },
		[19] = { 51, 4, 71, 213, },
		[20] = { 52, 4, 75, 225, },
		[21] = { 58, 4, 104, 311, },
		[22] = { 62, 4, 128, 384, },
		[23] = { 63, 4, 135, 405, },
		[24] = { 64, 4, 142, 427, },
		[25] = { 65, 4, 150, 449, },
		[26] = { 66, 4, 158, 473, },
		[27] = { 67, 4, 166, 498, },
		[28] = { 68, 4, 409, 1221, },
		[29] = { 69, 4, 431, 1285, },
		[30] = { 70, 4, 454, 1353, },
		[31] = { 71, 4, 477, 1424, },
		[32] = { 72, 4, 502, 1498, },
		[33] = { 73, 4, 529, 1577, },
		[34] = { 74, 4, 556, 1658, },
		[35] = { 75, 4, 585, 1744, },
		[36] = { 76, 4, 615, 1834, },
		[37] = { 77, 4, 647, 1929, },
		[38] = { 78, 4, 680, 2028, },
		[39] = { 79, 4, 715, 2132, },
		[40] = { 80, 4, 751, 2241, },
		[41] = { 81, 4, 790, 2355, },
		[42] = { 82, 4, 830, 2475, },
	},
}
skills["RockGolemSlam"] = {
	name = "Slam",
	hidden = true,
	color = 1,
	baseFlags = {
		attack = true,
		area = true,
	},
	skillTypes = { [1] = true, [11] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("levelRequirement", 1), 
		mod("Damage", "MORE", 75, ModFlag.Attack), 
		skill("cooldown", 6), 
		mod("Speed", "MORE", -20, ModFlag.Attack), --"active_skill_attack_speed_+%_final" = -20
		--"chance_to_taunt_on_hit_%" = 33
		--"skill_art_variation" = 1
		--"active_skill_area_of_effect_radius_+%_final" = 0
		--"is_area_damage" = ?
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["RockGolemWhirlingBlades"] = {
	name = "Roll",
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
		skill("levelRequirement", 1), 
		--"skill_sound_variation" = 1
		mod("Speed", "MORE", -50, ModFlag.Attack), --"active_skill_attack_speed_+%_final" = -50
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
skills["ZombieSlam"] = {
	name = "Slam",
	hidden = true,
	color = 4,
	baseFlags = {
		attack = true,
		area = true,
	},
	skillTypes = { [1] = true, [11] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("levelRequirement", 1), 
		skill("cooldown", 5), 
		mod("Speed", "MORE", -22, ModFlag.Attack), --"active_skill_attack_speed_+%_final" = -22
		mod("Damage", "MORE", 45, ModFlag.Hit), --"active_skill_damage_+%_final" = 45
		skill("duration", 0.28), --"base_skill_effect_duration" = 280
		--"is_area_damage" = ?
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
skills["MinionInstability"] = {
	name = "Minion Instability",
	hidden = true,
	color = 4,
	baseFlags = {
		cast = true,
		area = true,
		fire = true,
	},
	skillTypes = { [10] = true, },
	baseMods = {
		skill("FireMin", 1, { type = "PerStat", stat = "Life", div = 1/.33 }),
		skill("FireMax", 1, { type = "PerStat", stat = "Life", div = 1/.33 }),
		skill("showAverage", true),
	},
	qualityMods = {
	},
	levelMods = {
	},
	levels = {
		[1] = { },
	},
}
