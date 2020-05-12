local t = Def.ActorFrame {
	GainFocusCommand=function(self)
		GMode="Soft";
	end;
};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-190;y,SCREEN_CENTER_Y+101);
	OnCommand=cmd(addx,27;addy,27;diffusealpha,0;linear,.166;addx,-27;addy,-27;diffusealpha,1);
	GainFocusCommand=cmd(diffuse,1,1,1,1);
	LoseFocusCommand=cmd(diffuse,0.25,0.25,0.25,1);

	Def.ActorFrame{
		GainFocusCommand=cmd(stoptweening;linear,.233;zoom,1);
		LoseFocusCommand=cmd(stoptweening;linear,.233;zoom,.7349);
		LoadActor("Mode/speaker")..{
			OnCommand=cmd(addy,1);
		};
		LoadActor("Mode/blue");
	};
	LoadActor("Mode/soft")..{
		OnCommand=cmd(addy,-19;addx,-4);
		GainFocusCommand=cmd(stoptweening;linear,.233;zoom,1;diffuse,color("#38F0A8"));
		LoseFocusCommand=cmd(stoptweening;linear,.233;zoom,.5;diffuse,color("#FFFFFF"));
	};
	Def.ActorFrame{
		GainFocusCommand=cmd(stoptweening;linear,.233;zoom,1;y,0);
		LoseFocusCommand=cmd(stoptweening;linear,.233;zoom,.5;y,30);
		LoadFont("_stages")..{
			OnCommand=function(self)
				local max_stages = PREFSMAN:GetPreference("SongsPerPlay");
				self:settext(max_stages);
				self:horizalign("right");
				self:addy(49);
				self:addx(-48);
			end;
		};
		LoadFont("_system3")..{
			OnCommand=function(self)
			local max_stages = PREFSMAN:GetPreference("SongsPerPlay");
				if max_stages > 1 then
					self:settext("STAGES");
				else
					self:settext("STAGE");
				end;
				self:horizalign("left");
				self:addy(48);
				self:addx(-48);
			end;
		};
	};
};

return t;