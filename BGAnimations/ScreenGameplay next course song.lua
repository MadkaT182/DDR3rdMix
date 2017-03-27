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
	LoadFont("_nonstop") .. {
		BeforeLoadingNextCourseSongMessageCommand=function(self)
			local NextSong = SCREENMAN:GetTopScreen():GetNextCourseSong();
			self:settext( NextSong:GetDisplayFullTitle() );
		end;
		StartCommand=cmd(diffusealpha,0;linear,0.5;diffusealpha,1;sleep,1.5;linear,0.5;diffusealpha,0);
	};
};

--Stage frame
t[#t+1] = LoadActor("_stageFrame")..{
	StartCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+54);
	FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
};

--Score frame
t[#t+1] = LoadActor(THEME:GetPathG("ScreenGameplay", "ScoreFrame"))..{
	StartCommand=cmd(y,SCREEN_BOTTOM-43;diffusealpha,1);
	FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
};
--Score
if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = Def.ActorFrame {
		LoadFont("ScoreDisplayNormal Text")..{
		StartCommand=cmd(x,SCREEN_CENTER_X-204;y,SCREEN_BOTTOM-43;diffusealpha,1);
		BeforeLoadingNextCourseSongMessageCommand=function (self)
			local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
			self:settext(string.format("%09.0f",score));
		end;
		FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
		};
	};
end
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = Def.ActorFrame {
		LoadFont("ScoreDisplayNormal Text")..{
		StartCommand=cmd(x,SCREEN_CENTER_X+204;y,SCREEN_BOTTOM-43;diffusealpha,1);
		BeforeLoadingNextCourseSongMessageCommand=function (self)
			local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
			self:settext(string.format("%09.0f",score));
		end;
		FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
		};
	};
end

--Artist
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(Center);
	LoadFont("_artist") .. {
		BeforeLoadingNextCourseSongMessageCommand=function(self)
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
		StartCommand=cmd(y,56;diffusealpha,0;linear,0.5;diffusealpha,1;sleep,1.5;linear,0.5;diffusealpha,0);
		FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
	};
};

--Play mode
t[#t+1] = Def.ActorFrame {
	LoadActor( "_style" )..{
		StartCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-72;diffusealpha,1);
		FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
	}
};
t[#t+1] = Def.ActorFrame {
	LoadActor( "_playmode" )..{
		StartCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM;diffusealpha,1);
		FinishCommand=cmd(decelerate,0.5;diffusealpha,0);
	}
};


return t;