local t = Def.ActorFrame {};
local hFix=0;
local vFix=0;

if not GAMESTATE:IsCourseMode() then
	--PlayMode
	t[#t+1] = Def.ActorFrame {
		LoadActor( "_style" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+82);
		}
	};
else
	vFix=105;
	hFix=19;
end;

--Player Indicator
t[#t+1] = Def.ActorFrame {
	LoadActor("Ind1p")..{
		InitCommand=cmd(x,SCREEN_LEFT+147+hFix;y,SCREEN_BOTTOM-190+vFix);
	};
	LoadActor("Ind2p")..{
		InitCommand=cmd(x,SCREEN_RIGHT-147-hFix;y,SCREEN_BOTTOM-190+vFix;);
	};
};

return t