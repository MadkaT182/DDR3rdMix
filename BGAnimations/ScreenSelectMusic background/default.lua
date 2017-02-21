local t = Def.ActorFrame {};

if GAMESTATE:IsCourseMode() then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "course" )..{
			OnCommand=cmd(Center;FullScreen;)
		}
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor( "bg" )..{
			OnCommand=cmd(Center;FullScreen;)
		}
	};
end;

return t