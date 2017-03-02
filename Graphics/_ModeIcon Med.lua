local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(Center);
	GainFocusCommand=cmd(zoom,1);
	LoseFocusCommand=cmd(zoom,.7349);

	LoadActor("Mode/speaker")..{};
	LoadActor("Mode/blue")..{};
	LoadActor("Mode/medium")..{
		OnCommand=cmd(addy,-19;addx,-4;);
		GainFocusCommand=cmd(diffuse,color("#FBFF4D"));
		LoseFocusCommand=cmd(diffuse,color("#FFFFFF"));
	};
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

return t;