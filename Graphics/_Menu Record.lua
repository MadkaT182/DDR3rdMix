local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-200;y,SCREEN_CENTER_Y+4;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("RECORDS");
		end;
	};
};

return t;