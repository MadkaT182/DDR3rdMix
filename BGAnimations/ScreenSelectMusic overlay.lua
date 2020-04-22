return Def.ActorFrame {
	LoadActor( "_style" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+82);
	};
	LoadActor("Ind1p")..{
		OnCommand=cmd(x,SCREEN_LEFT+128;y,SCREEN_BOTTOM-197);
	};
	LoadActor("Ind2p")..{
		OnCommand=cmd(x,SCREEN_RIGHT-128;y,SCREEN_BOTTOM-197);
	};
	LoadActor("norm_stage")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-108;y,SCREEN_CENTER_Y-16);
	};
};