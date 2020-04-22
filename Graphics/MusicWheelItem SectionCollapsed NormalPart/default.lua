local t = Def.ActorFrame{
--Back
LoadActor("bottom")..{};
--Cover
Def.Sprite{
	Name="Cover";
	SetMessageCommand=function(self,params)
		local group = params.Text;
		if group then
			coverimg = GetCase(group)
			if group == "fallback" then
				--Create custom Case graphic
				--TODO ^_^
				self:Load(THEME:GetPathG("", "MusicWheelItem SectionCollapsed NormalPart/cover/"..coverimg));
				self:setsize(256,256);
			else
				self:Load(THEME:GetPathG("", "MusicWheelItem SectionCollapsed NormalPart/cover/"..coverimg));
				self:setsize(256,256);
				self:x(20);
				self:y(4);
			end;
		end;
	end;
};

--Overlay
LoadActor("top")..{};
};

return t;