local t = Def.ActorFrame {};
local vMode = "normal";

if GAMESTATE:IsEventMode() then
	vMode = "event";
-- else
-- 	if getenv("SPMode") == "soft" then
-- 		vMode = "soft";
-- 	end

-- 	if getenv("SPMode") == "medium" then
-- 		vMode = "medium";
-- 	end

-- 	if getenv("SPMode") == "nonstop" then
-- 		vMode = "nonstop";
-- 	end
end;

t[#t+1] = Def.ActorFrame {
	LoadActor("gp_"..vMode)..{};
};

return t;