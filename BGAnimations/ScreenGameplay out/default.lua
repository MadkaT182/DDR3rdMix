local t = Def.ActorFrame {};

t[#t+1] = Def.Quad{
	InitCommand=cmd(Center;FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;sleep,.3;linear,0.5;diffusealpha,1);
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_doorclose" )..{}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "cleared" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2;sleep,2);
	}
};

return t