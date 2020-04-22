return Def.ActorFrame{
	GainFocusCommand=cmd(stoptweening;zoomy,0;decelerate,.267;zoomy,1;diffusealpha,1);
	LoseFocusCommand=cmd(stoptweening;linear,.133;zoomy,0;diffusealpha,0);
	Def.Quad{
		InitCommand=cmd(zoomto,326,64;diffuse,color("#48D4FE88"));
	};
	LoadActor("Mode/nfo_non");
};