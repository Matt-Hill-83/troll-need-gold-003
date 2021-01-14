local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = ReplicatedStorage:WaitForChild("BlockDashFreezeCameraRE")

local function freezeCamera(freeze)
    local player = game:GetService("Players").LocalPlayer
    local camera = workspace.CurrentCamera

    if freeze and camera.CameraType ~= Enum.CameraType.Orbital then
        camera.CameraType = Enum.CameraType.Orbital
        player.CameraMinZoomDistance = 50
        player.CameraMaxZoomDistance = 50
    else
        if camera.CameraType ~= Enum.CameraType.Custom then
            camera.CameraType = Enum.CameraType.Custom

            -- You need to set the min first, since the max can't be set to 
            -- lower than the existing min
            player.CameraMinZoomDistance = 0.5
            -- Then set the desired zoom to force this to be the current zoom
            player.CameraMaxZoomDistance = 10
            -- Then set the max zoom
            player.CameraMaxZoomDistance = 400
        end
    end
end

remoteEvent.OnClientEvent:Connect(freezeCamera)

-- local RunService = game:GetService("RunService")
-- local camera = workspace.CurrentCamera
-- RunService:BindToRenderStep("UpdateLoop", Enum.RenderPriority.Camera.Value, function()
-- 	local rX, rY, rZ = camera.CFrame:ToOrientation()
-- 	local limX = math.clamp(math.deg(rX), -45, 45)
-- 	camera.CFrame = CFrame.new(camera.CFrame.p) * CFrame.fromOrientation(math.rad(limX), rY, rZ)
-- end)
