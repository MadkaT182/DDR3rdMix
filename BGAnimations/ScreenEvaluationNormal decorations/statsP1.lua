local t = Def.ActorFrame {};

local Space = 'oooo';
local Combo = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):MaxCombo();

local Marvelous = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W1"), -4);
local Perfect = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W2"), -4);
local Great = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W3"), -4);
local Good = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W4"), -4);
local Almost = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W5"), -4);
local Ok = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetHoldNoteScores("HoldNoteScore_Held"), -4);
local Ng = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetHoldNoteScores("HoldNoteScore_LetGo"), -4);
local Boo = string.sub(Space..STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_Miss"), -4);

--Marvelous--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-246;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Marvelous);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-246;addx,-96;horizalign,right;);
	OnCommand=function(self)
		self:settextf("MARVELOUS");
	end;
};
--Perfect--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-216;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Perfect);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-216;addx,-96;horizalign,right;);
	OnCommand=function(self)
		self:settextf("PERFECT");
	end;
};
--Great--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-186;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Great);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-186;addx,-96;horizalign,right;);
	OnCommand=function(self)
		self:settextf("GREAT");
	end;
};
--Good--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-156;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Good);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-156;addx,-96;horizalign,right;);
	OnCommand=function(self)
		self:settextf("Good");
	end;
};
--Boo--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-126;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Almost);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-126;addx,-96;horizalign,right;);
	OnCommand=function(self)
		self:settextf("Boo");
	end;
};
--Miss--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-96;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Boo);
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-96;addx,-96;horizalign,right;);
	OnCommand=function(self)
		self:settextf("MISS");
	end;
};
--Saved--
t[#t+1] = LoadFont("_resultNum")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-66;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf("----");
	end;
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-66;addx,-96;horizalign,right;);
	OnCommand=function(self)
		self:settextf("SAVED");
	end;
};
--Max Combo--
t[#t+1] = LoadFont("Combo numbers")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-33;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Combo);
	end;
	Condition=not STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):FullCombo()
};
t[#t+1] = LoadFont("FC numbers")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-33;addx,28;horizalign,right;);
	OnCommand=function(self)
		self:settextf(Combo);
		self:textglowmode('TextGlowMode_Inner');
		self:glowblink();
		self:effectperiod(.1);
	end;
	Condition=STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):FullCombo()
};
t[#t+1] = LoadFont("_resultLbl")..{
	InitCommand=cmd(player,PLAYER_1;y,SCREEN_CENTER_Y-33;addx,-88;horizalign,right;diffuse,color("#FF0000"));
	OnCommand=function(self)
		self:settextf("MAX COMBO");
	end;
};

return t;
