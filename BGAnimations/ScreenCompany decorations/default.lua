return Def.ActorFrame {
	LoadActor( "logo" )..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	LoadActor( "konami" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.468;diffusealpha,1;sleep,4.571;linear,0.25;diffusealpha,0);
	};
	LoadActor( "bemani" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,5.106;linear,0.467;diffusealpha,1;);
	};
	Def.Quad{
		InitCommand=cmd(Center;FullScreen;diffusecolor,color("#FFFFFF");linear,0.601;diffusealpha,0;);
	};
};