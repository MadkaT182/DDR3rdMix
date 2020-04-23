local difficulty;
return Def.ActorFrame{
	LoadFont("_diff_normal")..{
		InitCommand=function(self)
			self:shadowlength(6);
			self:playcommand("Update");
		end;
		UpdateCommand=function(self)
			for player in ivalues(GAMESTATE:GetHumanPlayers()) do
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(player);
				if song and steps ~= nil then
					local diff = GAMESTATE:GetCurrentSteps(player):GetDifficulty();
					local meter = steps:GetMeter();
					local fixmeter = 0;
					if meter > 9 then
						fixmeter = 9;
						self:textglowmode('TextGlowMode_Inner');
						self:diffuseshift();
						self:effectcolor1(color(GetDifficultyColor(diff)));
						self:effectcolor2(.7,.7,.7,1);
					else
						fixmeter = meter;
						self:stopeffect();
					end
					self:settext(string.rep("0",fixmeter));
					self:diffuse(color(GetDifficultyColor(diff)));
				else
					self:settext("");
				end
			end;
		end;
	};
	LoadFont("diff_lbl")..{
		InitCommand=cmd(y,37;shadowlength,4;playcommand,"Update");
		UpdateCommand=function(self)
			difficulty = 999;
			for player in ivalues(GAMESTATE:GetHumanPlayers()) do
				local song = GAMESTATE:GetCurrentSong();
				local steps = GAMESTATE:GetCurrentSteps(player);
				if song then
					if song and steps ~= nil then
						diff = GAMESTATE:GetCurrentSteps(player):GetDifficulty();
						difficulty = steps:GetMeter();
					end
				end
			end;
			self:settext(GetDifficultyName(difficulty));
			if difficulty > 9 then
				self:textglowmode('TextGlowMode_Inner');
				self:diffuseshift();
				self:effectcolor1(color(GetDifficultyColor(diff)));
				self:effectcolor2(.7,.7,.7,1);
			else
				self:diffuse(color(GetDifficultyColor(diff)));
				self:stopeffect();
			end
		end;
	};
	CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
	CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Update");
	CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Update");
}