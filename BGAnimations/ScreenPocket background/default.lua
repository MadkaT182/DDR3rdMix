return Def.ActorFrame {
	LoadActor( "pocket" )..{
		OnCommand=cmd(FullScreen;);
	};
	LoadActor( "title" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-1;y,SCREEN_TOP+74);
	};
}