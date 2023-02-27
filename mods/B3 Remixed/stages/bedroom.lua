function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg', -700, -200);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', 2, 2);

	
	makeLuaSprite('light', 'light', -700, -200);
	setLuaSpriteScrollFactor('light', 1, 1);
	scaleObject('light', 2, 2);

	makeLuaSprite('front', 'front', -700, -200);
	setLuaSpriteScrollFactor('front', 1, 1);
	scaleObject('front', 2, 2);

	

	

	addLuaSprite('bg', false);
	addLuaSprite('light', true);
	addLuaSprite('front', true);
	
	
	
end