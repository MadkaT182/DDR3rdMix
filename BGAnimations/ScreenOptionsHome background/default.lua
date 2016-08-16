-- ScreenHowToPlay background
local ar = GetScreenAspectRatio();

local t = Def.ActorFrame{
	-- bgtile
	LoadActor("optionbg")..{
		InitCommand=cmd(Center;FullScreen;);
		OnCommand=function(self)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(0,0,w*.7,h*1);
			self:texcoordvelocity(-0.5,-0.5);
		end;
	};
}
return t;