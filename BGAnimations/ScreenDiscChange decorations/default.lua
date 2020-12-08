return Def.ActorFrame {
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+76);
	};
	LoadActor("desc")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-62;diffusealpha,.8;);
	};
	LoadActor("text")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-62);
	};
};