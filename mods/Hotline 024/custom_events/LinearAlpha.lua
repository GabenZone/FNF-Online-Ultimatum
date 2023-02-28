function onEvent(name, value1, value2)
	-- bf notesFade
	if name == 'LinearAlpha' then
		duration = tonumber(value1);
		end

		targetAlpha = tonumber(value2);
	noteTweenAlpha('AF',4 , value2 , value1, 'linear');
	noteTweenAlpha('BF',5 , value2 , value1, 'linear');
	noteTweenAlpha('CF',6 , value2 , value1, 'linear');
	noteTweenAlpha('DF',7 , value2 , value1, 'linear');
	
	-- oppt notefade
	noteTweenAlpha('EF',0 , value2 , value1, 'linear');
	noteTweenAlpha('FF',1 , value2 , value1, 'linear');
	noteTweenAlpha('GF',2 , value2 , value1, 'linear');
	noteTweenAlpha('HF',3 , value2 , value1, 'linear');
	
	
end
end