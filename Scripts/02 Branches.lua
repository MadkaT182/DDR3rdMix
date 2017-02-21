function CompanyScreen()
	if GAMESTATE:GetCoinMode() == 'CoinMode_Pay' then
		return "ScreenCompany";
	else
		return "ScreenComHome";
	end;
end;