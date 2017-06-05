local function CreditsText(playr)
	local posX=SCREEN_CENTER_X-256;

	if playr == 'PLAYER_2' then
		posX=SCREEN_CENTER_X+64;
	end

	return LoadFont("ScreenSystemLayer credits normal")..{
		InitCommand=cmd(x,posX;y,SCREEN_BOTTOM-16;playcommand,"Refresh");
		RefreshCommand=function(self)
			if GAMESTATE:GetCoinMode() == 'CoinMode_Free' then
				self:diffusealpha(0);
			elseif GAMESTATE:IsEventMode() then
				self:diffusealpha(0);
			else
				local coins = GAMESTATE:GetCoins()
				local coinsPerCredit = PREFSMAN:GetPreference('CoinsPerCredit')
				local credits=math.floor(coins/coinsPerCredit)
				local remainder=math.mod(coins,coinsPerCredit)
				local cStr='CREDIT(S):'
				local cSuff=""

				if credits < 10 then
					cStr=cStr.." "..credits
				else
					cStr=cStr..credits
				end

				if coinsPerCredit > 1 then
					cStr=cStr..' ('..remainder..'/'..coinsPerCredit..')'
				end
				self:horizalign(left)
				self:settext(cStr)
				self:diffusealpha(1);
			end
		end;
		CoinInsertedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		RefreshCreditTextMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		PlayerJoinedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		ScreenChangedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
	};

end;

local function OtherText()
	return LoadFont("ScreenSystemLayer credits normal")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-16;playcommand,"Refresh");
		RefreshCommand=function(self)
			if GAMESTATE:GetCoinMode() == 'CoinMode_Free' then
				self:settext("FREE PLAY")
				self:diffusealpha(1);
			elseif GAMESTATE:IsEventMode() then
				self:settext("EVENT MODE")
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end
		end;
		CoinInsertedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		RefreshCreditTextMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		PlayerJoinedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
		ScreenChangedMessageCommand=cmd(stoptweening;playcommand,"Refresh");
	};
end;

local t = Def.ActorFrame {}

t[#t+1] = Def.ActorFrame {
 	CreditsText( 'PLAYER_1' );
	CreditsText( 'PLAYER_2' );
	OtherText();
};

return t;
