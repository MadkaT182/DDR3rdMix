return Def.ActorFrame {
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