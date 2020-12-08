function GetSortName()
	local sortList ={
		[0] = "Preferred",
		[1] = "Group",
		[2] = "Title",
		[3] = "BPM",
		[4] = "Popularity",
		[5] = "TopGrades",
		[6] = "Artist",
		[7] = "Genre"
	}
	local name = sortList[ThemePrefs.Get("DefSort")] or "Preferred";
	return name;
end

function GetArtistName(song)
	local artistList = {
		["THE RACE"] = "Udo Niebergall/Eric Sneo\nMax Orwell",
		["IN THE NAVY '99 (XXL Disaster Remix)"] = "J.Morali/H.Belolo\nV.Willis",
		["FLASHDANCE (WHAT A FEELING)"] = "Forsev/Cara\nMoroder",
		["GET UP AND DANCE"] = "T.Armstrong/R.Smith",
		["GET UP (BEFORE THE NIGHT IS OVER)"] = "M.Kamosi/Jo Bogaert",
		["HOLIDAY"] = "Stevens/Hudson",
		["IF YOU CAN SAY GOODBYE"] = "M.Farina/G.Crivellente\nA.Bindella/F.Serra",
		["MR. WONDERFUL"] = "Robert Uhlmann/Robin Rex",
		["OH NICK PLEASE NOT SO QUICK"] = "David Brandes/John O'Flynn",
		["DO IT ALL NIGHT"] = "David Brandes/John O'Flynn",
		["OPERATOR"] = "Handberg/Honeycutt",
		["ROCK BEAT"] = "Bonaretti",
		["SO MANY MEN"] = "Lan Levine/Fiachra Trench",
		["TURN ME ON (HEAVENLY MIX)"] = "D.Brandes/J.O'Flynn",
		["UPSIDE DOWN"] = "M.Farina/G.Crivellente",
		["VOL.4"] = "S.Lavan & G.Nelson",
		["WONDERLAND (UKS MIX)"] = "Jon Lind/Allee Willis\nAgostino Carollo",
		["butterfly (UPSWING MIX)"] = "R.Uhlmann & R.Rex",
		["CAPTAIN JACK (GRANDALE REMIX)"] = "U.Niebergall/R.Witte\nL.Da Costa/V.Weber",
		["BOOM BOOM DOLLAR (K.O.G. G3 MIX)"] = "M.Farina/G.Crivellente\nC.Accatino",
		["DAM DARIRAM"] = "L.Pernici/N.Ferrando\nS.Marcato",
		["DYNAMITE RAVE"] = "KONAMI Presents",
		["END OF THE CENTURY"] = "KONAMI Presents",
		["AFTER THE GAME OF LOVE"] = "KONAMI Presents",
		["La Señorita"] = "Thomas Howard Lichtenstein",
		["Silent Hill"] = "Thomas Howard Lichtenstein",
	};
	return artistList[song] or "";
end

function InitVars()
	--Reset and track globals
	GMode="normal";
end