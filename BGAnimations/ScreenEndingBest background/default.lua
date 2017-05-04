local sn = math.random(1,2);
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("bg")..{
		OnCommand=cmd(Center);
	};
	LoadActor("greenled")..{
		OnCommand=cmd(Center;addy,-20;addx,100;queuecommand,"Blink");
		BlinkCommand=function(self)
			local ok = math.random(1,3);
			if ok == 1 then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end;
			self:queuecommand("Wait");
		end;
		WaitCommand=function(self)
			local ok = math.random(1,5);
			self:sleep(ok);
			self:queuecommand("Blink");
		end;
	};
	LoadActor("screen"..sn)..{
		OnCommand=cmd(Center;addx,-39;addy,-52);
	};
};

return t;