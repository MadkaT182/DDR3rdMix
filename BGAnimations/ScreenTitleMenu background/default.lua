return Def.ActorFrame {
	--Logo
	LoadActor( "../logobg" )..{
		OnCommand=cmd(FullScreen);
	};
	--Filter
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,.8);
	};
	--Title
	LoadFont("LyricDisplay text")..{
	InitCommand=cmd(addx,SCREEN_WIDTH/2;y,SCREEN_TOP+67;diffusecolor,color("#ECF414"));
		OnCommand=function(self)
		self:settext("MODE SELECTION");
		end;
	};
}