while wait() do
-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Remote
local invisivel = ReplicatedStorage.invisivel -- RemoteEvent

-- This data was received from the server
firesignal(invisivel.OnClientEvent, 
    false
)
end
