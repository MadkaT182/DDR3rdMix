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
		InitCommand=cmd(x,100;setsize,334,70);
		--Song CD
		Def.Sprite {
			Name="SCD";
			SetSongCommand=function(self, params)
				if params.Song:HasJacket() then
					self:LoadBackground(params.Song:GetJacketPath());
					self:setsize(84,84);
				elseif params.Song:HasBackground() then
					self:LoadFromSongBackground(params.Song);
					self:setsize(84,84);
				else
					self:Load(THEME:GetPathG("", "Common fallback background"));
					self:setsize(84,84);
				end;
					self:x(-42*4);
					self:y(-6);
				(cmd(finishtweening;sleep,0.125*params.Number;linear,0.13;addx,328+(42*4)))(self);
			end;
		};

		--Song Text
		LoadFont("_system1")..{
			Text="";
			InitCommand=cmd(horizalign,left;maxwidth,330);
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