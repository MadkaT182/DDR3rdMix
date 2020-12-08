return Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropright,0.5;x,SCREEN_LEFT;sleep,1;linear,0.25;addx,SCREEN_WIDTH/2);
	};
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,0.5;x,SCREEN_RIGHT;sleep,1;linear,0.25;addx,-SCREEN_WIDTH/2);
	};
	LoadActor("close")..{
		StartTransitioningCommand=cmd(sleep,1;queuecommand,"Snd");
		SndCommand=cmd(play);
	};
};