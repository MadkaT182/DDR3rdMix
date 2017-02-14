local t = Def.ActorFrame {};

--Artist Information
t[#t+1] = LoadFont("_artist") .. {
InitCommand=cmd(horizalign,center;);
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local songtit = vSong:GetDisplayMainTitle();
		local sText = ""

		--Simfile display
		sText = vSong:GetDisplayArtist()

		--Verify Artist Name
		if songtit == "THE RACE" then
			sText = "Udo Niebergall/Eric Sneo\nMax Orwell";
		end

		if songtit == "IN THE NAVY '99 (XXL Disaster Remix)" then
			sText = "J.Morali/H.Belolo\nV.Willis";
		end

		if songtit == "FLASHDANCE (WHAT A FEELING)" then
			sText = "Forsev/Cara\nMoroder";
		end

		if songtit == "GET UP AND DANCE" then
			sText = "T.Armstrong/R.Smith";
		end

		if songtit == "GET UP (BEFORE THE NIGHT IS OVER)" then
			sText = "M.Kamosi/Jo Bogaert";
		end

		if songtit == "HOLIDAY" then
			sText = "Stevens/Hudson";
		end

		if songtit == "IF YOU CAN SAY GOODBYE" then
			sText = "M.Farina/G.Crivellente\nA.Bindella/F.Serra";
		end

		if songtit == "MR. WONDERFUL" then
			sText = "Robert Uhlmann/Robin Rex";
		end

		if songtit == "OH NICK PLEASE NOT SO QUICK" or songtit == "DO IT ALL NIGHT" then
			sText = "David Brandes/John O'Flynn";
		end

		if songtit == "OPERATOR" then
			sText = "Handberg/Honeycutt";
		end

		if songtit == "ROCK BEAT" then
			sText = "Bonaretti";
		end

		if songtit == "SO MANY MEN" then
			sText = "Lan Levine/Fiachra Trench";
		end

		if songtit == "TURN ME ON (HEAVENLY MIX)" then
			sText = "D.Brandes/J.O'Flynn";
		end

		if songtit == "UPSIDE DOWN" then
			sText = "M.Farina/G.Crivellente";
		end

		if songtit == "VOL.4" then
			sText = "S.Lavan & G.Nelson";
		end

		if songtit == "WONDERLAND (UKS MIX)" then
			sText = "Jon Lind/Allee Willis\nAgostino Carollo";
		end

		if songtit == "butterfly (UPSWING MIX)" then
			sText = "R.Uhlmann & R.Rex";
		end

		if songtit == "CAPTAIN JACK (GRANDALE REMIX)" then
			sText = "U.Niebergall/R.Witte\nL.Da Costa/V.Weber";
		end

		if songtit == "BOOM BOOM DOLLAR (K.O.G. G3 MIX)" then
			sText = "M.Farina/G.Crivellente\nC.Accatino";
		end

		if songtit == "DAM DARIRAM" then
			sText = "L.Pernici/N.Ferrando\nS.Marcato";
		end

		if songtit == "DYNAMITE RAVE" or songtit == "END OF THE CENTURY" or songtit == "AFTER THE GAME OF LOVE" then
			sText = "KONAMI Presents";
		end

		if songtit == "La Señorita" or songtit == "Silent Hill" then
			sText = "Thomas Howard Lichtenstein";
		end

		self:settext( sText );
	end;
}

return t