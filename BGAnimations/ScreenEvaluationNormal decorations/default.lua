local t = Def.ActorFrame {
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
};

--Grade
t[#t+1] = LoadActor("grade")..{
};

--CD
t[#t+1] = Def.ActorFrame {
	LoadActor( "cd" )..{
		InitCommand=cmd(zoom,.3281);
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+43);
	}
};

t[#t+1] = LoadActor("stats")..{
	OnCommand=cmd(y,SCREEN_CENTER_Y-64)
};

if GAMESTATE:IsCourseMode() then
	--Course Name
	t[#t+1] = LoadFont("ScreenSystemLayer credits normal") .. {
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
	};
end

return t