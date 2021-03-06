RegisterCommand('clearw', function()
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("~r~All Weapons Have Been Removed From Your Inventory")
end, false)

RegisterCommand("leo", function()
    alert("~b~Your Loadout Has Been Selected Do '/clearw' To Clear All Your Weapons! ")
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    Citizen.Wait(1)
    giveWeapon("weapon_combatpistol")
    weaponComponent("weapon_combatpistol", "COMPONENT_AT_PI_FLSH")
    giveWeapon("weapon_stungun")
    giveWeapon("weapon_flashlight")
    giveWeapon("weapon_nightstick")
    giveWeapon("weapon_pumpshotgun")
    giveWeapon("weapon_carbinerifle")
    weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_AFGRIP")
    weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_FLSH")
    weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_SCOPE_MEDIUM")
    notify("~g~You have recieved your weapons!")
end, false)

RegisterCommand("sru", function()
    alert("~b~Your Loadout Has Been Selected Do '/clearw' To Clear All Your Weapons! ")
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    Citizen.Wait(1)
    giveWeapon("weapon_combatpistol")
    weaponComponent("weapon_combatpistol", "COMPONENT_AT_PI_FLSH")
    giveWeapon("weapon_stungun")
    giveWeapon("weapon_flashlight")
    giveWeapon("weapon_nightstick")
    giveWeapon("weapon_carbinerifle")
    weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_AFGRIP")
    weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_FLSH")
    weaponComponent("weapon_carbinerifle", "COMPONENT_AT_AR_SCOPE_MEDIUM")
    giveWeapon("weapon_heavysniper")
    notify("~g~You have recieved your weapons!")
end, false)

RegisterCommand("loadouts", function()
alert("~b~ /leo = Standard Law Enforcement Loadout.")
alert("~b~ /sru = Standard Special Response Unit / S.W.A.T Loadout.")
end, false)