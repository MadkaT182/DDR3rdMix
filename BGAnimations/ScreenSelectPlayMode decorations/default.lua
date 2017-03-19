return Def.ActorFrame {
	LoadActor( "title" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+47);
	};
	LoadActor("../Ind1p")..{
		InitCommand=cmd(x,SCREEN_LEFT+167;y,SCREEN_BOTTOM-84;)
	};
	LoadActor("../Ind2p")..{
		InitCommand=cmd(x,SCREEN_RIGHT-167;y,SCREEN_BOTTOM-84;)
	};
}