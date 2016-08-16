local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../doorbg" )..{
		OnCommand=cmd(Center;FullScreen);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "gameover" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	}
};

t[#t+1] = Def.ActorFrame {
	SOUND:PlayAnnouncer("game over")
};

return t