return Def.ActorFrame {
	Def.ActorFrame{
		LoadActor("nsr")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+37;);
		};
		Condition=GAMESTATE:IsCourseMode();
	};
	Def.ActorFrame {
		LoadActor("str")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+37;);
		};
		Condition=not GAMESTATE:IsCourseMode();
	};
	LoadActor("grade");
	LoadActor("cd")..{
		InitCommand=cmd(zoom,.3281);
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+43);
	};
	LoadActor("stats")..{
		OnCommand=cmd(y,SCREEN_CENTER_Y-64)
	};
	LoadFont("ScreenSystemLayer credits normal") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+68;maxwidth,SCREEN_WIDTH;playcommand,"Set");
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
		OffCommand=cmd();
		Condition=GAMESTATE:IsCourseMode()
	};
};