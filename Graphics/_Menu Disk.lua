local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-150;y,SCREEN_CENTER_Y+56;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("DISC CHANGE");
		end;
	};
};

return t;