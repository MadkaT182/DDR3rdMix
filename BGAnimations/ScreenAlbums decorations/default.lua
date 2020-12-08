return Def.ActorFrame {
	LoadActor("bgtile");
	LoadActor("i-1")..{
		OnCommand=cmd(Center;diffusealpha,0;linear,1;diffusealpha,1;sleep,1;linear,0.5;diffusealpha,0);
	};
--Albums actor
--TODO ^_^
	LoadActor("specialthanks")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-104;y,SCREEN_CENTER_Y+191;diffusealpha,0;sleep,3;linear,0.3;diffusealpha,1;sleep,4.9;linear,0.3;diffusealpha,0);
	};
	LoadActor("megamix")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,9.5;linear,0.3;diffusealpha,1;sleep,3.0;linear,0.3;diffusealpha,0);
	};
--END Avi
--TODO ^_^
	LoadActor("albumend")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,12.5;linear,0.3;diffusealpha,1);
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;sleep,8.4;linear,0.3;diffusealpha,1;sleep,1;linear,.3;diffusealpha,0;sleep,2.3;linear,0.3;diffusealpha,1;sleep,1.3;linear,0.5;diffusealpha,0);
	};
};