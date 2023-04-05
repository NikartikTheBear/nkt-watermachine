local oxtarget = exports.ox_target
local ThirstValue = 10


local waterMachines = {
    'prop_watercooler',
    'prop_watercooler_dark',
    'prop_vend_water_01',
}

local options = {
    {
        name = 'takewater',
        icon = 'fa-solid fa-bottle-water',
        label = 'Take a glass of water',
        onSelect = function() 
            lib.progressBar({
                duration = 2000,
                label = 'Sipping water',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    move = true,
                },
        anim = {
            dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_a@normal', 
            clip = 'drink'
            }})
            ReplenishThirst()
        end
    }
}
oxtarget:addModel(waterMachines, options)

function ReplenishThirst() TriggerEvent('esx_status:set', 'thirst', ThirstValue) end
