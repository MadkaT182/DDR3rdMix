local t = Def.ActorFrame {};
local vMode = "normal";

-- if IsEventMode() then
-- 	vMode = "event";
-- end

t[#t+1] = Def.ActorFrame {
	LoadActor(vMode)..{};
};

return t;