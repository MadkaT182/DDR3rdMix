return Def.ActorFrame {
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,color("#000000"););
	};
	LoadActor("boot0")..{
		InitCommand=cmd(FullScreen;diffusealpha,0;sleep,.68;diffusealpha,1);
	};
	Def.ActorFrame {
		InitCommand=cmd(diffusealpha,0;sleep,.76;diffusealpha,1);
		Def.Quad{
			InitCommand=cmd(FullScreen;diffuse,color("#000000"););
		};
		LoadActor("boot1")..{
			InitCommand=cmd(Center);
		}
	};
	LoadActor("boot2")..{
		InitCommand=cmd(FullScreen;diffusealpha,0;sleep,1.4;diffusealpha,1);
	};
	Def.ActorFrame {
		InitCommand=cmd(diffusealpha,0;sleep,2.16;diffusealpha,1);
		Def.Quad{
			InitCommand=cmd(FullScreen;diffuse,color("#294A4A"););
		};
		LoadActor("boot3")..{
			InitCommand=cmd(Center);
		}
	};
	LoadActor("boot2")..{
		InitCommand=cmd(FullScreen;diffusealpha,0;sleep,2.36;diffusealpha,1);
	};
	Def.ActorFrame {
		InitCommand=cmd(diffusealpha,0;sleep,2.16;diffusealpha,1);
		Def.Quad{
			InitCommand=cmd(FullScreen;diffuse,color("#294A4A"););
		};
		LoadActor("boot4")..{
			InitCommand=cmd(Center);
		}
	};
	Def.Quad{
		InitCommand=cmd(FullScreen;diffuse,color("#000000");diffusealpha,0;sleep,2.6;diffusealpha,1;sleep,.16;diffusealpha,0;sleep,0.16;diffusealpha,1);
	};
	LoadActor("boot5")..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,2.8;diffusealpha,1);
	};
};