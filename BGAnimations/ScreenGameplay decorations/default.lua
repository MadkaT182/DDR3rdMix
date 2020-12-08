local maxSegments = 150;

return Def.ActorFrame {
	LoadActor("../ScreenGameplay Danger");
	LoadActor("../_lifebar");
	LoadActor("../_stageFrame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+54);
	};
	StandardDecorationFromFile("ScoreFrame","ScoreFrame");
	LoadActor( "../_style" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-72);
	};
	LoadActor( "../_playmode" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM);
	};
};