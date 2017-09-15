return Def.ActorFrame {
	LoadFont("_service")..{
		Text="MEMORY CARD CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+59);
	};
	LoadFont("_service")..{
		Text="MEMORY CARD NETWORK CHECK";
		InitCommand=cmd(x,SCREEN_CENTER_X-246;y,SCREEN_CENTER_Y-143;horizalign,left);
	};
	LoadFont("_service")..{
		Text="1P CARD CHECK            DISABLE";
		InitCommand=cmd(x,SCREEN_CENTER_X-248;y,SCREEN_CENTER_Y-103;horizalign,left);
	};
	LoadFont("_service")..{
		Text="2P CARD CHECK            DISABLE";
		InitCommand=cmd(x,SCREEN_CENTER_X-248;y,SCREEN_CENTER_Y-83;horizalign,left);
	};
	LoadFont("_service")..{
		Text="PRESS 1P START BUTTON = EXIT";
		InitCommand=cmd(x,SCREEN_CENTER_X-27;y,SCREEN_BOTTOM-37);
	};
};