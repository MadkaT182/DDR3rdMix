local t = Def.ActorFrame {
	LoadActor("../../eval1")..{
		OnCommand=cmd(play);
	};
	LoadActor("../../eval2")..{
		OnCommand=cmd(sleep,2.966;queuecommand,"Anim");
		AnimCommand=cmd(play);
	};
};

local function TierToState(Grade)
	local StateNumber = {
		["Grade_Tier01"] = 0,
		["Grade_Tier02"] = 1,
		["Grade_Tier03"] = 2,
		["Grade_Tier04"] = 3,
		["Grade_Tier05"] = 4,
		["Grade_Tier06"] = 5,
		["Grade_Tier07"] = 6,
		["Grade_Failed"] = 7,
	};

	return StateNumber[Grade] or 7;
end

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = Def.ActorFrame {
		LoadActor("Tiers")..{
			InitCommand=cmd(x,player==PLAYER_1 and SCREEN_CENTER_X-228 or SCREEN_CENTER_X+218;y,SCREEN_CENTER_Y-152;SetAllStateDelays,.033);
			OnCommand=cmd(sleep,1.521;queuecommand,"Anim");
			AnimCommand=cmd(setstate,TierToState(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetGrade());pause);
		};
	};
end

return t;
