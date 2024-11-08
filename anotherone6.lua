local RunService = game:GetService("RunService")
local v222 = Instance.new("Model", workspace)
       local function SetCFrame(Part, CFrame)
        if (Part and Part.ReceiveAge == 0) then
            task.spawn(function()
            Part.CFrame = CFrame
            end)
        end
    end
local g = Instance.new("Part",v222)
g.Name = "g"
g.Anchored = true
g.CanCollide = false
g.Size = Vector3.new(1,1,1)
local GripPosOffset = CFrame.new(0.5, -0.9, -1)
local g2 = Instance.new("Part",v222)
g2.Name = "g2"
g2.Anchored = true
g2.CanCollide = false
g2.Size = Vector3.new(1,1,1)
local GripPosOffset2 = CFrame.new(-0.5, -0.9, -1)
local g3 = Instance.new("Part",v222)
g3.Name = "g3"
g3.Anchored = true
g3.CanCollide = false
g3.Size = Vector3.new(0.9,1,7)
local GripPosOffset3 = CFrame.new(0, -0.5, (g3.Size.Z - (g3.Size.Z + g3.Size.Z/2)))
g3.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset3 * CFrame.new(0,-0.5,0)
   local fucku = {
      g = g,
      g2 = g2,
            g3 = g3
   }
      table.insert(getgenv().wizzard, RunService.Heartbeat:connect(function()
      for Name, Child in pairs(fucku) do
         task.spawn(function()
         if Name == "g" then
             Child.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset * CFrame.new(0,-0.5,0)
         end
         if Name == "g2" then
             Child.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset2 * CFrame.new(0,-0.5,0)
         end
         if Name == "g3" then
             Child.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * GripPosOffset3 * CFrame.new(0,-0.5,0)
         end
         end)
         end
         end))
print(getgenv().ReanimSizeLol)
   print("Yo")
   local Sizes = {
    g = Vector3.new(1,1,1),
    g2 = Vector3.new(1,1,1),
    g3 = getgenv().ReanimSizeLol
   }
     local skibdiboo = {
     g = NewPart(Vector3.new(1,1,1), "g", nil, Color3.new(223,199,167)),
     g2 = NewPart(Vector3.new(1,1,1), "g2", nil, Color3.new(223,199,167)),
          g3 = NewPart(getgenv().ReanimSizeLol, "g3", nil, Color3.new(223,199,167))
   }
   table.insert(getgenv().wizzard, RunService.Heartbeat:connect(function()
             task.spawn(function()
    for Name, Child in pairs(skibdiboo) do
        if (not Fixing[Name]) then
            Fixing[Name] = os.clock()
            print('aaa')
        end

        if (Child.ReceiveAge > 0 or Child.Parent == nil) then
            print('yooo')
            if (os.clock() - Fixing[Name] <= 0.5) then
                continue
            end
            Fixing[Name] = os.clock()

            skibdiboo[Name] = NewPart(Sizes[Name], Name)
            print('aaa')
        end
end
end)
      for Name, Child in pairs(skibdiboo) do
         task.spawn(function()
         local RealPart;
   if fucku[Name] then
   RealPart = fucku[Name]
   end
         if (RealPart) then
            task.spawn(function()
            local LookVector = RealPart.CFrame.LookVector
            Child.AssemblyLinearVelocity = Vector3.new(LookVector.X * 90, LookVector.Y * 90, LookVector.Z * 90)
            Child.AssemblyAngularVelocity = Vector3.zero
            end)
            SetCFrame(Child, RealPart.CFrame)
         end
      end)
      end
   end))

   print("A")
