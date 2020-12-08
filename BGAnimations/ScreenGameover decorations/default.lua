return Def.ActorFrame {
	InitVars();
	LoadActor( "../doorbg" )..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("discs");
	LoadFont("LyricDisplay text")..{
		Text="THANK YOU FOR PLAYING";
		InitCommand=cmd(x,SCREEN_WIDTH/2;y,SCREEN_TOP+187;diffusecolor,color("#3EFF47"));
	};
	LoadActor("gameover")..{
		OnCommand=cmd(Center;addy,1);
	};
	Def.ActorFrame {
		SOUND:PlayAnnouncer("game over")
	};
};