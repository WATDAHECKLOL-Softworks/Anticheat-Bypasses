for _,v in getgc(false) do
	if (type(v) == 'function' and islclosure(v) and not rawget(getfenv(v), "script")) then
		for i: string, _: unknown in debug.getconstants(v) do
			if (type(i) == "string" and string.find(string.lower(i), "body")) then
				debug.setconstant(v, i, "game");
			end;
		end;
	end;
end;
