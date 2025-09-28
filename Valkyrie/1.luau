local script_context = clonereference(game:GetService("ScriptContext"));
local event;
for _,v in getconnections(script_context.Error) do
    if (not v.Function) then continue; end;
    for _,v in debug.getupvalues(v.Function) do
        if (type(v) == "userdata" and typeof(v) == "Instance" and v.ClassName == "BindableEvent" and tostring(v) == "Event") then
            event = v;
            break;
        end;
    end;  
end;
for _,v in getconnections(event.Event) do
    hookfunction(v.Function, function()
    end);
end;
local Fire; Fire = hookfunction(event.Fire, newcclosure(function(...)
    if getthreadidentity() ~= 2 then return Fire(...); end;
    local args = {...};
    local self = args[1];
    if (self and type(self) == "userdata" and typeof(self) == "Instance" and self == event) then return; end;
    return Fire(...);
end));
local namecall; namecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
    if getthreadidentity() ~= 2 then return namecall(...); end;
    local args = {...};
    local self = args[1];
    if (self and type(self) == "userdata" and typeof(self) == "Instance" and self == event and string.lower(getnamecallmethod()) == "fire") then return; end;
    return namecall(...);
end));
