local blips = {
   {title = 'aqui_el_nombre_de_tu_blip', colour = 5, id = 674, x = -261.56, y = -963.82, z = 30.22},   
   --- copia y agrega los blips que quieras
   --- colour = 5, = el color del blip
   --- id = 674, = el blips o sprite
   --- x =, y =, z = las coordenadas donde quieres agregar el blip
   --- pagina para obtener blips https://docs.fivem.net/docs/game-references/blips/
}

CreateThread(function()
    for i = 1, #blips do
        local blip = AddBlipForCoord(blips[i].x, blips[i].y, blips[i].z)
        SetBlipSprite(blip, blips[i].id)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.7)
        SetBlipColour(blip, blips[i].colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(blips[i].title)
        EndTextCommandSetBlipName(blip)
    end
end)