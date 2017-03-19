local t = Def.ActorFrame {};

--Player Indicator
t[#t+1] = Def.ActorFrame {
	LoadActor("Ind1p")..{
		InitCommand=cmd(x,SCREEN_LEFT+167;y,SCREEN_BOTTOM-84;)
	};
	LoadActor("Ind2p")..{
		InitCommand=cmd(x,SCREEN_RIGHT-167;y,SCREEN_BOTTOM-84;);
	};
};

return t