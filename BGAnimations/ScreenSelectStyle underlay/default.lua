local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "bg" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-11);
	};
	LoadActor( "title" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-69);
	};
};

return t