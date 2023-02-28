function onCreate()
	-- background shit
	makeLuaSprite('alge_back', 'alge_back', -600, -300);
	setScrollFactor('alge_back', 0.9, 0.9);
	
	makeLuaSprite('alge_mid', 'alge_mid', -650, 600);
	setScrollFactor('alge_mid', 0.9, 0.9);
	scaleObject('alge_mid', 1.1, 1.1);

		makeLuaSprite('alge_front', 'alge_front', -500, -300);
		setScrollFactor('alge_front', 1.3, 1.3);
		scaleObject('alge_front', 0.9, 0.9);

	addLuaSprite('alge_back', false);
	addLuaSprite('alge_mid', false);
	addLuaSprite('alge_front', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end