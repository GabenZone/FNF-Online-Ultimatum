function onCreate()
	--bar shit
	makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',true)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

	-- Stagefront
	makeLuaSprite('BG', 'BG', -1300, -1000);
	setLuaSpriteScrollFactor('BG', 1.0, 1.0);

	makeLuaSprite('BGdark', 'BGdark', -1300, -1000);
	setLuaSpriteScrollFactor('BGdark', 1.0, 1.0);
	setProperty('BGdark.visible',false)

	makeLuaSprite('shinies', 'shinies', -1300, -1000);
	setLuaSpriteScrollFactor('shinies', 1.2, 1.2);

	makeLuaSprite('nightlight', 'nightlight', -1350, -1300);
	setLuaSpriteScrollFactor('nightlight', 1.5, 1.5);
	setProperty('nightlight.visible',false)

	makeLuaSprite('light', 'light', -1350, -1300);
	setLuaSpriteScrollFactor('light', 1.5, 1.5);

	makeLuaSprite('nothing', 'nothing', -1300, -1000);
	setLuaSpriteScrollFactor('nothing', 1.0, 1.0);

	makeLuaSprite('bushes', 'bushes', -2500, -1200);
	setLuaSpriteScrollFactor('bushes', 1.4, 1.4);

	makeLuaSprite('bushesdark', 'bushesdark', -2500, -1200);
	setLuaSpriteScrollFactor('bushesdark', 1.4, 1.4);
	setProperty('bushesdark.visible',false)

	addLuaSprite('BGdark', false);
	addLuaSprite('shinies', true);
	addLuaSprite('nightlight', true);
	addLuaSprite('BG', false);
	addLuaSprite('light', true);
	addLuaSprite('bushesdark', true);
	addLuaSprite('bushes', true);
	addLuaSprite('nothing', false);

if curStep >= 1311 then
setProperty('nightlight.visible',true)
end	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end