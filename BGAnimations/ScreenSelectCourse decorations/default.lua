local t = Def.ActorFrame {};
--Course Name
t[#t+1] = LoadFont("_nonstop") .. {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-92;maxwidth,SCREEN_WIDTH);
	SetCommand=function(self)
		local course = GAMESTATE:GetCurrentCourse();
		if course then
			if GroupNameChange then
				self:settext(ChangeGroupName(course:GetDisplayFullTitle()));
			else
				self:settext(course:GetDisplayFullTitle());
			end;
		end;
	end;
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	OffCommand=cmd();
};
return t