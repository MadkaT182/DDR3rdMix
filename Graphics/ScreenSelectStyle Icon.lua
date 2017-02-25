local gc = Var("GameCommand");
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(addy,-31);
	GainFocusCommand=cmd(diffusealpha,1);
	LoseFocusCommand=cmd(diffusealpha,.25);
	LoadActor(THEME:GetPathG("_SelectIcon",gc:GetName() )) .. {};
};

return t