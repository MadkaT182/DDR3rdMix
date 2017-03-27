return Def.ActorFrame {
	LoadActor( "howtoplay" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-150;y,SCREEN_CENTER_Y-180);
	};

	LoadActor( "game" )..{
		OnCommand=cmd(z,20;x,SCREEN_LEFT;y,SCREEN_CENTER_Y-40;zoomx,.3;addx,-236;sleep,1;decelerate,0.5;addx,SCREEN_WIDTH/2+236;zoomx,1;sleep,2.5;linear,0.3;zoomy,0);
	};
	--Left
	LoadActor( "hand-pink" )..{
		OnCommand=cmd(diffusealpha,0;sleep,9.65;diffusealpha,1;x,SCREEN_CENTER_X+66;y,SCREEN_CENTER_Y-100;queuecommand,"Animate");
		AnimateCommand=cmd(addx,8.79;addy,21.21;linear,0.06;addx,21.21;addy,8.79;linear,0.06;addx,21.21;addy,-8.79;linear,0.06;addx,8.79;addy,-21.21;linear,0.06;addx,-8.79;addy,-21.21;linear,0.06;addx,-21.21;addy,-8.79;linear,0.06;addx,-21.21;addy,8.79;linear,0.06;addx,-8.79;addy,21.21;linear,0.06;addx,8.79;addy,21.21;linear,0.06;addx,21.21;addy,8.79;linear,0.06;sleep,1.2;diffusealpha,0);
	};

	LoadActor( "tapmessage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+85;diffusealpha,0;sleep,9.65;diffusealpha,1;sleep,1.86;diffusealpha,0);
	};
	--Up
	LoadActor( "hand-pink" )..{
		OnCommand=cmd(diffusealpha,0;sleep,12.8;diffusealpha,1;x,SCREEN_CENTER_X+194;y,SCREEN_CENTER_Y-100;queuecommand,"Animate");
		AnimateCommand=cmd(addx,8.79;addy,21.21;linear,0.06;addx,21.21;addy,8.79;linear,0.06;addx,21.21;addy,-8.79;linear,0.06;addx,8.79;addy,-21.21;linear,0.06;addx,-8.79;addy,-21.21;linear,0.06;addx,-21.21;addy,-8.79;linear,0.06;addx,-21.21;addy,8.79;linear,0.06;addx,-8.79;addy,21.21;linear,0.06;addx,8.79;addy,21.21;linear,0.06;addx,21.21;addy,8.79;linear,0.06;sleep,1.2;diffusealpha,0);
	};

	LoadActor( "tapmessage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+85;diffusealpha,0;sleep,12.8;diffusealpha,1;sleep,1.86;diffusealpha,0);
	};
	--Down
	LoadActor( "hand-pink" )..{
		OnCommand=cmd(diffusealpha,0;sleep,16;diffusealpha,1;x,SCREEN_CENTER_X+130;y,SCREEN_CENTER_Y-100;queuecommand,"Animate");
		AnimateCommand=cmd(addx,8.79;addy,21.21;linear,0.06;addx,21.21;addy,8.79;linear,0.06;addx,21.21;addy,-8.79;linear,0.06;addx,8.79;addy,-21.21;linear,0.06;addx,-8.79;addy,-21.21;linear,0.06;addx,-21.21;addy,-8.79;linear,0.06;addx,-21.21;addy,8.79;linear,0.06;addx,-8.79;addy,21.21;linear,0.06;addx,8.79;addy,21.21;linear,0.06;addx,21.21;addy,8.79;linear,0.06;sleep,1.2;diffusealpha,0);
	};

	LoadActor( "tapmessage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+85;diffusealpha,0;sleep,16;diffusealpha,1;sleep,1.86;diffusealpha,0);
	};
	--Jump
	LoadActor( "hand-blue" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+86;y,SCREEN_CENTER_Y-60;addy,50;diffusealpha,0;sleep,19.2;diffusealpha,1;;accelerate,.1;addy,-50;addy,-5;sleep,1;diffusealpha,0);
	};

	LoadActor( "hand-blue" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+234;y,SCREEN_CENTER_Y-60;rotationy,180;addy,50;diffusealpha,0;sleep,19.2;diffusealpha,1;accelerate,.1;addy,-50;addy,-5;sleep,1;diffusealpha,0);
	};

	LoadActor( "jumpmessage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+85;diffusealpha,0;sleep,19.2;diffusealpha,1;sleep,1.7;diffusealpha,0);
	};
	--Misstep
	LoadActor( "hand-green" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+234;y,SCREEN_CENTER_Y-154;bob;effectperiod,.4;effectmagnitude,0,8,0;diffusealpha,0;sleep,22.7;diffusealpha,1;sleep,2.7;linear,0;diffusealpha,0);
	};

	LoadActor( "missmessage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+160;y,SCREEN_CENTER_Y+85;diffusealpha,0;sleep,22.7;diffusealpha,1;sleep,22.7;diffusealpha,0);
	};
}