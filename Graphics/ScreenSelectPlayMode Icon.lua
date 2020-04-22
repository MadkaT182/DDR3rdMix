local gc = Var("GameCommand");
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("_ModeIcon",gc:GetName()));
	LoadActor(THEME:GetPathG("_ModeNfo",gc:GetName()))..{
		InitCommand=cmd(x,SCREEN_CENTER_X+109;y,SCREEN_CENTER_Y+150);
	};
};

return t