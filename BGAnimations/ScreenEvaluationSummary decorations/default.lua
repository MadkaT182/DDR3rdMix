local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "tot" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+37;);
	}
};

return t