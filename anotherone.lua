local RunService = game:GetService("RunService")
local v222 = Instance.new("Model", workspace)
       local function SetCFrame(Part, CFrame)
        if (Part and Part.ReceiveAge == 0) then
			task.spawn(function()
            Part.CFrame = CFrame
			end)
        end
    end
local g = Instance.new("Part",workspace)
g.Anchored = true
g.CanCollide = false
g.Size = Vector3.new(1,1,1)
local GripPosOffset = CFrame.new(0.5, -0.9, -1)
g.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset * CFrame.new(0,-0.5,0)
local g2 = Instance.new("Part",workspace)
g2.Anchored = true
g2.CanCollide = false
g2.Size = Vector3.new(1,1,1)
local GripPosOffset2 = CFrame.new(-0.5, -0.9, -1)
g2.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset2 * CFrame.new(0,-0.5,0)
local g3 = Instance.new("Part",workspace)
g3.Anchored = true
g3.CanCollide = false
g3.Size = Vector3.new(0.9,1,7)
local GripPosOffset3 = CFrame.new(0, -0.5, (g3.Size.Z - (g3.Size.Z + g3.Size.Z/2)))
g3.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset3 * CFrame.new(0,-0.5,0)
  local skibdiboo = {
     g = NewPart(Vector3.new(1,1,1), "g", nil, Color3.new(223,199,167)),
     g2 = NewPart(Vector3.new(1,1,1), "g2", nil, Color3.new(223,199,167)),
          g3 = NewPart(Vector3.new(getgenv().ReanimSizeLol), "g3", nil, Color3.new(223,199,167))
   }
   table.insert(getgenv().wizzard, RunService.Heartbeat:connect(function()
      for Name, Child in pairs(skibdiboo) do
         task.spawn(function()
if Name == "g" then
              g.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset * CFrame.new(0,-0.5,0)
            elseif Name == "g2" then
              g2.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset2 * CFrame.new(0,-0.5,0)
            elseif Name == "g3" then
              g3.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset3 * CFrame.new(0,-0.5,0)
            end
      end)
      end
   end))
