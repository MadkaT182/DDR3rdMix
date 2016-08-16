local t = Def.ActorFrame {};

t[#t+1] = Def.Quad{
	InitCommand=cmd(Center;FullScreen;diffusecolor,color("#000000");diffusealpha,0;sleep,.3;linear,0.7;diffusealpha,1);
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "gate" )..{
		OnCommand=function(self)
			local w = self:GetWidth()/2;
			self:y(SCREEN_CENTER_Y);
			self:x(SCREEN_RIGHT+w);
			self:accelerate(0.2);
			self:x(SCREEN_LEFT+w);
			self:sleep(0.05);
			self:linear(0.05);
			self:addx(30);
			self:sleep(0.05);
			self:linear(0.05);
			self:addx(-30);
			self:sleep(0.05);
			self:linear(0.05);
			self:addx(20);
			self:sleep(0.05);
			self:linear(0.05);
			self:addx(-20);
			self:sleep(0.05);
			self:linear(0.05);
			self:addx(10);
			self:sleep(0.05);
			self:linear(0.05);
			self:addx(-10);
			self:sleep(0.05);
			self:linear(0.05);
			self:addx(5);
			self:sleep(0.05);
			self:linear(0.05);
			self:addx(-5);
		end
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "failed" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,0.1;linear,.3;diffusealpha,1);
	}
};

return t