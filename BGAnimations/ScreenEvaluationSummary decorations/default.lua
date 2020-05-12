return Def.ActorFrame {
	LoadActor( "tot" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+37;);
	};
	LoadActor("grade")..{
		OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
	};
	LoadActor("cd")..{
		InitCommand=cmd(zoom,.3281);
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+43;addx,-STATSMAN:GetStagesPlayed()/2*78);
	};
	LoadActor("stats")..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-64);
	};
};