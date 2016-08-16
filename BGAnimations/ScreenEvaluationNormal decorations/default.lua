local t = Def.ActorFrame {};

if GAMESTATE:IsCourseMode() then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "nsr" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+37;);
		}
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor( "str" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+37;);
		}
	};
end;

--Player stats
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	--Statsp1
	t[#t+1] = LoadActor("statsP1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-72;y,SCREEN_CENTER_Y-64)
	};
end

if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	--Statsp2
	t[#t+1] = LoadActor("statsP2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+131;y,SCREEN_CENTER_Y-64)
	};
end

return t