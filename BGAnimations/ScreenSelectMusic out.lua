local t = Def.ActorFrame {};

--Left Door
t[#t+1] = Def.ActorFrame {
	LoadActor("doorbg")..{
		OnCommand=cmd(FullScreen;cropright,0.5;x,SCREEN_LEFT;linear,.3;addx,SCREEN_WIDTH/2;sleep,.567);
	}
};

--Right Door
t[#t+1] = Def.ActorFrame {
	LoadActor("doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,0.5;x,SCREEN_RIGHT;linear,.3;addx,-SCREEN_WIDTH/2;sleep,.567);
	}
};

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("_doorclose/close")..{
		StartTransitioningCommand=cmd(play);
	};
};

return t;