local fpath = "ScreenSelectMusic decorations/";
return Def.ActorFrame{
	LoadActor("doorbg")..{
		OnCommand=cmd(FullScreen;cropright,0.5;x,SCREEN_LEFT;linear,.3;addx,SCREEN_WIDTH/2;sleep,.567);
	};
	LoadActor("doorbg")..{
		OnCommand=cmd(FullScreen;cropleft,0.5;x,SCREEN_RIGHT;linear,.3;addx,-SCREEN_WIDTH/2;sleep,.567);
	};
	LoadActor("_doorclose/close")..{
		StartTransitioningCommand=cmd(play);
	};
	Def.ActorFrame{
		OffCommand=cmd(sleep,1.566;linear,.1;diffusealpha,0);
		LoadActor(fpath.."bnrframe")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-99);
		};
		Def.Sprite{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-99);
			StartTransitioningCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				self:Load(song:GetBannerPath() and song:GetBannerPath() or THEME:GetPathG("Common","fallback banner"));
				self:scaletoclipped(382,110);
			end;
		};
		LoadActor(fpath.."diskout");
		LoadActor( "_style" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+82);
		};
		LoadActor("norm_stage")..{
			OnCommand=cmd(x,SCREEN_CENTER_X-108;y,SCREEN_CENTER_Y-16);
		};
		LoadActor(fpath.."title")..{
			OnCommand=cmd(x,SCREEN_CENTER_X+80;y,SCREEN_CENTER_Y+4;draworder,2);
		};
		LoadActor(fpath.."diff")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+124);
		};
	};
};
--TODO add sleep .766