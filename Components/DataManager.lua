local DataManager = {}

DataManager.Data = {
    SelectedLibrary = "Obsidian",
    DPIScale = "100",
    AutoExecute = "false"
}

function DataManager:GetData(Data)
    local SavedData = readfile("AbysallHub/DataManager/" .. Data .. ".txt")
    return SavedData or DataManager.Data[Data]
end

function DataManager:SaveData(Data)
  DataManager.Data[Data] = Data
  writefile("AbysallHub/DataManager/" .. Data .. ".txt", Data)
end

function DataManager:CheckFile(Name)
if type(readfile("AbysallHub/DataManager/" .. Name .. ".txt")) ~= "string" then
    writefile("AbysallHub/DataManager/" .. Name .. ".txt", DataManager.Data[Name])
    DataManager.Data[Name] = DataManager.Data[Name]
else
    DataManager.Data[Name] = readfile("AbysallHub/DataManager/" .. Name .. ".txt")
end
end

function DataManager:LoadData()
  DataManager:CheckFile("SelectedLibrary")
  DataManager:CheckFile("DIPScale")
  DataManager:CheckFile("AutoExecute")
end

DataManager:LoadData()
return DataManager
