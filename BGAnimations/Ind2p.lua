return Def.ActorFrame{
	LoadActor("ScreenTitleMenu background/fd")..{
		InitCommand=cmd(zoom,2;diffuse,1,.4,.8,.8;y,-12;blend,"BlendMode_Add");
		Condition=GAMESTATE:IsSideJoined(PLAYER_2);
	};
	LoadActor("2p")..{
		InitCommand=cmd(y,44;x,10);
		Condition=GAMESTATE:IsSideJoined(PLAYER_2);
	};
};