local t = Def.ActorFrame {};

--CD
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) t = self:GetChildren(); end;
	BeginCommand=cmd(x,SCREEN_CENTER_X+80;y,SCREEN_CENTER_Y+4;draworder,2);
	OffCommand=cmd(linear,1;diffusealpha,0);

	--CD Title object
	Def.Sprite{
		Name="CdTitle";
		InitCommand=cmd();
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();

			if song then
				if song:HasCDTitle() then
					self:LoadBackground(song:GetCDTitlePath());
					self:setsize(128,80);
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end;
			else
				self:diffusealpha(0);
			end;

		end;
	};

	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
};

return t