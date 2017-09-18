local perc = 0;
local loadtm = 76.64;
local timeunit = loadtm/100;
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("boota")..{
		InitCommand=cmd(Center);
	};
	LoadActor("bootb")..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,76.68;diffusealpha,1);
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,color("#FFFFFF");diffusealpha,0;sleep,79.52;diffusealpha,1;sleep,.12;diffusealpha,0);
	};
	LoadActor("bootc")..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,79.64;diffusealpha,1);
	};
};

t[#t+1] = LoadFont("_service")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-9;horizalign,right);
	OnCommand=function(self)
		if perc == 100 then
			self:settextf("");
		else
			self:horizalign(right);
			self:settextf(perc);
			self:queuecommand("Incr");
		end;
	end;
	IncrCommand=function(self)
		perc = perc+1;
		self:sleep(timeunit);
		self:queuecommand("On");
	end;
};

return t