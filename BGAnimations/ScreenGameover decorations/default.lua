local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../doorbg" )..{
		OnCommand=cmd(FullScreen);
	};
	--Discs
	LoadActor("discs")..{};
};

t[#t+1] = Def.ActorFrame {
	--Title
	LoadFont("LyricDisplay text")..{
	InitCommand=cmd(addx,SCREEN_WIDTH/2;y,SCREEN_TOP+187;diffusecolor,color("#3EFF47"));
		OnCommand=function(self)
		self:settext("THANK YOU FOR PLAYING");
		end;
	};
	--Game over
	LoadActor("gameover")..{
		OnCommand=cmd(Center;addy,1);
	};
};

t[#t+1] = Def.ActorFrame {
	SOUND:PlayAnnouncer("game over")
};

return t