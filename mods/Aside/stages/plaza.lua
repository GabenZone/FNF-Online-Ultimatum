function onCreate()
    makeLuaSprite('stage','Momichi/stage',-1050,-370)
    scaleObject('stage',1.4,1.4)

    makeLuaSprite('movieBars','movieBars',0,0)
    setObjectCamera('movieBars','hud')

	addLuaSprite('stage', false);
	addLuaSprite('movieBars',false);
    

end
