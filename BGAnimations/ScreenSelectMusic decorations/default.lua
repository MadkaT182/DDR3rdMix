return Def.ActorFrame {
	LoadActor("cd");
	LoadActor("diff")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+124);
	};
	LoadActor("title");
	LoadActor("arr1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-172;y,SCREEN_CENTER_Y+54);
	};
	LoadActor("arr1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+178;y,SCREEN_CENTER_Y+54;zoomx,-1);
	};
	LoadActor("arr2")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-172;y,SCREEN_CENTER_Y+54;diffusealpha,0);
		PreviousSongMessageCommand=cmd(stoptweening;x,SCREEN_CENTER_X-172;smooth,0.1;diffusealpha,1;smooth,0.1;diffusealpha,0;);
	};
	LoadActor("arr2")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+178;y,SCREEN_CENTER_Y+54;diffusealpha,0;zoomx,-1);
		NextSongMessageCommand=cmd(stoptweening;x,SCREEN_CENTER_X+178;smooth,0.1;diffusealpha,1;smooth,0.1;diffusealpha,0;);
	};
	LoadActor("selmus")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+43);
	};
	LoadActor("bnrframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-99);
	};
	LoadActor(THEME:GetPathG("Common",IsHome() and "ui/selst_cs" or "ui/selst_ac"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+245;y,SCREEN_CENTER_Y+170;diffuseblink);
	};
};