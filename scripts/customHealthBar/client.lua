addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()),
    function()
        healthColor = tocolor(0, 0, 0, 255)
        sx, sy = guiGetScreenSize()

        -- Coordenadas de la barra de vida
        vehiclehealthx = sx / 800 * 619 + 140
        vehiclehealthy = sy / 600 * 169 - 130

    end
)

function render()
    if (isPedInVehicle(getLocalPlayer())) then
        local vehicle = getPedOccupiedVehicle(getLocalPlayer())
        local health = getElementHealth(vehicle)
        
        -- Establecer el mínimo de salud en 240 y el máximo en 1000
        local minHealth = 240
        local maxHealth = 1000

        -- Ajustar la salud al rango deseado
        local healthRelative = math.max((health - minHealth) / (maxHealth - minHealth), 0)

        -- Determinar el color basado en el porcentaje de salud
        local healthR, healthG, healthB
        local bgHealthR, bgHealthG, bgHealthB
        if (healthRelative > 0.7) then
            healthR, healthG, healthB = 0, 255, 0 -- Verde
            bgHealthR, bgHealthG, bgHealthB = 0, 139, 0
        elseif (healthRelative >= 0.4) then
            healthR, healthG, healthB = 255, 151, 0 -- Naranja
            bgHealthR, bgHealthG, bgHealthB = 255, 151, 0
        elseif (healthRelative >= 0.35) then
            healthR, healthG, healthB = 255, 0, 0 -- Rojo
            bgHealthR, bgHealthG, bgHealthB = 149, 0, 0
        else
            healthR, healthG, healthB = 255, 0, 0 -- Rojo
            bgHealthR, bgHealthG, bgHealthB = 149, 0, 0
        end

        local displayedHealth = healthRelative * 100

        dxDrawRectangle(vehiclehealthx, vehiclehealthy, 118, 17, tocolor(0, 0, 0, 255), false)
        dxDrawRectangle(vehiclehealthx + 1, vehiclehealthy + 1, 116, 15, tocolor(bgHealthR, bgHealthG, bgHealthB, 127), false)
        dxDrawRectangle(vehiclehealthx + 1, vehiclehealthy + 1, 116 * displayedHealth / 100, 15, tocolor(healthR, healthG, healthB, 185), false)
    end
end

addEventHandler("onClientRender", getRootElement(), render)

addEventHandler("onClientResourceStop", getResourceRootElement(getThisResource()),
    function()
        setPlayerHudComponentVisible("health", true)
    end
)
