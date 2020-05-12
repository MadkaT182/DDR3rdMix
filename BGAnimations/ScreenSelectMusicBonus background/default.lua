return Def.ActorFrame {
	LoadActor("bg")..{
		OnCommand=cmd(FullScreen);
	};
	Def.ActorFrame{
		OnCommand=cmd(y,SCREEN_CENTER_Y+172);
		LoadActor("trial")..{
			OnCommand=cmd(x,SCREEN_CENTER_X-230);
		};
		LoadActor("trial")..{
			OnCommand=cmd(x,SCREEN_CENTER_X+230);
		};
	};
};