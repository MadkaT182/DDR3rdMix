local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "bg" )..{
		InitCommand=cmd(Center;addx,24;addy,8);
	}
};

return t