local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X-190;y,SCREEN_CENTER_Y+101);
	GainFocusCommand=cmd(zoom,1;diffuse,1,1,1,1);
	LoseFocusCommand=cmd(zoom,.7349;diffuse,0.25,0.25,0.25,1);

	LoadActor("Mode/speaker")..{
		OnCommand=cmd(addy,1);
	};
	LoadActor("Mode/blue")..{};
	LoadActor("Mode/soft")..{
		OnCommand=cmd(addy,-19;addx,-4);
		GainFocusCommand=cmd(diffuse,color("#30F1A1"));
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