return Def.ActorFrame {
	LoadActor( "grid" )..{
		OnCommand=cmd(FullScreen;);
	};
}