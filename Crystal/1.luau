loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua", true))();
local FireServer; FireServer = hookfunction(Instance.new("RemoteEvent").FireServer, newcclosure(@native function(...)
	if getthreadidentity() ~= 2 then return FireServer(...); end;
	local args = {...};
	local self = args[1];
	table.remove(args, 1);
	if self and type(self) == "userdata" and typeof(self) == "Instance" and self.ClassName == "RemoteEvent" and type(args[1]) ~= "table" then
		return;
	end;
	return FireServer(...);
end));
