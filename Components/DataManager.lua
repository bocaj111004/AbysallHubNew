local DataManager = {}
DataManager.Data = {
    SelectedLibrary = "Obsidian",
    DPIScale = "100",
    AutoExecute = "false"
}

function DataManager:GetData(Name)
    local SavedData = readfile("AbysallHub/DataManager/" .. Data .. ".txt")
    return SavedData or DataManager.Data[Name]
end

function DataManager:SaveData(Name, Data)
DataManager.Data[Name] = Data
writefile("AbysallHub/DataManager/" .. Name .. ".txt", Data)
end

function DataManager:CheckFile(Name)
if not isfile("AbysallHub/DataManager/" .. Name .. ".txt") then
    writefile("AbysallHub/DataManager/" .. Name .. ".txt", DataManager.Data[Name])
    DataManager.Data[Name] = DataManager.Data[Name]
else
    DataManager.Data[Name] = readfile("AbysallHub/DataManager/" .. Name .. ".txt")
end
end

function DataManager:LoadData()
if not isfolder("AbysallHub") then
    makefolder("AbysallHub")
end
if not isfolder("AbysallHub/DataManager") then
    makefolder("AbysallHub/DataManager")
end
DataManager:CheckFile("SelectedLibrary")
DataManager:CheckFile("DIPScale")
DataManager:CheckFile("AutoExecute")
end

DataManager:LoadData()
return DataManager
