local wMeasure=128;
local t = Def.ActorFrame {
	OnCommand=cmd(addx,-85;addy,-64);
};

for j = 1,4 do
	for i = 1,7 do
		t[#t+1] = Def.ActorFrame {
			LoadActor("tile")..{
				InitCommand=cmd(addx,i*128;addy,j*128);
			};
		};
	end;
end;

return t;