local t = Def.ActorFrame{};

--P1 ScoreFrame
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = LoadActor("normal")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-204);
	}
end

--P2 ScoreFrame
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = LoadActor("normal")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+204);
	}
end

return t