local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "bg" )..{
		OnCommand=cmd(Center;FullScreen;)
	}
};

return t