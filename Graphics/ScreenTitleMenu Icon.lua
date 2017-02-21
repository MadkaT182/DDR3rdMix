local gc = Var("GameCommand");
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
 	GainFocusCommand=cmd(diffusecolor,color("#FF6186"));
 	LoseFocusCommand=cmd(diffusecolor,color("#FFFFFF"));
	LoadActor(THEME:GetPathG("_Menu",gc:GetName()))..{
	};
};

return t