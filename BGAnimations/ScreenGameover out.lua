return Def.ActorFrame {
	--Black overlay
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,Color.Black;diffusealpha,0;sleep,2.152;linear,0.5;diffusealpha,1;);
	};
	--Title
	LoadFont("LyricDisplay text")..{
	InitCommand=cmd(addx,SCREEN_WIDTH/2;y,SCREEN_TOP+187;diffusecolor,color("#3EFF47"));
		OnCommand=function(self)
		self:settext("THANK YOU FOR PLAYING");
		end;
	};
	--Game over
	LoadActor("ScreenGameover decorations/gameover")..{
		OnCommand=cmd(Center;addy,1);
	};
};