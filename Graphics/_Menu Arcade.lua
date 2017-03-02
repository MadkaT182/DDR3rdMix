local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-178;y,SCREEN_CENTER_Y-100;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("ARCADE MODE");
		end;
	};
};

return t;