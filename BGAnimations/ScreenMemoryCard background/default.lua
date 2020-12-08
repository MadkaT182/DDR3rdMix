return Def.ActorFrame {
	LoadActor("memcard")..{
		OnCommand=cmd(FullScreen);
	};
}