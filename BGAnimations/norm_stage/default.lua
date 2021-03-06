local t = LoadActor("stage") .. {
	BeginCommand=cmd(playcommand,"Update");
	CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
	UpdateCommand=cmd(playcommand,"Set", {
		StageToShow = GAMESTATE:GetCurrentStage();
		StageNumber = GAMESTATE:GetCurrentStageIndex();
	} );
	Condition=not GAMESTATE:IsDemonstration()
};

return t;