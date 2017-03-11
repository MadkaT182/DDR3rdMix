local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X+190;y,SCREEN_CENTER_Y-101);
	GainFocusCommand=cmd(zoom,1;diffuse,1,1,1,1);
	LoseFocusCommand=cmd(zoom,.7349;diffuse,0.25,0.25,0.25,1);

	LoadActor("Mode/speaker")..{};
	LoadActor("Mode/blue")..{};
	LoadActor("Mode/nonstop")..{
		OnCommand=cmd(addy,-19;addx,-4;);
		GainFocusCommand=cmd(diffuse,color("#48D4FE"));
		LoseFocusCommand=cmd(diffuse,color("#FFFFFF"));
	};
	LoadFont("_stages")..{
		OnCommand=function(self)
		self:settext("4");
		self:horizalign("right");
		self:addy(49);
		self:addx(-48);
		end;
	};
	LoadFont("_system3")..{
		OnCommand=function(self)
			self:settext("STAGES");
			self:horizalign("left");
			self:addy(48);
			self:addx(-48);
		end;
	};
};

return t;