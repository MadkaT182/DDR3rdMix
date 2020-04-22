return Def.ActorFrame {
	LoadFont("_nonstop") .. {
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
	};
	LoadActor("courselist")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-304;y,SCREEN_CENTER_Y);
	};
	LoadActor("selcours")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-2;y,SCREEN_CENTER_Y-216);
	};
	LoadActor("../Ind1p")..{
		OnCommand=cmd(x,SCREEN_LEFT+167;y,SCREEN_BOTTOM-84;)
	};
	LoadActor("../Ind2p")..{
		OnCommand=cmd(x,SCREEN_RIGHT-167;y,SCREEN_BOTTOM-84;);
	};
};