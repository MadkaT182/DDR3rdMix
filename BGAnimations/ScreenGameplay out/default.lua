local t = Def.ActorFrame {};

if not GAMESTATE:IsDemonstration() then

	t[#t+1] = Def.Quad{
		OnCommand=cmd(Center;FullScreen;diffusecolor,color("#FFFFFF");diffusealpha,0;sleep,.3;linear,.5;diffusealpha,1);
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "../_doorclose/delay" )..{};
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "cleared" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2;sleep,2);
		}
	};

end

return t