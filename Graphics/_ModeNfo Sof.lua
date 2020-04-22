return Def.ActorFrame{
	OnCommand=cmd(addx,-36;addy,25;diffusealpha,0;linear,.133;addx,36;addy,-25;diffusealpha,1);
	GainFocusCommand=cmd(stoptweening;zoomy,0;decelerate,.267;zoomy,1;diffusealpha,1);
	LoseFocusCommand=cmd(stoptweening;linear,.133;zoomy,0;diffusealpha,0);
	Def.Quad{
		InitCommand=cmd(zoomto,326,64;diffuse,color("#38F0A888"));
	};
	LoadActor("Mode/nfo_soft");
};