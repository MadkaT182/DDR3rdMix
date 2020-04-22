return Def.ActorFrame {
	LoadActor("title")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+47);
		OnCommand=cmd(addx,43;diffusealpha,0;linear,.166;addx,-43;diffusealpha,1);
	};
	LoadActor(THEME:GetPathG("Common",IsHome() and "ui/selst_cs" or "ui/selst_ac"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-219;y,SCREEN_CENTER_Y-86;diffuseblink);
	};
}