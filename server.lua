PerformHttpRequest('http://sizinsiteniz/version.txt', function(errorCode, resultData, resultHeaders)
    if errorCode == 200 then -- hata kontrol
        local serverVersion = tonumber(resultData)
        local currentVersion = 2.5 -- Scriptin şuanki versiyonunu yazınız
        if serverVersion > currentVersion then -- url deki versiyon daha büyükse yapılacak işlem
            print("^1 YOU ARE CURRENTLY USING AN OLD VERSION OF OUR SCRIPT. THE CURRENT VERSION IS AVAILABLE. PLEASE UPDATE FOR A BETTER QUALITY VERSION") -- Versiyon eski olduğunda gönderilecek mesaj
        else -- değilse yani script güncelse
            print("^2 SCRIPT CURRENT AND ORIGINAL") -- Versiyon Güncel Olduğunda Gösterilecek Mesaj
        end -- kod biter
    else
        print("^1 ERROR PLEASE CONTACT\n https://dc.srhdev.xyz or https://wwww.srhdev.xyz/panel/support") -- Hata olduğunda gösterilecek mesaj
    end
end, 'GET', '', { ['Content-Type'] = 'application/json' }) -- Json formatı
