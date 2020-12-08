return Def.ActorFrame {
	LoadActor("bg")..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("songbg")..{
		OnCommand=cmd(Center;addy,173);
	};
};