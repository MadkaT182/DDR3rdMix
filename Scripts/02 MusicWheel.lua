function WheelTransform(self,offsetFromCenter,itemIndex,numItems)
	if GAMESTATE:IsCourseMode() then
		self:y(offsetFromCenter*48);
	else
		self:x( offsetFromCenter*180 );
		self:y((itemIndex/2)*math.pi);
		self:z( -100 + 245 * math.cos(360) );
	end;
end;