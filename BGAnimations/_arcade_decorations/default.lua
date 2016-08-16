local t = Def.ActorFrame {};

--Artist Information
t[#t+1] = LoadFont("_system1") .. {
	InitCommand=cmd(horizalign,center;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-108;);
	OnCommand=cmd(playcommand,"Refresh");
	CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
	CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local bCanPlay = GAMESTATE:EnoughCreditsToJoin();
		local bReady = GAMESTATE:GetNumSidesJoined() > 0;
		local sText = ""

		if bCanPlay or bReady then
			sText = "PUSH START BUTTON";
		else
			sText = "INSERT COIN(S)";
		end

		if GAMESTATE:IsEventMode() then
			sText = "EVENT MODE";
		else
			sText = "FREE PLAY";
		end

		self:settext( sText );
		self:diffuseshift();
		self:effectcolor1(1,1,1,0);
		self:effectcolor2(1,1,1,1);
		self:effectperiod(0.5);
	end;
}

return t