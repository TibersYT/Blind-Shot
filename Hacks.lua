while wait() do
-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Remote
local invisivel = ReplicatedStorage.invisivel -- RemoteEvent

-- This data was received from the server
firesignal(invisivel.OnClientEvent, 
    false
)

game.Players.LocalPlayer.PlayerGui.ScreenGui.habilidades.nuke.Visible = False
game.Players.LocalPlayer.PlayerGui.ScreenGui.habilidades.forcefield.Visible = False
game.Players.LocalPlayer.PlayerGui.ScreenGui.habilidades.reveal.Visible = False
game.Players.LocalPlayer.PlayerGui.ScreenGui.habilidades.bomb.Visible = False
end
