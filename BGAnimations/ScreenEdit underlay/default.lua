return Def.ActorFrame {
	LoadActor("grid")..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("editfg")..{
		OnCommand=cmd(Center);
	};
}