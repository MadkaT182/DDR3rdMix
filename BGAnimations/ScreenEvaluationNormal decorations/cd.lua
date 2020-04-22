local t = Def.ActorFrame {};

--CD
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) c = self:GetChildren(); end;
	BeginCommand=cmd(draworder,1;playcommand,"Set");
	OffCommand=cmd(linear,1;diffusealpha,0);
	Def.ActorFrame{
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_shdw"))..{
			OnCommand=cmd(diffusealpha,.56;addx,-12;y,8);
		};
	};
	Def.ActorFrame{
		Name="CdMask";
		InitCommand=cmd();
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
			OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;);
		};
	};
	Def.Sprite{
		Name="SCd";
		InitCommand=cmd();
		OnCommand=cmd(ztest,true;);
	};
	Def.ActorFrame{
		Name="CdOver";
		InitCommand=cmd();
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/overlay"))..{};
	};

	SetCommand=function(self)
		self:stoptweening();
		self:linear(.05);
		local song = GAMESTATE:GetCurrentSong();
		if song then
			local discimg = "fallback";
			local songtit = song:GetDisplayMainTitle();
			self:diffusealpha(1);
			c.CdOver:diffusealpha(0);
			discimg = GetThemeCD(songtit);

			if discimg == "fallback" then
				if song:HasJacket() then
					c.SCd:LoadBackground(song:GetJacketPath());
					c.CdOver:diffusealpha(1);
				elseif song:HasBackground() then
					c.SCd:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
					c.CdOver:diffusealpha(1);
				else
					c.SCd:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
				end
			else
				c.SCd:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
			end
			c.SCd:setsize(256,256);

		else
			self:diffusealpha(0);
		end;
		self:linear(.05);
		self:y(SCREEN_TOP+190);
	end;
};

return t