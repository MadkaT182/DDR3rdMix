return Def.ActorFrame{
	LoadActor("demb")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffuseblink;effectcolor1,1,1,1,0;effectcolor2,1,1,1,.8;effectperiod,.5);
	};	
	LoadActor("demw")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffuseblink;effectcolor1,1,1,1,.5;effectcolor2,1,1,1,0;effectperiod,.5);
	};
	LoadActor("../_arcade_decorations");
};