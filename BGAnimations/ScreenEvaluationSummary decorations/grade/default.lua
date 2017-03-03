local t = Def.ActorFrame {};

--SS >= 80%Perfect rest great
--S < 80%Perfect rest great

--GRADEP1---
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame {
		LoadActor("Grade_SSS_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier01") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_SS_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier02") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_S_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier03") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_A_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier04") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_B_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier05") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_C_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier06") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_D_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier07") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_E_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Failed") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};
	};
end

--GRADEP2---
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame {
		LoadActor("Grade_SSS_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier01") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_SS_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier02") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_S_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier03") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_A_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier04") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_B_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier05") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_C_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier06") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_D_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier07") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};

		LoadActor("Grade_E_Tier")..{
			InitCommand=cmd(x,SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;zoom,0);
			OnCommand=function(self)
				if(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Failed") then
					(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
				end;
			end;
			OffCommand=cmd(linear,0.2;zoom,0);
		};
	};
end

return t;
