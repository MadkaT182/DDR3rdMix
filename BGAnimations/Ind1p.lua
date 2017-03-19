return Def.ActorFrame{
	LoadActor("ScreenTitleMenu background/md")..{
		InitCommand=cmd(zoom,2;diffuse,.4,.4,.9,.8;blend,"BlendMode_Add");
		Condition=GAMESTATE:IsSideJoined(PLAYER_1);
	};
	LoadActor("1p")..{
		InitCommand=cmd(y,44);
		Condition=GAMESTATE:IsSideJoined(PLAYER_1);
	};
};