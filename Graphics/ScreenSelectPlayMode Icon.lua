local gc = Var("GameCommand");
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("_ModeInfo",gc:GetName() )) .. {
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("_ModeIcon",gc:GetName() )) .. {};
};

return t