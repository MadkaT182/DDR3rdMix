local t = Def.ActorFrame {};

if GAMESTATE:IsCourseMode() then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "course" )..{
			OnCommand=cmd(Center;FullScreen);
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
			OnCommand=cmd(Center;FullScreen);
		}
	};
end;

return t