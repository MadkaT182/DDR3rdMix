local t = Def.ActorFrame {};

if GAMESTATE:IsCourseMode() then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "course" )..{
			OnCommand=cmd(FullScreen);
		};
		LoadActor( "songframe" )..{
			OnCommand=cmd(Center;addx,184;addy,-53);
		};
		LoadActor( "titlebg" )..{
			OnCommand=cmd(Center;addx,0;addy,149);
		};
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor( "bg" )..{
			OnCommand=cmd(FullScreen);
		};
		LoadActor( "songbg" )..{
			OnCommand=cmd(Center;addy,173);
		};
	};
end;

return t