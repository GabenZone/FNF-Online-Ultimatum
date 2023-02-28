function onEvent(name, value1, value2)
	-- bf notesFade
	if name == 'LinearAlphaBF' then
		duration = tonumber(value1);

		targetAlpha = tonumber(value2);
	noteTweenAlpha('AF',4 , targetAlpha , duration, 'bezier');
	noteTweenAlpha('BF',5 , targetAlpha , duration, 'bezier');
	noteTweenAlpha('CF',6 , targetAlpha , duration, 'bezier');
	noteTweenAlpha('DF',7 , targetAlpha , duration, 'bezier');
	

	
end
end