function onCreate()
    makeLuaSprite('stage','Garcello/stage',-50,-100)
    makeLuaSprite('movieBars','movieBars',0,0)
    setObjectCamera('movieBars','hud')
	scaleObject('stage',1.1,1.1)
	addLuaSprite('stage', false);
	addLuaSprite('movieBars',false)
end
