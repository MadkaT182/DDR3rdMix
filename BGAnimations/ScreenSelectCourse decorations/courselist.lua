return Def.CourseContentsList {
	MaxSongs=20;
	NumItemsToDraw=4;

	SetCommand=function(self)
		self:SetFromGameState();
		self:SetCurrentAndDestinationItem(3);
		self:SetPauseCountdownSeconds(1);
		self:SetSecondsPauseBetweenItems(0);
		self:SetLoop(true);
		self:SetMask(334,0);
	end;
	CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");

	Display=Def.ActorFrame{
		SetSongCommand=function(self, params)
			self:x(100);
			self:setsize(334,70);
			self:draworder(4-params.Number);
		end;
		--Song CD
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_shdw"))..{
			SetSongCommand=function(self, params)
				self:setsize(84,84);
				self:x(-42*4);
				(cmd(finishtweening;sleep,0.125*params.Number;linear,0.13;addx,460))(self);
			end;
		};
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
			OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;);
			SetSongCommand=function(self, params)
				self:setsize(84,84);
				self:x(-42*4);
				self:y(-6);
				(cmd(finishtweening;sleep,0.125*params.Number;linear,0.13;addx,454))(self);
			end;
		};
		Def.Sprite {
			Name="Scd";
			OnCommand=cmd(ztest,true);
			SetSongCommand=function(self, params)
				local discimg = GetThemeCD(params.Song:GetDisplayMainTitle());
				if discimg == "fallback" then
					if params.Song:HasJacket() then
						self:LoadBackground(params.Song:GetJacketPath());
					elseif params.Song:HasBackground() then
						self:LoadFromSongBackground(params.Song);
					else
						self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
					end
				else
					self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
				end
				self:setsize(82,82);
				self:x(-42*4);
				self:y(-6);
				(cmd(finishtweening;sleep,0.125*params.Number;linear,0.13;addx,454))(self);
			end;
		};
		Def.ActorFrame{
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/overlay"))..{
				SetSongCommand=function(self, params)
					local discimg = GetThemeCD(params.Song:GetDisplayMainTitle());
					if discimg == "fallback" then
						if params.Song:HasJacket() or params.Song:HasBackground() then
							self:diffusealpha(1);
						else
							self:diffusealpha(0);
						end
					else
						self:diffusealpha(0);
					end
					self:x(-42*4);
					self:y(-6);
					(cmd(finishtweening;sleep,0.125*params.Number;linear,0.13;addx,454))(self);
					self:setsize(84,84);
				end;
			};
		};
		--Song Text
		LoadFont("_system1")..{
			Text="";
			InitCommand=cmd(horizalign,left;maxwidth,235);
			SetSongCommand=function(self,params)
				if params.Song then
					self:settext(params.Song:GetDisplayFullTitle());
				end;
				self:x(-330*1.5);
				self:y(-20);
				(cmd(finishtweening;sleep,0.125*params.Number;linear,0.13;addx,330*1.5))(self);
			end;
		};
	};
};