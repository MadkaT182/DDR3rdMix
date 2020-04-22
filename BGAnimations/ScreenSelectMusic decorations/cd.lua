local t = Def.ActorFrame {};

--CD
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) c = self:GetChildren(); end;
	BeginCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-159;draworder,1);
	OffCommand=cmd(linear,1;diffusealpha,0);

	--CD Mask
	Def.ActorFrame{
		Name="CdMask";
		InitCommand=cmd();
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
			OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;);
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
		--self:addy(-480);
		self:y(SCREEN_BOTTOM-639);
		local song = GAMESTATE:GetCurrentSong();
		if song then
			local discimg = "fallback";
			local songtit = song:GetDisplayMainTitle();
			--local songtit = song:GetSongDir();

			self:diffusealpha(1);
			c.CdOver:diffusealpha(0);

			--Verify CD from theme
			discimg=GetThemeCD(songtit);

			if discimg == "fallback" then
				--Verify Jacket
				if song:HasJacket() then
					c.SCd:LoadBackground(song:GetJacketPath());
					c.SCd:setsize(256,256);
					c.CdOver:diffusealpha(1);
				elseif song:HasBackground() then
					--Verify BG
					c.SCd:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
					c.SCd:setsize(256,256);
					c.CdOver:diffusealpha(1);
				else
					--Fallback CD
					c.SCd:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
				end
			else
				c.SCd:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
			end

		else
			--Not song
			self:diffusealpha(0);
		end;
		--Fall down again
		self:linear(.05);
		self:y(SCREEN_BOTTOM-159);
	end;

	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
};

return t