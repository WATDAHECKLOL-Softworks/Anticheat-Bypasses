-- looks like this wasnt a nightmare for me :shrug:
for _,v in getgc(false) do
	if type(v) == "function" and islclosure(v) and getfunctionhash(v) == "7C9091B5F65933DED0B048B82CBAA17C04E8EAF287B2286B4032ECCE1E7AAB9BCAA227706BC33E29497A849D39340889" then
		hookfunction(v, newlclosure(function() return coroutine.yield(); end));
	end;
end;
