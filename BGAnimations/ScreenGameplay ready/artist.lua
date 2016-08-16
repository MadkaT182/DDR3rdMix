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

		--Verify CD from theme
		if songtit == "Boys" then
			sText = "01";
		end

		if songtit == "Butterfly" then
			sText = "02";
		end

		if songtit == "I Believe In Miracles (The Lisa Marie Experience Radio Edit)" then
			sText = "03";
		end

		if songtit == "Little Bitch" then
			sText = "04";
		end

		if songtit == "MAKE IT BETTER" then
			sText = "05";
		end

		if songtit == "PARANOiA" then
			sText = "06";
		end

		if songtit == "PARANOiA MAX～DIRTY MIX～" or songtit == "PARANOiA MAX~DIRTY MIX~ (in roulette)" then
			sText = "07";
		end

		if songtit == "PUT YOUR FAITH IN ME" then
			sText = "08";
		end

		if songtit == "AM-3P" then
			sText = "09";
		end

		if songtit == "stomp to my beat" then
			sText = "10";
		end

		if songtit == "TRIP MACHINE" then
			sText = "11";
		end

		if songtit == "EL RITMO TROPICAL" then
			sText = "12";
		end

		if songtit == "BRILLIANT 2U" then
			sText = "13";
		end

		if songtit == "BAD GIRLS" then
			sText = "14";
		end

		if songtit == "Boom Boom Dollar (Red Monster Mix)" then
			sText = "15";
		end

		if songtit == "DUB-I-DUB" then
			sText = "16";
		end

		if songtit == "SP-TRIP MACHINE~JUNGLE MIX~" then
			sText = "17";
		end

		if songtit == "Have You Never Been Mellow" then
			sText = "18";
		end

		if songtit == "KUNG FU FIGHTING" then
			sText = "19";
		end

		if songtit == "My Fire (UKS Remix)" then
			sText = "20";
		end

		if songtit == "LET'S GET DOWN" then
			sText = "21";
		end

		if songtit == "That's The Way (I Like It)" then
			sText = "22";
		end

		if songtit == "STRICTLY BUSINESS" then
			sText = "23";
		end

		if songtit == "PUT YOUR FAITH IN ME (Jazzy Groove)" then
			sText = "24";
		end

		if songtit == "BRILLIANT 2U(Orchestra Groove)" then
			sText = "25";
		end

		if songtit == "MAKE IT BETTER (So-REAL Mix)" then
			sText = "26";
		end

		if songtit == "HERO" then
			sText = "27";
		end

		if songtit == "GET UP'N MOVE" then
			sText = "28";
		end

		if songtit == "IF YOU WERE HERE" then
			sText = "29";
		end

		if songtit == "Smoke" then
			sText = "30";
		end

		if songtit == "TUBTHUMPING" then
			sText = "31";
		end

		if songtit == "LOVE" then
			sText = "32";
		end

		if songtit == "MAKE A JAM!" then
			sText = "36";
		end

		if songtit == "PARANOiA KCET ～clean mix～" then
			sText = "37";
		end

		if songtit == "XANADU" then
			sText = "38";
		end

		if songtit == "THE RACE" then
			sText = "Udo Niebergall/Eric Sneo\nMax Orwell";
		end

		if songtit == "IN THE NAVY '99 (XXL Disaster Remix)" then
			sText = "J.Morali/H.Belolo\nV.Willis";
		end

		if songtit == "CAN'T TAKE MY EYES OFF YOU (70's REMIX)" or songtit == "CAN'T TAKE MY EYES OFF YOU" then
			sText = "41";
		end

		if songtit == "FLASHDANCE (WHAT A FEELING)" then
			sText = "Forsev/Cara\nMoroder";
		end

		if songtit == "GET UP AND DANCE" then
			sText = "T.Armstrong/R.Smith";
		end

		if songtit == "GET UP (BEFORE THE NIGHT IS OVER)" then
			sText = "45";
		end

		if songtit == "HOLIDAY" then
			sText = "Stevens/Hudson";
		end

		if songtit == "IF YOU CAN SAY GOODBYE" then
			sText = "M.Farina/G.Crivellente\nA.Bindella/F.Serra";
		end

		if songtit == "IT ONLY TAKES A MINUTE (Extended Remix)" then
			sText = "48";
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

		if songtit == "AFRONOVA" or songtit == "KEEP ON MOVIN'" then
			sText = "";
		end

		if songtit == "DAM DARIRAM" then
			sText = "L.Pernici/N.Ferrando\nS.Marcato";
		end

		if songtit == "DYNAMITE RAVE" or songtit == "END OF THE CENTURY" then
			sText = "KONAMI Presents";
		end

		if songtit == "DEAD END" or songtit == "20,NOVEMBER (D.D.R. version)" or songtit == "LET THEM MOVE" or songtit == "PARANOiA Rebirth" or songtit == "gentle stress (AMD SEXUAL MIX)" then
			sText = "";
		end

		if songtit == "La Señorita" or songtit == "Silent Hill" then
			sText = "Thomas Howard Lichtenstein";
		end

		if songtit == "LUV TO ME (AMD MIX)" then
			sText = "68";
		end

		if songtit == "Jam Jam Reggae" then
			sText = "69";
		end

		if songtit == "GRADIUSIC CYBER ～AMD G5 MIX～" then
			sText = "71";
		end

		if songtit == "FOLLOW THE SUN (90 IN THE SHADE MIX)" then
			sText = "73";
		end

		if songtit == "sorry" then
			sText = "74";
		end

		self:settext( sText );
	end;
}

return t