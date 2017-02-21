local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X+105;y,SCREEN_CENTER_Y-74;horizalign,"left");
	LoadFont("_system2")..{
		OnCommand=function(self)
		self:settext("LESSON");
		end;
	};
};

return t;