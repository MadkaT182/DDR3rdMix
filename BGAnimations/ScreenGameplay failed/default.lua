return Def.ActorFrame {
	Def.Quad{
		InitCommand=cmd(FullScreen;diffusecolor,color("#000000");diffusealpha,0;sleep,.3;linear,0.7;diffusealpha,1);
	};
	LoadActor("gate")..{
		OnCommand=function(self)
			local w = self:GetWidth()/2;
			self:y(SCREEN_CENTER_Y);
			self:x(SCREEN_RIGHT+w);
			self:accelerate(.2);
			self:x(SCREEN_LEFT+w);
			self:sleep(.05);
			self:linear(.05);
			self:addx(30);
			self:sleep(.05);
			self:linear(.05);
			self:addx(-30);
			self:sleep(.05);
			self:linear(.05);
			self:addx(20);
			self:sleep(.05);
			self:linear(.05);
			self:addx(-20);
			self:sleep(.05);
			self:linear(.05);
			self:addx(10);
			self:sleep(.05);
			self:linear(.05);
			self:addx(-10);
			self:sleep(.05);
			self:linear(.05);
			self:addx(5);
			self:sleep(.05);
			self:linear(.05);
			self:addx(-5);
		end
	};
	LoadActor("failed")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,.1;linear,.3;diffusealpha,1);
	};
	LoadActor("../_doorclose/close")..{
		StartTransitioningCommand=cmd(play);
	};
};