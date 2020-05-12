local t = Def.ActorFrame {};
local ds;
local xPos = {
	[1]	= x,SCREEN_CENTER_X-200,
	[2]	= x,SCREEN_CENTER_X+200,
	[3]	= x,SCREEN_CENTER_X-200,
	[4]	= x,SCREEN_CENTER_X+200,
};

local yPos = {
	[1]	= y,SCREEN_TOP+104,
	[2]	= y,SCREEN_TOP+104,
	[3]	= y,SCREEN_BOTTOM+52,
	[4]	= y,SCREEN_BOTTOM+52,
};

for ds = 1,4 do
	--CD
	t[#t+1] = Def.ActorFrame {

		--CD Mask
		Def.ActorFrame{
			Name="CdMask";
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
				OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;);
			};
			SetCommand=function(self)
				self:x(xPos[ds]);
				self:y(yPos[ds]);
				self:linear(.266);
				self:x(SCREEN_CENTER_X);
				self:y(SCREEN_CENTER_Y+76);
				self:diffusealpha(1);
			end;
		};

		--CD Sprite object
		Def.Sprite{
			Name="SCd";
			SetCommand=function(self)
				self:x(xPos[ds]);
				self:y(yPos[ds]);
				local song = GAMESTATE:GetCurrentSong();
				if song then
					local discimg = "fallback";
					local songtit = song:GetDisplayMainTitle();

					self:diffusealpha(.25);
					self:ztest(true);
					discimg=GetThemeCD(songtit);

					if discimg == "fallback" then
						if song:HasJacket() then
							self:LoadBackground(song:GetJacketPath());
							self:setsize(256,256);
						elseif song:HasBackground() then
							self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
							self:setsize(256,256);
						else
							self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
						end
					else
						self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
					end
				end;
				self:linear(.266);
				self:x(SCREEN_CENTER_X);
				self:y(SCREEN_CENTER_Y+76);
				self:diffusealpha(1);
			end;
		};

		--Overlay
		Def.ActorFrame{
			Name="CdOver";
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/overlay"));
			SetCommand=function(self)
				self:x(xPos[ds]);
				self:y(yPos[ds]);
				local song = GAMESTATE:GetCurrentSong();
				if song then
					local discimg = "fallback";
					local songtit = song:GetDisplayMainTitle();

					self:diffusealpha(0);
					discimg=GetThemeCD(songtit);

					if discimg == "fallback" then
						if song:HasJacket() or song:HasBackground() then
							self:diffusealpha(.25);
						end
					end
				end;
				self:linear(.266);
				self:x(SCREEN_CENTER_X);
				self:y(SCREEN_CENTER_Y+76);
				self:diffusealpha(1);
			end;
		};

		StartTransitioningCommand=cmd(playcommand,"Set");
	};
end

return t