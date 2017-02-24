local maxSegments = 150
local t = Def.ActorFrame {};

-- LUA Based LifeMeter bar (by Ov3rHell3XoduZ)
for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar under")..{
			Name="LifeMeter Frame";
			InitCommand=cmd(y,SCREEN_TOP+24;valign,0);
			OnCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-183):zoomx(1) else self:x(SCREEN_CENTER_X+183):zoomx(-1) end end;
			LifeChangedMessageCommand=function(self,params)
				if (params.Player == pn) then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
					local pills = (string.format("%.1f",life * 2.9 / 17)) * 10
					if pills == 17 then self:glowshift():effectperiod(0.1):effectcolor1(1,1,1,0.4):effectcolor2(1,1,1,0) else self:stopeffect() end
				end;
			end;
		};
	};
end

for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	for i = 1,17 do
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+43;addx,26;diffusealpha,0.35);
			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-320+12*i) else self:x(SCREEN_CENTER_X+320-12*i) end end;
			OnCommand=function(self)
				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/ScreenGameplay decorations/LifeMeterBar over 17x1.png")
				self:pause()
				self:setstate(-1 + i)
			end;
		};
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+43;addx,26;);
			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-320+11*i) else self:x(SCREEN_CENTER_X+320-11*i) end end;
			OnCommand=function(self)
				self:sleep(i / 20)
				self:queuecommand("Anim")
			end;
			AnimCommand=function(self)
				self:sleep(0.6)
				self:accelerate(0.075)
				self:addy(-8)
				self:accelerate(0.075)
				self:addy(8)
				self:queuecommand("Anim")
			end;
			LifeChangedMessageCommand=function(self,params)
				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/ScreenGameplay decorations/LifeMeterBar over 17x1.png")
				self:pause()

				if (params.Player == pn) then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
					local pills = (string.format("%.1f",life * 2.9 / 17)) * 10
					self:setstate(-1 + i)
					if pills >= i then self:visible(true) else self:visible(false) end
					if pills == 17 then self:glowshift():effectperiod(0.1):effectcolor1(1,1,1,0.4):effectcolor2(1,1,1,0) else self:stopeffect() end
				end;
			end;
		};
	end
end

--Danger Filter
t[#t+1] = LoadActor("../ScreenGameplay Danger");

--Stage frame
t[#t+1] = LoadActor("../_stageFrame")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+54);
};

--Score frame
t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame")

--Play mode
t[#t+1] = Def.ActorFrame {
	LoadActor( "../_style" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-72)
	}
};
t[#t+1] = Def.ActorFrame {
	LoadActor( "../_playmode" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM)
	}
};

return t