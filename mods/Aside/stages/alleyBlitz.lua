function onCreate()
	
    makeLuaSprite('street-bomblitz','Whitty/street-bomblitz',-800,-350)
    makeLuaSprite('movieBars','movieBars',0,0)
    makeLuaSprite('Whitty/grid','Whitty/grid',-640,-200)
    scaleObject('Whitty/grid',1.8,1.8)
    setLuaSpriteScrollFactor('Whitty/grid', 0.2, 0.2);
    setObjectCamera('movieBars','hud')
	scaleObject('street-bomblitz',1.15,1.15)
	addLuaSprite('street-bomblitz', false);
	addLuaSprite('movieBars',false)
	addLuaSprite('Whitty/grid',true)
end
