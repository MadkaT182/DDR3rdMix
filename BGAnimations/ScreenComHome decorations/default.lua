local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "kcet" )..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,3;linear,.3;diffusealpha,1;sleep,3;linear,0.3;diffusealpha,0);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "xax" )..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,6.4;linear,.3;diffusealpha,1;sleep,3;linear,0.3;diffusealpha,0);
	}
};

return t