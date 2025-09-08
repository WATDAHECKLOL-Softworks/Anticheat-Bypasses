local replicated_storage = game:GetService("ReplicatedStorage");
local event = replicated_storage.AnimationTrigger;
local players = game:GetService("Players");
local player = players.LocalPlayer;
local char = player.Character;
local humanoid = char:FindFirstChildWhichIsA("Humanoid");
local server_ac_communication;
for _,v in char:GetDescendants() do
	if v:IsA("RemoteEvent") then	
		server_ac_communication =  v;
		break;
	end;
end;
for _,v in getgc(false) do
	if type(v) == "function" and islclosure(v) and getfunctionhash(v) == "E1293583F9A3889AD00F7378CA33510768AEAC34033B87A725278A8812810F6B9646E676CDD564024D4300890673AD32" then
		local hook; hook = hookfunction(v, newlclosure(@native function(...)
			local args = {...};
			if not table.find(args, "Handshake") then return; end;
			return hook(...);
		end));
	end;
end;
local namecall; namecall = hookmetamethod(game, "__namecall", newcclosure(@native function(...)
	if getthreadidentity() ~= 2 then return namecall(...); end;
	local args = {...};
	local self = args[1];
	local method = string.lower(getnamecallmethod());
	if self and type(self) == "userdata" and typeof(self) == "Instance" then
		if self == player and method == "kick" then
			return;
		elseif self == event and method == "fireserver" and not table.find(args, true) then
			return;
		end;
	end;
	return namecall(...);
end));
for _,v in getconnections(humanoid:GetPropertyChangedSignal("WalkSpeed")) do
	v:Disable();
end;
for _,v in getconnections(humanoid:GetPropertyChangedSignal("JumpPower")) do
	v:Disable();
end;
for _,v in getconnections(humanoid:GetPropertyChangedSignal("HipHeight")) do
	v:Disable();
end;
for _,v in getconnections(char.LowerTorso.DescendantAdded) do
	v:Disable();
end;
for _,v in getconnections(workspace:GetPropertyChangedSignal("Gravity")) do
	v:Disable();
end;
for _,v in getconnections(humanoid:GetPropertyChangedSignal("FloorMaterial")) do
	v:Disable();
end;
