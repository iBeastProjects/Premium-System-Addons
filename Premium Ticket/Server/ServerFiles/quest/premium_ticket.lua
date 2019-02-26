quest premium_ticket begin
	state start begin
		when 95001.use begin
			if(pc.ispremium()) then syschat("You are already premium.") return end
			local vnum = item.get_vnum()
			local data =
			{
				--ID	DAYS
				{ 95001, 30 },
			}
			
			for a = 1, table.getn(data) do
				if(vnum == data[a][1]) then
					pc.setpremium(data[a][2])
					syschat("Premium added for" .. " " .. data[a][2] .. " " .. "days.")
					pc.remove_item(data[a][1])
					return
				end --if
			end --for
		end --when
	end --state
end --quest