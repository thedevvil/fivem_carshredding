local lastCd = 0

local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("tgiann-aracparcalama:esya-verme")
AddEventHandler("tgiann-aracparcalama:esya-verme", function(class, key)
    local src = source
 --   if QBCore.Functions.kickHacKer(src, key) then -- QBCore.Key
        local xPlayer = QBCore.Functions.GetPlayer(src)
        if xPlayer then
            local normalJant = math.random(2, 4)
            local kaliteliJant = math.random(2, 4)
            local kapi = math.random(1,2)
            local hoparlor = math.random(2,4)

            if math.random(0, 100) < 40 then 
                xPlayer.Functions.AddItem('sahteplaka', 1)
            end

            if math.random(0, 100) < 50 then 
                xPlayer.Functions.AddItem('security_card_01', 1)
            end

            if math.random(0,100) < 25 then 
                xPlayer.Functions.AddItem('bosnitro', 1)
            end

            if math.random(0, 100) > 80 then
                xPlayer.Functions.AddItem('highradio', 1)
            end

            if math.random(0, 100) > 50 then
                xPlayer.Functions.AddItem('harness', 1)
            end

            xPlayer.Functions.AddItem('jant', 1)

            xPlayer.Functions.AddItem('speaker', hoparlor)
            xPlayer.Functions.AddItem('kapi', kapi)
        
            if not class == 8 and not class == 4 then
                xPlayer.Functions.AddItem('airbag', 1)
            end

            if class == 7 or class == 6 then
                xPlayer.Functions.AddItem('aracradio', 1)
                xPlayer.Functions.AddItem('highrim', kaliteliJant)
                if math.random(0, 100) > 98 then 
                    xPlayer.Functions.AddItem('security_card_02', kapi)
                end
            else
                xPlayer.Functions.AddItem('aracradio', 1)
                xPlayer.Functions.AddItem('jant', normalJant)
            end
      --  end
    end
end)

QBCore.Functions.CreateCallback('tgiann-aracparcalama:check-cd', function(source, cb)
    if lastCd == 0 or (os.time() - lastCd) > 60 then 
        lastCd = os.time()
        cb(true)
    else
        cb(false)
    end
end)