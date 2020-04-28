return Def.ActorFrame {
	LoadActor("trainingbg")..{
		OnCommand=cmd(Center);
	};
	LoadActor("frame")..{
		OnCommand=cmd(Center);
	};
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+40);
	};
	LoadActor("groupframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+110);
	};
	LoadActor("musicframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+180);
	};
	LoadActor("bannerframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+50);
	};
	LoadActor("practiceframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+184);
	};
}