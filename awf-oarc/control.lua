local oarc = {}

local online_time_required = 10*60*60

oarc.events = {
	[defines.events.on_built_entity] = function (evt)
		local entity = evt.created_entity
		if entity.type == "entity-ghost" then
			-- is a ghost
			if entity.ghost_type == "radar" then
				local player = game.get_player(evt.player_index)
				if player.online_time < online_time_required then
					-- destroy the entity
					entity.destroy()
				end
			end
		elseif entity.type == "radar" then
			local player = game.get_player(evt.player_index)
				if player.online_time < online_time_required then
					-- destroy the entity and return it to the player if it has been placed with an item
					entity.destroy()
					if evt.item then player.insert{name=evt.item.name} end
				end
		end
	end
}

return oarc