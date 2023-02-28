local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 1050.95;
local yy = 1170;
local xx2 = 1872.9;
local yy2 = 1125;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    setProperty('defaultCamZoom',0.76)
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)
	
	precacheImage('covers/bg')
	precacheImage('covers/buildings')
	precacheImage('covers/cables')
	precacheImage('covers/castle')
	precacheImage('covers/clouds')
	precacheImage('covers/ground')
	precacheImage('covers/hills')
	precacheImage('covers/light')
	precacheImage('covers/sun')

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1280,100,'000000')
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

    makeLuaSprite('bg', 'covers/bg', -960, -250)
    scaleObject('bg', 1.4, 1.2)
    setLuaSpriteScrollFactor('bg', 0.1, 0.1)
	
	makeLuaSprite('bg3', 'covers/sun', -1200, -250)
    scaleObject('bg3', 1.4, 1.2)
    setLuaSpriteScrollFactor('bg3', 0.1, 0.1)

    makeLuaSprite('bg2', 'covers/clouds', -1200, 0)
    setLuaSpriteScrollFactor('bg2', 0.3, 0.3)

    makeLuaSprite('bg4', 'covers/castle', -1100, -250)
    scaleObject('bg4', 1.4, 1.2)
    setLuaSpriteScrollFactor('bg4', 0.3, 0.3)

    makeLuaSprite('bg5', 'covers/buildings', -1000, -150)
    scaleObject('bg5', 1.4, 1.2)
    setLuaSpriteScrollFactor('bg5', 0.6, 0.6)

    makeLuaSprite('bg6', 'covers/hills', -1000, -150)
    scaleObject('bg6', 1.4, 1.2)
    setLuaSpriteScrollFactor('bg6', 0.8, 0.8)

	makeLuaSprite('bg7', 'covers/ground', -260, -140)
    scaleObject('bg7', 1.2, 1.2)

	makeLuaSprite('bg9', 'covers/light', -260, -140)
    scaleObject('bg9', 1.2, 1.2)
    setLuaSpriteScrollFactor('bg9', 1.1, 1.1)
	
	makeLuaSprite('bg8', 'covers/cables', -260, -140)
    scaleObject('bg8', 1.2, 1)
	setLuaSpriteScrollFactor('bg8', 1.2, 1.2)
	
	addLuaSprite('bartop',true)
	addLuaSprite('barbot',true)
	addLuaSprite('bg', false)
	addLuaSprite('bg2', false)
	addLuaSprite('bg3', false)
	addLuaSprite('bg4', false)
	addLuaSprite('bg5', false)
	addLuaSprite('bg6', false)
	addLuaSprite('bg8', true)
	addLuaSprite('bg9', true)
	addLuaSprite('bg7', false)
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	daYvalue = 
	
	setProperty('dad.y', (math.sin(i/20)*75) + 400)
	yy = (math.sin(i/20)*75) + 870

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.5)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
      
            setProperty('defaultCamZoom',0.76)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end