return Def.ActorFrame {
	LoadFont("_service")..{
		Text="MAIN MENU";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+23);
	};
	LoadFont("_service")..{
		Text="PRESS 1P LEFT/RIGHT = SELECT ITEM";
		InitCommand=cmd(x,SCREEN_CENTER_X-265;y,SCREEN_BOTTOM-57;horizalign,left);
	};
	LoadFont("_service")..{
		Text="PRESS 1P START BUTTON = DO CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X-265;y,SCREEN_BOTTOM-41;horizalign,left);
	};
	LoadFont("_service")..{
		Text="VER:AAA";
		InitCommand=cmd(x,SCREEN_RIGHT-59;y,SCREEN_BOTTOM-9);
	};
};