local t = Def.ActorFrame {};

--Left Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropright,0.5;x,SCREEN_LEFT;sleep,1;linear,0.25;addx,SCREEN_WIDTH/2);
	}
};

--Right Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,0.5;x,SCREEN_RIGHT;sleep,1;linear,0.25;addx,-SCREEN_WIDTH/2);
	}
};

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("close")..{
		StartTransitioningCommand=cmd(sleep,1;queuecommand,"Snd");
		SndCommand=cmd(play);
	};
};

return t;