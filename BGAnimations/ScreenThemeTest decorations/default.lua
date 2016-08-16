
------BOOTCHECK
-- local t = Def.ActorFrame {};
-- local strload = "FLASH-ROM CHECKING...";
-- local perc = 0;
-- local loadtm = 75.758;
-- local timeunit = loadtm/100;

-- --01:16.758
-- t[#t+1] = LoadFont("Boot load")..{
-- 	InitCommand=cmd(y,SCREEN_CENTER_Y;x,SCREEN_CENTER_X;horizalign,center);
-- 	OnCommand=cmd(queuecommand,"Anim");
-- 	AnimCommand=function(self)
-- 		if perc == 101 then
-- 			self:settextf("\nCHECK COMPLETE.");
-- 		else
-- 			self:settextf(strload.."\n"..perc.." ");
-- 			self:queuecommand("Incr");
-- 		end;
-- 	end;
-- 	IncrCommand=function(self)
-- 		perc = perc+1;
-- 		self:sleep(timeunit);
-- 		self:queuecommand("Anim");
-- 	end;
-- };

-- return t


local t = Def.ActorFrame {};
return t