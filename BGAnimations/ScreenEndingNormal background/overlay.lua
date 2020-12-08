local t = Def.ActorFrame {};
local zf=.6;

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,2.601;linear,4.332;y,SCREEN_TOP-62);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("DIRECTOR");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Hirotaka Hishikawa");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,4.901;linear,5.033;y,SCREEN_TOP-216);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("PROGRAMMER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Akinori Tamura\nYasumi Takase\nNishiborii Taquashi\nK.Nagaoka");
		self:addy(129);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,7.868;linear,4.6;y,SCREEN_TOP-107);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("DESIGNER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Yoshiko Wada\nYumi Yoshida");
		self:addy(75);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,10.934;linear,3.867;y,SCREEN_TOP-62);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("SOUND DIRECTOR AND COMPOSER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("U1-ASAMi");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,13.268;linear,3.866;y,SCREEN_TOP-62);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("SOUND PROGRAMMER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Tomokazu Koizumi");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,15.601;linear,3.9;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("SOUND DESIGNER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Masafumi Sekiguchi");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,17.933;linear,3.867;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("LYRICS & VOCALS");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("SCOTTY D.");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,20.268;linear,4.1;y,SCREEN_TOP-107);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("SOUND PRODUCT MANAGEMENT");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Noboru Sakaue\nTakashi Tateishi");
		self:addy(75);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,22.8;linear,3.901;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("RECORDING ENGINEER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("IMOHORE IMAI");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,25.168;linear,3.865;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("PRODUCT DESIGNER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Nobuyo Takeda");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,27.468;linear,4.133;y,SCREEN_TOP-111);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("PROMOTION");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Yoshiko Yagi\nYoko Sekiguchi");
		self:addy(75);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,30.033;linear,4.3;y,SCREEN_TOP-157);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("DEVELOPMENT SUPPORT");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Yukihiro Yamazaki\nRieko Komatsubara\nTaku");
		self:addy(102);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,32.8;linear,3.868;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("PRODUCER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Metal Yuhki");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,35.133;linear,3.867;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("GRAND PRODUCER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Michihiro Ishizuka");
		self:addy(55);
		end;
	};
};

--ARCADE ORIGINAL STAFF

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,40.668;linear,3.9;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("GRAND PRODUCER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Michihiro Ishizuka");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,43;linear,3.9;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("TECHNICAL ADVISER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Shin Terao");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,45.334;linear,4.966;y,SCREEN_TOP-312);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("PROGRAMMER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Yusuke Kitakaze\nYoshihiko Narita\nTakahiro Ohashi\nTadashi Minamino\nShohei Shimokawa\nTomioka Takeshi");
		self:addy(178);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,48.768;linear,5.6;y,SCREEN_TOP-468);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("DESIGNER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Eiichi Yoshioka\nTomohiro Ota\nTakashi Inubushi\nAkira Iizumi\nMasafumi Yoshida\nKazushi Hasegawa\nKanako Yonezawa\nMasahiko Oda\nYoshiko Oiwa");
		self:addy(256);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,52.833;linear,4.535;y,SCREEN_TOP-208);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("SOUND DESIGNER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Hideaki Sikama\nNaoki Maeda\nMiho Toyoda\nAkira Goshima");
		self:addy(128);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,55.801;linear,4.132;y,SCREEN_TOP-111);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("MECHANICAL DESIGNER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Toyozou Maki\nYoshiyuki Ishikawa");
		self:addy(75);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,58.368;linear,4.1;y,SCREEN_TOP-111);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("HARDWARE DESIGNER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Toyofumi Kitano\nHajime Kawashima");
		self:addy(75);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,60.934;linear,3.867;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("FIRMWARE PROGRAMMER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Masahiko Kami");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,63.268;linear,4.3;y,SCREEN_TOP-157);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("PRODUCT DESIGNER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Takashi Nishimura\nMasayuki Uematsu\nHideaki Minoda");
		self:addy(102);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,66.034;linear,3.867;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("PRODUCER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Yoshihiko Ota");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,68.367;linear,3.866;y,SCREEN_TOP-64);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("GRAND PRODUCER");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Fumiaki Tanaka");
		self:addy(55);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;zoom,zf;sleep,70.668;linear,5;y,SCREEN_TOP-316);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("BEMANI MANAGEMENT");
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("KONAMI MUSIC ENTERTAINMENT\nAkihiko Nagata\nTakaharu Ikeda\nKazunari Okido\nSumiko Shindo\nYukiko Nakagawa");
		self:addy(178);
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;sleep,74.101;linear,6.9;y,SCREEN_TOP-444);
	LoadFont("_nonstop")..{
		OnCommand=function(self)
		self:settext("SPECIAL THANKS");
		self:zoom(zf);
		end;
	};
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Hiroyuki Kadoma\nIssey Nisawa\nMariko Shimbori\nAtsushi Sekimoto\nJuri Sakuma\nMaria Hazama\nAi Yoshida\nShigeki Yutani");
		self:addy(142);
		self:zoom(zf);
		end;
	};
	LoadActor( "intercord" )..{
		OnCommand=cmd(addy,352);
	}
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;sleep,78.868;linear,4.3;y,SCREEN_TOP-98);
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Shuuchiro Murata");
		self:addy(12);
		self:zoom(zf);
		end;
	};
	LoadActor( "mega" )..{
		OnCommand=cmd(addy,70);
	}
};

t[#t+1] = Def.ActorFrame {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+14;sleep,81.068;linear,10.365;y,SCREEN_TOP-780);
	LoadFont("LyricDisplay text")..{
		OnCommand=function(self)
		self:settext("Yasuhiro Shitan");
		self:addy(12);
		self:zoom(zf);
		end;
	};
	LoadActor( "xax" )..{
		OnCommand=cmd(addy,100);
	};
	LoadActor( "kcet" )..{
		OnCommand=cmd(addy,403);
	};
	LoadActor( "konami" )..{
		OnCommand=cmd(addy,707);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "copy" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-42;diffusealpha,0;sleep,93.6;linear,.233;diffusealpha,1);
	};
};

return t;