local plr = game:GetService("Players").LocalPlayer
for i,v in next, getgc() do 
    if type(v) == "function" and getfenv(v).script and getfenv(v).script == plr.Character.ClientInputHandler then 
        for i2,v2 in next, debug.getupvalues(v) do 
            if type(v2) == "number" then 
                debug.setupvalue(v, i2, math.huge)
            end
        end
    end
end