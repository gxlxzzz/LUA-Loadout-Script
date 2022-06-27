function giveWeapon(hash)
GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 999, false, false)
end

function notify(msg)
SetNotificationTextEntry("STRING")
AddTextComponentString(msg)
DrawNotification(true, false)
end

function alert(msg)
TriggerEvent('chat:addMessage', {
    color = {0, 0, 0},
    multiline = true,
    args = {msg}
})
end

function weaponComponent(weaponHash, component)
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(weaponHash), false) then
        GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(weaponHash), GetHashKey(component))
    end
end