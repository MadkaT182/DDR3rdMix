return Def.ActorFrame {
	LoadActor("course")..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("songframe")..{
		OnCommand=cmd(Center;addx,184;addy,-53);
	};
	LoadActor("titlebg")..{
		OnCommand=cmd(Center;addy,149);
	};
};