loadstring([[
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

local infinitoActivo = false

-- Tecla F para activar/desactivar
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.F then
        infinitoActivo = not infinitoActivo
        print("Salto infinito:", infinitoActivo and "ACTIVADO" or "DESACTIVADO")
    end
end)

-- Salto infinito
UserInputService.JumpRequest:Connect(function()
    if infinitoActivo then
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.Jumpin
