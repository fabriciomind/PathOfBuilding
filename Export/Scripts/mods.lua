if not loadStatFile then
	dofile("statdesc.lua")
end
loadStatFile("stat_descriptions.txt")

local function writeMods(outName, condFunc)
	local out = io.open(outName, "w")
	out:write('-- This file is automatically generated, do not edit!\n')
	out:write('-- Item data (c) Grinding Gear Games\n\nreturn {\n')
	for mod in dat"Mods":Rows() do
		if condFunc(mod) then
			local stats, orders = describeMod(mod)
			if #orders > 0 then
				out:write('\t["', mod.Id, '"] = { ')
				if mod.GenerationType == 1 then
					out:write('type = "Prefix", ')
				elseif mod.GenerationType == 2 then
					out:write('type = "Suffix", ')
				elseif mod.GenerationType == 5 then
					out:write('type = "Corrupted", ')
				end
				out:write('affix = "', mod.Name, '", ')
				out:write('"', table.concat(stats, '", "'), '", ')
				out:write('statOrderKey = "', table.concat(orders, ','), '", ')
				out:write('statOrder = { ', table.concat(orders, ', '), ' }, ')
				out:write('level = ', mod.Level, ', group = "', mod.Family, '", ')
				out:write('weightKey = { ')
				for _, tag in ipairs(mod.SpawnTags) do
					out:write('"', tag.Id, '", ')
				end
				out:write('}, weightVal = { ', table.concat(mod.SpawnWeights, ', '), ', }, ')
				if mod.Tags[1] then
					out:write('tags = { ')
					for _, tag in ipairs(mod.Tags) do
						out:write('"', tag.Id, '", ')
					end
					out:write('}, ')
				end
				out:write('},\n')
			else
				print("Mod '"..mod.Id.."' has no stats")
			end
		end
	end
	out:write('}')
	out:close()
end

writeMods("../Data/3_0/ModItem.lua", function(mod)
	return mod.Domain == 1 and (mod.GenerationType == 1 or mod.GenerationType == 2 or mod.GenerationType == 5)
end)
writeMods("../Data/3_0/ModFlask.lua", function(mod)
	return mod.Domain == 2 and (mod.GenerationType == 1 or mod.GenerationType == 2)
end)
writeMods("../Data/3_0/ModJewel.lua", function(mod)
	return mod.Domain == 10 and (mod.GenerationType == 1 or mod.GenerationType == 2 or mod.GenerationType == 5)
end)
writeMods("../Data/3_0/ModJewelAbyss.lua", function(mod)
	return mod.Domain == 13 and (mod.GenerationType == 1 or mod.GenerationType == 2 or mod.GenerationType == 5)
end)

print("Mods exported.")