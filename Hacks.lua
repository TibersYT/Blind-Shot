-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Remote
local invisivel = ReplicatedStorage.invisivel -- RemoteEvent

-- Функция для выполнения действий
local function executeActions()
    -- Вызов RemoteEvent с сервера
    firesignal(invisivel.OnClientEvent, false)
    
    -- Проверяем, что PlayerGui существует
    local player = Players.LocalPlayer
    local playerGui = player:FindFirstChild("PlayerGui")
    
    if playerGui then
        local screenGui = playerGui:FindFirstChild("ScreenGui")
        
        if screenGui then
            local habilidades = screenGui:FindFirstChild("habilidades")
            
            if habilidades then
                -- Делаем видимыми элементы
                local nuke = habilidades:FindFirstChild("nuke")
                local forcefield = habilidades:FindFirstChild("forcefield")
                local reveal = habilidades:FindFirstChild("reveal")
                local bomb = habilidades:FindFirstChild("bomb")
                
                if nuke then
                    nuke.Visible = true
                end
                
                if forcefield then
                    forcefield.Visible = true
                end
                
                if reveal then
                    reveal.Visible = true
                end
                
                if bomb then
                    bomb.Visible = true
                end
            end
        end
    end
end

-- Вариант 1: Бесконечный цикл с задержкой (простой)
while true do
    executeActions()
    wait(0.1) -- Задержка 0.1 секунды
end

-- Вариант 2: Использование RunService (более эффективный)
--[[
local connection
connection = RunService.Heartbeat:Connect(function()
    executeActions()
end)

-- Чтобы остановить выполнение:
-- connection:Disconnect()
--]]
