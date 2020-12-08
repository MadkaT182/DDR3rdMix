return Def.ActorFrame {
	LoadActor("bg")..{
		OnCommand=cmd(Center);
	};
	LoadActor("overlay")..{};
}