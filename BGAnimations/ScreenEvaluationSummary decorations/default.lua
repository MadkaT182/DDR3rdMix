local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "tot" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+37;);
	}
};

--Grade
t[#t+1] = LoadActor("grade")..{
	OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
};

--CD
t[#t+1] = Def.ActorFrame {
	LoadActor( "cd" )..{
		InitCommand=cmd(zoom,.3281);
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+43);
	}
};

--Player stats
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	--Statsp1
	t[#t+1] = LoadActor("statsP1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-72;y,SCREEN_CENTER_Y-64)
	};
	--Total score p1
	t[#t+1] = Def.RollingNumbers {
		File = THEME:GetPathF("ScoreDisplayTotal", "Text");
		InitCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_CENTER_Y+257;playcommand,"Set");
		SetCommand = function (self)
			local score = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
			self:Load("RollingNumbersEvaluation");
			self:targetnumber(score);
			self:addy(-61);
		end;
	};
end

if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	--Statsp2
	t[#t+1] = LoadActor("statsP2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+48;y,SCREEN_CENTER_Y-64)
	};
	--Total score p1
	t[#t+1] = Def.RollingNumbers {
		File = THEME:GetPathF("ScoreDisplayTotal", "Text");
		InitCommand=cmd(x,SCREEN_CENTER_X+204;y,SCREEN_CENTER_Y+257;playcommand,"Set");
		SetCommand = function (self)
			local score = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
			self:Load("RollingNumbersEvaluation");
			self:targetnumber(score);
			self:addy(-61);
		end;
	};
end

return t