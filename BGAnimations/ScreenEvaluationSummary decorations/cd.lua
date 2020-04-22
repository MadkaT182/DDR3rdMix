local pStages = STATSMAN:GetStagesPlayed();
local t = Def.ActorFrame {};
local i;

for i = 1, pStages do
	local sStats = STATSMAN:GetPlayedStageStats(i);
	t[#t+1] = Def.ActorFrame {
		InitCommand=function(self) self:addx(158 * i); self:linear(.05); self:y(SCREEN_TOP+190); end;
		BeginCommand=cmd(draworder,1;playcommand,"Set");
		OffCommand=cmd(linear,1;diffusealpha,0);
		Def.ActorFrame{
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_shdw"))..{
				OnCommand=cmd(diffusealpha,.56;addx,-12;y,8);
			};
		};
		Def.ActorFrame{
			Name="CdMask"..i;
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_shdw"))..{
				OnCommand=cmd(diffusealpha,.5;x,-4;y,2);
			};
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
				OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;);
			};
		};
		Def.Sprite{
			Name="SCd"..i;
			InitCommand=cmd();
			OnCommand=cmd(ztest,true;);
			SetCommand=function(self)
				local song = sStats:GetPlayedSongs()[1];
				local songtit = song:GetDisplayMainTitle();
				discimg = GetThemeCD(songtit);
				if discimg == "fallback" then
					if song:HasJacket() then
						self:LoadBackground(song:GetJacketPath());
					elseif song:HasBackground() then
						self:LoadFromSongBackground(song);
					else
						self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
					end
				else
					self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
				end
				self:setsize(256,256);
			end
		};
		Def.ActorFrame{
			Name="CdOver"..i;
			InitCommand=cmd();
			LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/overlay"))..{};
			SetCommand=function(self)
				local song = sStats:GetPlayedSongs()[1];
				local songtit = song:GetDisplayMainTitle();
				discimg = GetThemeCD(songtit);
				if discimg == "fallback" then
					if song:HasJacket() or song:HasBackground() then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end
				else
					self:diffusealpha(0);
				end
			end
		};
	};

end;

return t