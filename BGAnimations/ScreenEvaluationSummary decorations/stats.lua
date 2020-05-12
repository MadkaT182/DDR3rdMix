local t = Def.ActorFrame {};

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	local Combo = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):MaxCombo();
	local Marvelous = string.format("% 4d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W1"));
	local Perfect = string.format("% 4d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W2"));
	local Great = string.format("% 4d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W3"));
	local Good = string.format("% 4d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W4"));
	local Almost = string.format("% 4d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W5"));
	local Ok = string.format("% 4d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_Held"));
	local Ng = string.format("% 4d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_LetGo"));
	local Boo = string.format("% 4d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_Miss"));
	local Score = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetScore();
	local ScTotal = STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetScore();

	local Mfix = PREFSMAN:GetPreference("AllowW1") ~= "AllowW1_Everywhere" and -30 or 0;

	t[#t+1] = Def.ActorFrame{
		OnCommand=cmd(x,player==PLAYER_1 and SCREEN_CENTER_X-72 or SCREEN_CENTER_X+240);

		Def.RollingNumbers {
			File = THEME:GetPathF("", "_resultNum");
			InitCommand=cmd(y,SCREEN_CENTER_Y-246;addx,28;horizalign,right;playcommand,"Set");
			SetCommand = function (self)
				self:Load("RollingNumbersSC1");
				self:targetnumber(STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W1"));
			end;
			Condition=Mfix==0
		};
		LoadFont("_resultLbl")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-246;addx,-96;horizalign,right;);
			OnCommand=function(self)
				self:settextf("MARVELOUS");
			end;
			Condition=Mfix==0
		};
		--Perfect--
		Def.RollingNumbers {
			File = THEME:GetPathF("", "_resultNum");
			InitCommand=cmd(y,SCREEN_CENTER_Y-216+Mfix;addx,28;horizalign,right;diffusealpha,Mfix==0 and 0 or 1;sleep,Mfix==0 and 1.377 or 0;queuecommand,"Set");
			SetCommand = function (self)
				self:diffusealpha(1);
				self:Load(Mfix==0 and "RollingNumbersSC3" or "RollingNumbersSC1");
				self:targetnumber(Perfect);
			end;
		};
		LoadFont("_resultLbl")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-216+Mfix;addx,-96;horizalign,right;diffusealpha,Mfix==0 and 0 or 1);
			OnCommand=function(self)
				self:sleep(1.377);
				self:diffusealpha(1);
				self:settextf("PERFECT");
			end;
		};
		--Great--
		Def.RollingNumbers {
			File = THEME:GetPathF("", "_resultNum");
			InitCommand=cmd(y,SCREEN_CENTER_Y-186+Mfix;addx,28;horizalign,right;diffusealpha,0;sleep,1.611;queuecommand,"Set");
			SetCommand = function (self)
				self:linear(.033);
				self:diffusealpha(1);
				self:Load("RollingNumbersSC3");
				self:targetnumber(Great);
			end;
		};
		LoadFont("_resultLbl")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-186+Mfix;addx,-96;horizalign,right;diffusealpha,0);
			OnCommand=function(self)
				self:sleep(1.611);
				self:linear(.033);
				self:diffusealpha(1);
				self:settextf("GREAT");
			end;
		};
		Def.RollingNumbers {
			File = THEME:GetPathF("", "_resultNum");
			InitCommand=cmd(y,SCREEN_CENTER_Y-156+Mfix;addx,28;horizalign,right;diffusealpha,0;sleep,1.611;queuecommand,"Set");
			SetCommand = function (self)
				self:linear(.033);
				self:diffusealpha(1);
				self:Load("RollingNumbersSC3");
				self:targetnumber(Good);
			end;
		};
		LoadFont("_resultLbl")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-156+Mfix;addx,-96;horizalign,right;diffusealpha,0);
			OnCommand=function(self)
				self:sleep(1.611);
				self:linear(.033);
				self:diffusealpha(1);
				self:settextf("Good");
			end;
		};
		--Boo--
		Def.RollingNumbers {
			File = THEME:GetPathF("", "_resultNum");
			InitCommand=cmd(y,SCREEN_CENTER_Y-126+Mfix;addx,28;horizalign,right;diffusealpha,0;sleep,1.611;queuecommand,"Set");
			SetCommand = function (self)
				self:linear(.033);
				self:diffusealpha(1);
				self:Load("RollingNumbersSC3");
				self:targetnumber(Almost);
			end;
		};
		LoadFont("_resultLbl")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-126+Mfix;addx,-96;horizalign,right;diffusealpha,0);
			OnCommand=function(self)
				self:sleep(1.611);
				self:linear(.033);
				self:diffusealpha(1);
				self:settextf("Boo");
			end;
		};
		--Miss--
		Def.RollingNumbers {
			File = THEME:GetPathF("", "_resultNum");
			InitCommand=cmd(y,SCREEN_CENTER_Y-96+Mfix;addx,28;horizalign,right;diffusealpha,0;sleep,1.611;queuecommand,"Set");
			SetCommand = function (self)
				self:linear(.033);
				self:diffusealpha(1);
				self:Load("RollingNumbersSC3");
				self:targetnumber(Boo);
			end;
		};
		LoadFont("_resultLbl")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-96+Mfix;addx,-96;horizalign,right;diffusealpha,0);
			OnCommand=function(self)
				self:sleep(1.611);
				self:linear(.033);
				self:diffusealpha(1);
				self:settextf("MISS");
			end;
		};
		--Saved--
		LoadFont("_resultNum")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-66+Mfix;addx,28;horizalign,right;diffusealpha,0);
			OnCommand=function(self)
				self:sleep(1.611);
				self:linear(.033);
				self:diffusealpha(1);
				self:settextf("----");
			end;
			Condition=Mfix~=0
		};
		LoadFont("_resultLbl")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-66+Mfix;addx,-96;horizalign,right;diffusealpha,0);
			OnCommand=function(self)
				self:sleep(1.611);
				self:linear(.033);
				self:diffusealpha(1);
				self:settextf("SAVED");
			end;
			Condition=Mfix~=0
		};
		--Max Combo--
		Def.RollingNumbers {
			File = THEME:GetPathF("Combo", "numbers");
			InitCommand=cmd(y,SCREEN_CENTER_Y-64;addx,28;horizalign,right;playcommand,"Set");
			SetCommand = function (self)
				self:Load("RollingNumbersSC2");
				self:targetnumber(Combo);
			end;
			Condition=not STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):FullCombo()
		};

		Def.RollingNumbers {
			File = THEME:GetPathF("FC", "numbers");
			InitCommand=cmd(y,SCREEN_CENTER_Y-62;addx,28;horizalign,right;playcommand,"Set");
			SetCommand = function (self)
				self:textglowmode('TextGlowMode_Inner');
				self:glowblink();
				self:effectperiod(.1);
				self:Load("RollingNumbersSC2");
				self:targetnumber(Combo);
			end;
			Condition=STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):FullCombo()
		};

		LoadFont("_resultLbl")..{
			InitCommand=cmd(y,SCREEN_CENTER_Y-66;x,-88;horizalign,right;diffuse,color("#E85038");diffusealpha,0);
			OnCommand=function(self)
				self:sleep(.1);
				self:diffusealpha(1);
				self:settextf("MAX COMBO");
			end;
		};
		--Scores
		Def.ActorFrame{
			InitCommand=cmd(x,-132;y,255);
			LoadActor(THEME:GetPathG("ScreenGameplay", "ScoreFrame/normal"));
			LoadFont("ScoreDisplayTotal Text")..{
				InitCommand=function(self)
					self:x(108);
					self:horizalign(right);
					self:settext(Score);
				end;
			};
		};
	};
end

return t;