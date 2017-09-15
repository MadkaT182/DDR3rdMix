return Def.ActorFrame {
	LoadFont("_service")..{
		Text="COIN OPTIONS";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+59);
	};
	LoadFont("_service")..{
		Text="PRESS 1P LEFT/RIGHT BUTTON = SELECT OPTION";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-49);
	};
	LoadFont("_service")..{
		Text="PRESS 2P START BUTTON = MODIFY SETTING";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-33);
	};
};