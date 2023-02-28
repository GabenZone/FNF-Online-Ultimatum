function onCreate()

    makeLuaSprite('street','Whitty/street',-760,-290)
    makeLuaSprite('movieBarss','movieBars',0,0)
    setObjectCamera('movieBarss','hud')
	scaleObject('street',1.2,1.2)
	addLuaSprite('street', false);
	addLuaSprite('movieBarss',false)
end
