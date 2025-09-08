local names: {string} = {
    "SpeedDetected";
    "DetectionFound";
    "ToolDetected";
    "ExploitReport";
    "BannedUsers";
    "DetectionEvent";
    "BE_Detected";
    "PubgEnd";
    "Tab"
};
local Player = game:GetService("Players").LocalPlayer :: Player;
local char: any = Player.Character;
local Humanoid: Humanoid = char.Humanoid;
local hook; hook = hookmetamethod(game, "__index", newcclosure(function(...: any): any?
    if checkcaller() then return hook(...); end;
    local self: Instance, index: any = ...;
    if type(self) == "userdata" and typeof(self) == "Instance" and typeof(index) == "string" and self == Humanoid and string.lower(index) == "walkspeed" then
        return 16;
    end;
    return hook(...);
end));
local hook; hook = hookmetamethod(game, "__namecall", newcclosure(function(...: any): any?
    if checkcaller() then return hook(...); end;
    local args: {any} = {...};
    local method: string = string.lower(getnamecallmethod());
    local self: Instance = args[1];
    if type(self) == "userdata" and typeof(self) == "Instance" and method == "fireserver" and self.ClassName == "RemoteEvent" and table.find(names, tostring(self)) then
        return;
    end;
    return hook(...);
end));
