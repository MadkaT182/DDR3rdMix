return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;sleep,.3;linear,.5;diffusealpha,1);
	};
	LoadActor("../_doorclose/delay");
	LoadActor("cleared")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2;sleep,2);
	};
};