local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "cd" )..{}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "title" )..{}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr1" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-172;y,SCREEN_CENTER_Y+54);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr1" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+178;y,SCREEN_CENTER_Y+54;zoomx,-1);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X-172;y,SCREEN_CENTER_Y+54;diffusealpha,0);
		--MenuLeftP1MessageCommand=cmd();
		--MenuLeftP2MessageCommand=cmd();
		CurrentSongChangedMessageCommand=cmd(stoptweening;x,SCREEN_CENTER_X-172;smooth,0.1;diffusealpha,1;smooth,0.1;diffusealpha,0;);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "arr2" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+178;y,SCREEN_CENTER_Y+54;diffusealpha,0;zoomx,-1);
		-- MenuRightP1MessageCommand=cmd();
		-- MenuRightP2MessageCommand=cmd();
		CurrentSongChangedMessageCommand=cmd(stoptweening;x,SCREEN_CENTER_X+178;smooth,0.1;diffusealpha,1;smooth,0.1;diffusealpha,0;);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "selmus" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+43);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "bnrframe" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-99);
	}
};

return t