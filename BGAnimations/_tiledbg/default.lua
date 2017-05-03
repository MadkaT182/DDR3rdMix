local t = Def.ActorFrame{
	LoadActor("bgarcade")..{
		Condition=GAMESTATE:GetCoinMode() == 'CoinMode_Pay';
	};
	LoadActor("bghome")..{
		Condition=GAMESTATE:GetCoinMode() ~= 'CoinMode_Pay';
	};
}
return t;