local t = Def.ActorFrame {};
local vMode = "normal";

if GAMESTATE:IsEventMode() then
	vMode = "event";
else
	if GMode then
		vMode = GMode;
	end
	if GAMESTATE:IsCourseMode() then
		vMode = "nonstop";
	end
end;

t[#t+1] = Def.ActorFrame {
	LoadActor("gp_"..vMode)..{};
};

return t;