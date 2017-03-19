local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "bg" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-11);
	};
	LoadActor( "title" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-69);
	};
--Dancers
	LoadActor("../ScreenTitleMenu background/md")..{
		InitCommand=cmd(Center;addx,-200;addy,10;zoom,1.81;diffuse,.4,.4,1,2;playcommand,"Set");
		Condition=GAMESTATE:IsSideJoined(PLAYER_1);
	};
	LoadActor("../ScreenTitleMenu background/fd")..{
		InitCommand=cmd(Center;addx,200;addy,10;zoom,1.81;diffuse,.95,.8,.7,.65;playcommand,"Set");
		Condition=GAMESTATE:IsSideJoined(PLAYER_2);
	};
};

return t