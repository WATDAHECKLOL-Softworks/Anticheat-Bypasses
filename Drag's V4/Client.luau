-- Anything else?
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Adonis-actul-bypass-20697"))()
task.wait(1);
for _,v in getgc(false) do
	if type(v) == "function" and getfunctionhash(v) == "C2F145740ACC2023BC19919605F97D3E54AA381DFEF4A995B6E25D750B32CB5A5842D0B6A1612AFE4CC112C9CD0FC95A" then
		hookfunction(v, newlclosure(function(operand: any): boolean
			return false;
		end));
	end;
end;
