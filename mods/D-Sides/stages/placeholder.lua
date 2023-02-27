function onCreate()


    makeLuaSprite('bg','W0/TestWeekBG',-238,-321)
	addLuaSprite('bg',false)

	makeLuaSprite('floor','W0/TestWeekFore',-389,-377)
	addLuaSprite('floor',true)
	scaleObject("floor", 1.1, 1.1)
	etLuaSpriteScrollFactor('floor', 1, 1);


	close(true)
	
end
