return Def.ActorFrame {
	LoadActor( "editbg" )..{
		OnCommand=cmd(FullScreen;);
	};
	LoadActor( "title" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-6;y,SCREEN_TOP+76;zoom,2);
	};
}