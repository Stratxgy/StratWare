local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "StratWare - CounterBlox",
    LoadingTitle = "Stratxgy on YouTube",
    LoadingSubtitle = "by Stratxgy",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "StratWare"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })



 -- Aimbot

 local AimbotTab = Window:CreateTab("Aimbot", 4483362458) -- Title, Image

 local Toggle = AimbotTab:CreateToggle({
    Name = "Aimbot",
    CurrentValue = false,
    Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/StratWare/main/Aimbot.lua"))()
    
    

    end,
 })

  -- Visuals

  local VisualsTab = Window:CreateTab("Visuals", 4483362458) -- Title, Image


  local Button = VisualsTab:CreateButton({
    Name = "ESP",
    Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Stratxgy/StratWare/main/ESP.lua"))()
end,
 })
 local ColorPicker = VisualsTab:CreateColorPicker({
    Name = "ESP Color (doesnt work but if someone tells me how ill update)",
    Color = Color3.fromRGB(255,255,255),
    Flag = "ColorPicker1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        -- The function that takes place every time the color picker is moved/changed
        -- The variable (Value) is a Color3fromRGB value based on which color is selected
    end
})

