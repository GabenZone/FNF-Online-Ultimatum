	makeAnimatedLuaSprite('chars', 'stages/stadium/chars', 300, 530)
	scaleObject('chars', 1, 1)
	setLuaSpriteScrollFactor('chars', 1.0, 1.0);
	addAnimationByPrefix('chars', 'bop', 'bop', 24, true)
	objectPlayAnimation('chars', 'chars', true)

	addLuaSprite('chars', true)
	setProperty('chars.antialiasing',false)