return Def.CourseContentsList {
	MaxSongs=20;
	NumItemsToDraw=4;

	TransformFunction=function(self,offset,itemIndex,numItems)
		self:y(offset*64)
	end;

	SetCommand=function(self)
		self:SetFromGameState();
		self:SetCurrentAndDestinationItem(1);
		self:SetPauseCountdownSeconds(1);
		self:SetSecondsPauseBetweenItems( 0.25 );
		self:SetLoop(true);
	end;
	CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");

	Display=Def.ActorFrame{
		--InitCommand=cmd(setsize,270,44);
		--Song CD

		--Song Text
		LoadFont("_system1")..{
			Text="";
			InitCommand=cmd(horizalign,left);
			SetSongCommand=function(self,params)
				if params.Song then
					self:settext(params.Song:GetDisplayFullTitle());
				end;
			end;
		};
	};
};