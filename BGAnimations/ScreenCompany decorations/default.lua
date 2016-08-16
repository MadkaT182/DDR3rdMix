local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "konami" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
	}
};

t[#t+1] = Def.Quad{
	InitCommand=cmd(Center;FullScreen;diffusecolor,color("#FFFFFF"););
};

-- t[#t+1] = Def.ActorFrame {
-- 	SOUND:PlayAnnouncer("game over")
-- };

return t