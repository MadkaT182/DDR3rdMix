local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "go" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-2;diffusealpha,0;linear,0.1;diffusealpha,1;sleep,1.5;diffusealpha,0);
	}
};

return t