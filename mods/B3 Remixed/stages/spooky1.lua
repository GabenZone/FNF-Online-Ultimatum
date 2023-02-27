function onCreate()
	-- background shit
	makeLuaSprite('bg', 'stages/forest/sky', -1400, -250);
	setScrollFactor('bg', 0.9, 0.9);
	scaleObject('bg', 3, 3)

    makeLuaSprite('bg1', 'stages/forest/treesB', -1400, -250);
	setScrollFactor('bg1', 0.9, 0.9);
	scaleObject('bg1', 3, 3)

	makeLuaSprite('mg', 'stages/forest/house', -1400, -650);
	setScrollFactor('mg', 1.0, 1.0);
	scaleObject('mg', 3, 3)

	makeLuaSprite('fg', 'stages/forest/treesF', 1600, -600);
	setScrollFactor('fg', 1.1, 1.1);
	scaleObject('fg', 3, 3)

	addLuaSprite('bg', false);
	addLuaSprite('bg1', false);
	addLuaSprite('mg', false);
	addLuaSprite('fg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end