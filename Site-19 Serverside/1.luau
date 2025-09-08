local Players = game:GetService("Players");
local Player = Players.LocalPlayer;

local char = Player.Character;
local hrp = char.HumanoidRootPart;

local hook; hook = hookmetamethod(game, "__namecall", newcclosure(function(...)
      if checkcaller() then return hook(...); end;
      local args = {...};
      local method = string.lower(getnamecallmethod());
      local self = args[1];
      table.remove(args, 1);
      if typeof(self) == "Instance" and method == "findfirstchild" and args[1] and type(args[1]) == "string" and args[1] == "HumanoidRootPart" and char and char.FindFirstChild(char, "LowerTorso") and self == char then
             return char.LowerTorso;
      end;
      return hook(...);
end));
local hook; hook = hookmetamethod(game, "__index", newcclosure(function(...)
    if checkcaller() then  return hook(...); end;
    local self, index = ...;
    if typeof(self) == "Instance" and typeof(index) == "string" and index == "HumanoidRootPart" and self == char then
        return hook(self, "LowerTorso");
    end;
    return hook(...);
end));
hrp:Destroy();
