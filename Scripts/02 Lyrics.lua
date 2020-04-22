function Actor:LyricCommand(side)
	self:draworder(DrawOrder.Screen+1);
	self:settext(Var "LyricText")

	self:stoptweening()
	self:shadowlengthx(0)
	self:shadowlengthy(0)
	self:strokecolor(Color("Outline"))
	self:zoomx(clamp(SCREEN_WIDTH/(self:GetZoomedWidth()+1), 0, 1))

	local Color = Var "LyricColor"
	local Factor = 1
	if side == "Back" then
		Factor = 0.5
	elseif side == "Front" then
		Factor = 0.9
	end
	self:diffuse({
		Color[1] * Factor,
		Color[2] * Factor,
		Color[3] * Factor,
		Color[4] * Factor
	})

	if side == "Front" then
		self:cropright(1)
	else
		self:cropleft(0)
	end

	-- THEME:GetMetric("ScreenGameplay","ScoreP1X")
	self:addy(50);
	self:diffusealpha(0)
	self:linear(0.2)
	self:addy(-50);
	self:diffusealpha(0.75)
	self:linear(Var "LyricDuration" * 0.75)
	if side == "Front" then
		self:cropright(0)
	else
		self:cropleft(1)
	end
	self:linear(0.2)
	self:addy(-50);
	self:diffusealpha(0)
	self:sleep(0)
	self:y(0);
end