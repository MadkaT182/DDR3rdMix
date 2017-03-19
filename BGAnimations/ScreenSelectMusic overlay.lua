local t = Def.ActorFrame {};

--Player Indicator
t[#t+1] = Def.ActorFrame {
	LoadActor("Ind1p")..{
		InitCommand=cmd(x,SCREEN_LEFT+147;y,SCREEN_BOTTOM-190;)
	};
	LoadActor("Ind2p")..{
		InitCommand=cmd(x,SCREEN_RIGHT-147;y,SCREEN_BOTTOM-190;);
	};
};

return t