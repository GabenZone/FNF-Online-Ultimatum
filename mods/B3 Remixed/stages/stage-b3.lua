function onCreate()
	-- background shit
	makeLuaSprite('bg', 'stages/stadium/bg', -650, -150);
	setScrollFactor('bg', 1.0, 1.0);
	scaleObject('bg', 2, 2)

	makeAnimatedLuaSprite('chars', 'stages/stadium/chars', -650, -400)
	scaleObject('chars', 2, 2)
	setLuaSpriteScrollFactor('chars', 1.0, 1.0);
	addAnimationByPrefix('chars', 'bop', 'bop', 24, true)
	objectPlayAnimation('chars', 'chars', true)

	addLuaSprite('bg', false);
	addLuaSprite('chars', false)
	setProperty('chars.antialiasing',false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end