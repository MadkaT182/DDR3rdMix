local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-230;y,SCREEN_CENTER_Y+30;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("OPTION");
		end;
	};
};

return t;