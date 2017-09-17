return Def.ActorFrame {
	LoadFont("_service")..{
		Text="YES";
		OnCommand=cmd(x,-120;y,120);
		GainFocusCommand=cmd(diffuse,color("#FF0000"));
		LoseFocusCommand=cmd(diffuse,color("#FFFFFF"));
	};
};