return Def.ActorFrame {
	LoadFont("_artist") .. {
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			local songtit = GAMESTATE:GetCurrentSong():GetDisplayMainTitle();
			local sText = GAMESTATE:GetCurrentSong():GetDisplayArtist();
			local sArtist = GetArtistName(songtit);

			self:settext(sArtist ~= "" and sArtist or sText);
		end;
	};
};