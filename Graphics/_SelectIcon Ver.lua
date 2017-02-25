local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-52;y,SCREEN_CENTER_Y;);
	LoadFont("_system1")..{
		OnCommand=function(self)
		self:settext("VERSUS");
		end;
	};
};

return t;