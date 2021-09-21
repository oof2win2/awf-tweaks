for _, radar in pairs(data.raw.radar) do
	radar.max_distance_of_nearby_sector_revealed = 3
	radar. max_distance_of_sector_revealed = 6
end

for _, projectile in pairs(data.raw["artillery-projectile"]) do
	projectile.reveal_map = false
	projectile.action.action_delivery.target_effects[4] = nil
end

for _, turret in pairs(data.raw["artillery-turret"]) do
	turret.manual_range_modifier = 1
end

for _, wagon in pairs(data.raw["artillery-wagon"]) do
	wagon.manual_range_modifier = 1
end