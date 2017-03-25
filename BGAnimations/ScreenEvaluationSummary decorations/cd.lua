local t = Def.ActorFrame {};
local pStages = STATSMAN:GetStagesPlayed();
local i = 0;

--Song List
for i = 1, pStages do

	local sStats = STATSMAN:GetPlayedStageStats(i);
	--CD
	t[#t+1] = Def.ActorFrame {
		InitCommand=function(self) c = self:GetChildren(); self:addx(158 * i); end;
		BeginCommand=cmd(draworder,1;playcommand,"Set");
		OffCommand=cmd(linear,1;diffusealpha,0);

		--CD Mask
		Def.ActorFrame{
			Name="CdMask";
			InitCommand=cmd();
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
				OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,false;);
			};
		};

		--CD Sprite object
		Def.Sprite{
			Name="SCd";
			InitCommand=cmd();
			OnCommand=cmd(ztest,true;);
		};

		--Overlay
		Def.ActorFrame{
			Name="CdOver";
			InitCommand=cmd();
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/overlay"))..{};
		};

		SetCommand=function(self)
			--Go up
			self:stoptweening();
			self:linear(.05);
			--self:y(SCREEN_BOTTOM-639);
			local song = sStats:GetPlayedSongs()[1];
			if song then
				local discimg = "fallback";
				local songtit = song:GetDisplayMainTitle();
				--local songtit = song:GetSongDir();

				self:diffusealpha(1);
				c.CdOver:diffusealpha(0);

				--Verify CD from theme
				if songtit == "Boys" then
					discimg = "01";
				end

				if songtit == "Butterfly" then
					discimg = "02";
				end

				if songtit == "I Believe In Miracles (The Lisa Marie Experience Radio Edit)" then
					discimg = "03";
				end

				if songtit == "Little Bitch" then
					discimg = "04";
				end

				if songtit == "MAKE IT BETTER" then
					discimg = "05";
				end

				if songtit == "PARANOiA" then
					discimg = "06";
				end

				if songtit == "PARANOiA MAX～DIRTY MIX～" or songtit == "PARANOiA MAX~DIRTY MIX~ (in roulette)" then
					discimg = "07";
				end

				if songtit == "PUT YOUR FAITH IN ME" then
					discimg = "08";
				end

				if songtit == "AM-3P" then
					discimg = "09";
				end

				if songtit == "stomp to my beat" then
					discimg = "10";
				end

				if songtit == "TRIP MACHINE" then
					discimg = "11";
				end

				if songtit == "EL RITMO TROPICAL" then
					discimg = "12";
				end

				if songtit == "BRILLIANT 2U" then
					discimg = "13";
				end

				if songtit == "BAD GIRLS" then
					discimg = "14";
				end

				if songtit == "Boom Boom Dollar (Red Monster Mix)" then
					discimg = "15";
				end

				if songtit == "DUB-I-DUB" then
					discimg = "16";
				end

				if songtit == "SP-TRIP MACHINE~JUNGLE MIX~" then
					discimg = "17";
				end

				if songtit == "Have You Never Been Mellow" then
					discimg = "18";
				end

				if songtit == "KUNG FU FIGHTING" then
					discimg = "19";
				end

				if songtit == "My Fire (UKS Remix)" then
					discimg = "20";
				end

				if songtit == "LET'S GET DOWN" then
					discimg = "21";
				end

				if songtit == "That's The Way (I Like It)" then
					discimg = "22";
				end

				if songtit == "STRICTLY BUSINESS" then
					discimg = "23";
				end

				if songtit == "PUT YOUR FAITH IN ME (Jazzy Groove)" then
					discimg = "24";
				end

				if songtit == "BRILLIANT 2U(Orchestra Groove)" then
					discimg = "25";
				end

				if songtit == "MAKE IT BETTER (So-REAL Mix)" then
					discimg = "26";
				end

				if songtit == "HERO" then
					discimg = "27";
				end

				if songtit == "GET UP'N MOVE" then
					discimg = "28";
				end

				if songtit == "IF YOU WERE HERE" then
					discimg = "29";
				end

				if songtit == "Smoke" then
					discimg = "30";
				end

				if songtit == "TUBTHUMPING" then
					discimg = "31";
				end

				if songtit == "LOVE" then
					discimg = "32";
				end

				if songtit == "KEEP ON MOVIN'" then
					discimg = "33";
				end

				if songtit == "LET THEM MOVE" then
					discimg = "34";
				end

				if songtit == "20,NOVEMBER (D.D.R. version)" then
					discimg = "35";
				end

				if songtit == "MAKE A JAM!" then
					discimg = "36";
				end

				if songtit == "PARANOiA KCET ～clean mix～" then
					discimg = "37";
				end

				if songtit == "XANADU" then
					discimg = "38";
				end

				if songtit == "THE RACE" then
					discimg = "39";
				end

				if songtit == "IN THE NAVY '99 (XXL Disaster Remix)" then
					discimg = "40";
				end

				if songtit == "CAN'T TAKE MY EYES OFF YOU (70's REMIX)" or songtit == "CAN'T TAKE MY EYES OFF YOU" then
					discimg = "41";
				end

				if songtit == "DO IT ALL NIGHT" then
					discimg = "42";
				end

				if songtit == "FLASHDANCE (WHAT A FEELING)" then
					discimg = "43";
				end

				if songtit == "GET UP AND DANCE" then
					discimg = "44";
				end

				if songtit == "GET UP (BEFORE THE NIGHT IS OVER)" then
					discimg = "45";
				end

				if songtit == "HOLIDAY" then
					discimg = "46";
				end

				if songtit == "IF YOU CAN SAY GOODBYE" then
					discimg = "47";
				end

				if songtit == "IT ONLY TAKES A MINUTE (Extended Remix)" then
					discimg = "48";
				end

				if songtit == "MR. WONDERFUL" then
					discimg = "49";
				end

				if songtit == "OH NICK PLEASE NOT SO QUICK" then
					discimg = "50";
				end

				if songtit == "OPERATOR" then
					discimg = "51";
				end

				if songtit == "ROCK BEAT" then
					discimg = "52";
				end

				if songtit == "SO MANY MEN" then
					discimg = "53";
				end

				if songtit == "TURN ME ON (HEAVENLY MIX)" then
					discimg = "54";
				end

				if songtit == "UPSIDE DOWN" then
					discimg = "55";
				end

				if songtit == "VOL.4" then
					discimg = "56";
				end

				if songtit == "WONDERLAND (UKS MIX)" then
					discimg = "57";
				end

				if songtit == "butterfly (UPSWING MIX)" then
					discimg = "58";
				end

				if songtit == "CAPTAIN JACK (GRANDALE REMIX)" then
					discimg = "59";
				end

				if songtit == "BOOM BOOM DOLLAR (K.O.G. G3 MIX)" then
					discimg = "60";
				end

				if songtit == "AFRONOVA" then
					discimg = "61";
				end

				if songtit == "END OF THE CENTURY" then
					discimg = "62";
				end

				if songtit == "DAM DARIRAM" then
					discimg = "63";
				end

				if songtit == "DYNAMITE RAVE" then
					discimg = "64";
				end

				if songtit == "Silent Hill" then
					discimg = "65";
				end

				if songtit == "DEAD END" then
					discimg = "66";
				end

				if songtit == "La Señorita" then
					discimg = "67";
				end

				if songtit == "LUV TO ME (AMD MIX)" then
					discimg = "68";
				end

				if songtit == "Jam Jam Reggae" then
					discimg = "69";
				end

				if songtit == "gentle stress (AMD SEXUAL MIX)" then
					discimg = "70";
				end

				if songtit == "GRADIUSIC CYBER ～AMD G5 MIX～" then
					discimg = "71";
				end

				if songtit == "PARANOiA Rebirth" then
					discimg = "72";
				end

				if songtit == "FOLLOW THE SUN (90 IN THE SHADE MIX)" then
					discimg = "73";
				end

				--Konami missing fallback
				if songtit == "XsorryX" then
					discimg = "74";
				end

				--PSX Bonus
				if songtit == "BUMBLE BEE" then
				discimg = "75";
				end

				if songtit == "GIMME GIMME GIMME" then
				discimg = "76";
				end

				--3rd Mix PLUS
				if songtit == "AFTER THE GAME OF LOVE" then
				discimg = "77";
				end

				if songtit == "CUTIE CHASER" then
				discimg = "78";
				end

				if songtit == "DROP THE BOMB" then
				discimg = "79";
				end

				if songtit == "LOVE THIS FEELIN'" then
				discimg = "80";
				end

				if songtit == "La Senorita Virtual" or songtit == "La Señorita Virtual" then
				discimg = "81";
				end

				if songtit == "think ya better D" then
				discimg = "82";
				end

				if discimg == "fallback" then
					--Verify Jacket
					if song:HasJacket() then
						c.SCd:LoadBackground(song:GetJacketPath());
						c.CdOver:diffusealpha(1);
					elseif song:HasBackground() then
						--Verify BG
						c.SCd:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
						c.CdOver:diffusealpha(1);
					else
						--Fallback CD
						c.SCd:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
					end
				else
					c.SCd:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
				end
				c.SCd:setsize(256,256);

			else
				--Not song
				self:diffusealpha(0);
			end;
			--Fall down again
			self:linear(.05);
			self:y(SCREEN_TOP+190);
		end;
	};

end;

return t