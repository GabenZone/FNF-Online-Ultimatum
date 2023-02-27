function onCreate()
	-- background shit
	makeLuaSprite('bg', 'stages/stadium/bg', -600, -200);
	setScrollFactor('bg', 1.0, 1.0);
	scaleObject('bg', 2, 2)

	addLuaSprite('bg', false);
	
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end