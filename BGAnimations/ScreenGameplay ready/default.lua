local t = Def.ActorFrame {};

if GAMESTATE:IsCourseMode() then
t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(Center;sleep,1.3;linear,0.1;diffusealpha,0);
	LoadFont("_nonstop") .. {
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			self:settext( song:GetDisplayFullTitle() );
			self:maxwidth(SCREEN_WIDTH);
		end;
	};
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
};
else
	t[#t+1] = Def.ActorFrame {
	LoadActor( "ready" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_CENTER_Y-2;diffusealpha,1;sleep,1.3;linear,0.1;diffusealpha,0;);
	};
};
end;

--Artist
t[#t+1] = LoadActor("artist")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+56;diffusealpha,1;sleep,1.3;linear,0.1;diffusealpha,0;);
};

return t