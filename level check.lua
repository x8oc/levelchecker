local plr = game:GetService("Players").LocalPlayer
local function getRankFromELO(elo)
    if not tonumber(elo) then return "Unranked" end
    elo = tonumber(elo) 
    if elo >= 3600 then return "Nemesis"
    elseif elo >= 3400 then return "Onyx III"
    elseif elo >= 3200 then return "Onyx II"
    elseif elo >= 3000 then return "Onyx I"
    elseif elo >= 2800 then return "Diamond III"
    elseif elo >= 2600 then return "Diamond II"
    elseif elo >= 2400 then return "Diamond I"
    elseif elo >= 2200 then return "Platinum III"
    elseif elo >= 2000 then return "Platinum II"
    elseif elo >= 1800 then return "Platinum I"
    elseif elo >= 1600 then return "Gold III"
    elseif elo >= 1400 then return "Gold II"
    elseif elo >= 1200 then return "Gold I"
    elseif elo >= 1000 then return "Silver III"
    elseif elo >= 800 then return "Silver II"
    elseif elo >= 600 then return "Silver I"
    elseif elo >= 400 then return "Bronze III"
    elseif elo >= 200 then return "Bronze II"
    elseif elo >= 0 then return "Bronze I"
    else return "Unranked"
    end
end
notify("checker made by x8oc", 5)
notify("loading 13%", "checker")
wait(2)
notify("loading 75%", "checker")
wait(2)
notify("loading 96%", "checker")
wait(1)
for _, otherPlayer in ipairs(game:GetService("Players"):GetPlayers()) do   
    if otherPlayer == plr or otherPlayer.Name == myUsername then
        continue
    end    
    local otherLevel = otherPlayer:GetAttribute("Level") 
        or (otherPlayer.CustomLeaderstats and otherPlayer.CustomLeaderstats.Level and otherPlayer.CustomLeaderstats.Level.Value)
        or "?"
    local otherStreak = otherPlayer:GetAttribute("StatisticDuelsWinStreak") 
        or (otherPlayer.CustomLeaderstats and otherPlayer.CustomLeaderstats["Win Streak"] and otherPlayer.CustomLeaderstats["Win Streak"].Value)
        or "?"
    local rawELO = (otherPlayer.CustomLeaderstats and otherPlayer.CustomLeaderstats["Current ELO"] 
                    and otherPlayer.CustomLeaderstats["Current ELO"].Value) or -1
    local otherELO = (rawELO == -1) and "Unranked" or rawELO
    local otherRank = getRankFromELO(rawELO)
    notify(otherPlayer.Name .. " | Lvl: " .. otherLevel .. " | Streak: " .. otherStreak .. " | " .. otherRank, "ls", 5)
end
