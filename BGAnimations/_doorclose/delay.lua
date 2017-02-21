local t = Def.ActorFrame {};
local delay = 1;

--Left Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropright,0.5;x,SCREEN_LEFT;sleep,delay;linear,0.25;addx,SCREEN_WIDTH/2);
	}
};

--Right Door
t[#t+1] = Def.ActorFrame {
	LoadActor("../doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,0.5;x,SCREEN_RIGHT;sleep,delay;linear,0.25;addx,-SCREEN_WIDTH/2);
	}
};

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("close")..{
		StartTransitioningCommand=cmd(sleep,delay;queuecommand,"play");
		PlayCommand=cmd(play);
	};
};

return t;