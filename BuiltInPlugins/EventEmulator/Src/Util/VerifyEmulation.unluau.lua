-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("NotificationService")
local var1 = game:GetService("MemStorageService")
local var2 = game:GetService("HttpService")
pcall(function()
   var0.RobloxEventReceived:Connect(function(arg1)
      print(`\t\t\t\tEvent Revieved:\n\t\t\t\t\tNamespace: {arg1.Namespace}{var2:JSONDecode(arg1.Detail)}Type: {arg1.DetailType}`)
   end)
end)
pcall(function()
   var1:SetItem("Example", 0)
   var1:Bind("Example", function(arg1)
      print("Callback for Example")
      print("Value is ", arg1)
   end)
end)
