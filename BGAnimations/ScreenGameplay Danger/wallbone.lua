local wMeasure=128;
local t = Def.ActorFrame {
	OnCommand=cmd(addx,-64;addy,-64);
};

--Y axis
for j = 1,4 do

	--X axis
	for i = 1,7 do

		t[#t+1] = Def.ActorFrame {
			LoadActor("bone")..{
				InitCommand=cmd(addx,i*128;addy,j*128);
			};
		};

	end;

end;

return t;