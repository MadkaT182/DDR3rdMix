local t = Def.ActorFrame{};

if not GAMESTATE:IsCourseMode() then return t; end;

--White flash
t[#t+1] = Def.Quad {
	--BeforeLoadingNextCourseSongMessageCommand=function(self) self:LoadFromSongBackground( SCREENMAN:GetTopScreen():GetNextCourseSong() ) end;
	--ChangeCourseSongInMessageCommand=cmd(scale_or_crop_background);
	StartCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;decelerate,0.5;diffusealpha,1;);
	FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(Center);
	OnCommand=cmd();
	LoadFont("_nonstop") .. {
		InitCommand=cmd();
		BeforeLoadingNextCourseSongMessageCommand=function(self)
			local NextSong = SCREENMAN:GetTopScreen():GetNextCourseSong();
			self:settext( NextSong:GetDisplayFullTitle() );
		end;
		StartCommand=cmd(diffusealpha,0;linear,0.5;diffusealpha,1;sleep,1.5;linear,0.5;diffusealpha,0);
	};
};

return t;