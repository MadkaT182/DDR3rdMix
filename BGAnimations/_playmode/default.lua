local t = Def.ActorFrame {};
local style = GAMESTATE:GetCurrentStyle();

if style then
	st = style:GetName();
	local stimg = "pm_si";

	if st == "versus" then
		stimg = "pm_vs";
		elseif st == "couple" then
				stimg = "pm_cp";
			elseif st == "double" then
				stimg = "pm_db";
			--Unison?
			--Battle?
	end;

	t[#t+1] = Def.ActorFrame {
		LoadActor(stimg)..{
			OnCommand=cmd(addy,-44);
		}
	};
end;

return t;