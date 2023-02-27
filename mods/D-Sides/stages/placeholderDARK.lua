function onCreate()


	makeLuaSprite('bg', 'W0/TestWeekBGDARK', -238, -321)
	addLuaSprite('bg', false)

	makeLuaSprite('floor', 'W0/TestWeekForeDARK', -389, -377)
	addLuaSprite('floor', true)
	scaleObject("floor", 1.1, 1.1)
	setLuaSpriteScrollFactor('floor', 1, 1);

	close(true)

end
