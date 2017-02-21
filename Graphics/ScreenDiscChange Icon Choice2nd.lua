local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X+164;y,SCREEN_CENTER_Y-21);

	LoadActor("DiscCh/2nd")..{
	};
	LoadActor("DiscCh/selector")..{
		GainFocusCommand=cmd(diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadFont("_system1")..{
		GainFocusCommand=cmd(diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
		OnCommand=function(self)
		self:settext("Dance Dance Revolution\n2nd ReMIX");
		self:zoom(.5);
		self:addy(129);
		end;
	};
};

return t;