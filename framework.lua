ESX, QBCore = nil, nil

if Config.Framework == "ESX" then
    if Config.ESX.UseNewESX then
        ESX = exports[Config.ESX.Core]:getSharedObject()
    else
        Citizen.CreateThread(function()
            while ESX == nil do
                TriggerEvent(Config.ESX.GetSharedObject, function(obj) ESX = obj end)
                Citizen.Wait(0)
            end
        end)
    end
elseif Config.Framework == "QBCore" then
    QBCore = exports[Config.QBCore.Core]:GetCoreObject()
end