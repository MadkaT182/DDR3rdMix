local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {
	LoadActor("demb")..{
		OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.7;diffusealpha,0.8;sleep,0.5;queuecommand,"On");
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor("demw")..{
		OnCommand=cmd(diffusealpha,0.5;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.7;diffusealpha,0;sleep,0.5;queuecommand,"On");
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor("../_arcade_decorations")..{};
};

return t;