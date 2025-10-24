--[[
/$$$$$$  /$$                                     /$$ /$$       /$$   /$$           /$$      
 /$$__  $$| $$                                    | $$| $$      | $$  | $$          | $$      
| $$  \ $$| $$$$$$$  /$$   /$$  /$$$$$$$  /$$$$$$ | $$| $$      | $$  | $$ /$$   /$$| $$$$$$$ 
| $$$$$$$$| $$__  $$| $$  | $$ /$$_____/ |____  $$| $$| $$      | $$$$$$$$| $$  | $$| $$__  $$
| $$__  $$| $$  \ $$| $$  | $$|  $$$$$$   /$$$$$$$| $$| $$      | $$__  $$| $$  | $$| $$  \ $$
| $$  | $$| $$  | $$| $$  | $$ \____  $$ /$$__  $$| $$| $$      | $$  | $$| $$  | $$| $$  | $$
| $$  | $$| $$$$$$$/|  $$$$$$$ /$$$$$$$/|  $$$$$$$| $$| $$      | $$  | $$|  $$$$$$/| $$$$$$$/
|__/  |__/|_______/  \____  $$|_______/  \_______/|__/|__/      |__/  |__/ \______/ |_______/ 
                     /$$  | $$                                                                
                    |  $$$$$$/                                                                
                     \______/  
]]

getgenv().AbysallHub = {
  Repository = "https://raw.githubusercontent.com/bocaj111004/AbysallHubNew/refs/heads//main/",
  LibrarySelection = "Obsidian",
  Title = "Abysall Hub",
  DiscordInvite = "https://discord.gg/DXJNkSwje3",
  DPIScale = 100,
  ExecutorSupport = {}
}
AbysallHub.ExecutorSupport = loadstring(game:HttpGet(AbysallHub.Repository .. "/Components/ExecutorSupport.lua"))()
local LocalPlayer = game:GetService("Players").LocalPlayer
local RequiredFunctions = {"writefile", "delfile", "readfile", "isfile", "listfiles", "makefolder", "delfolder", "isfolder", "cloneref"}
local ExecutorSupported = true
for Index, Name in pairs(RequiredFunctions) do
if not AbysallHub.ExecutorSupport[Name] then
    ExecutorSupported = false
  end
end
if ExecutorSupported == false then
  LocalPlayer:Kick("Your executor doesn't support Abysall Hub.\nTry looking for executors on trustworthy sites such as whatexpsare.online or voxlis.net!")
  return
end
local LoaderData = loadstring(game:HttpGet(AbysallHub.Repository .. "/Misc/LoaderData.lua"))()
local SelectedLoader = LoaderData[game.GameId] or LoaderData[0]
loadstring(game:HttpGet(AbysallHub.Repository .. "Places/" .. SelectedLoader .. "/Loader.lua"))()
