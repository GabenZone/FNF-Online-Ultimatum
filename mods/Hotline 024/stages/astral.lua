local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 960;
local yy = 520;
local xx2 = 960;
local yy2 = 540;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
    setProperty('defaultCamZoom',0.7)
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

	precacheImage('matzu/2/BG1')
	precacheImage('matzu/2/desk2')
	precacheImage('matzu/2/door')
	precacheImage('matzu/2/ground')
	precacheImage('matzu/2/idk')
	precacheImage('matzu/2/messages')
	precacheImage('matzu/2/plamts')
	precacheImage('matzu/BG')
	precacheImage('matzu/DES')
	precacheImage('matzu/PLAMTS')

    makeLuaSprite('bg', 'matzu/BG', 0, 0)
    addLuaSprite('bg', false)
    setProperty('bg.visible', true)

    makeLuaSprite('bg2', 'matzu/DES', 0, 0)
    addLuaSprite('bg2', true)
    setProperty('bg2.visible', true)

    makeLuaSprite('bg3', 'matzu/PLAMTS', 0, 0)
    addLuaSprite('bg3', true)
    setProperty('bg3.visible', true)
	setScrollFactor('bg3', 1.1, 1.1);

    makeLuaSprite('bg4', 'matzu/2/BG1', 0, 0)
    addLuaSprite('bg4', false)
    setProperty('bg4.visible', false)

    makeLuaSprite('bg5', 'matzu/2/idk', 0, 0)
    addLuaSprite('bg5', false)
    setProperty('bg5.visible', false)

    makeLuaSprite('bg6', 'matzu/2/ground', 0, 0)
    addLuaSprite('bg6', false)
    setProperty('bg6.visible', false)

    makeLuaSprite('bg7', 'matzu/2/messages', 0, 0)
    addLuaSprite('bg7', false)
    setProperty('bg7.visible', false)

    makeLuaSprite('bg8', 'matzu/2/door', 0, 0)
    addLuaSprite('bg8', true)
    setProperty('bg8.visible', false)

    makeLuaSprite('bg9', 'matzu/2/desk2', 0, 0)
    addLuaSprite('bg9', true)
    setProperty('bg9.visible', false)

    makeLuaSprite('bg10', 'matzu/2/plamts2', 0, 0)
    addLuaSprite('bg10', true)
    setProperty('bg10.visible', false)
	setScrollFactor('bg10', 1.1, 1.1);
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
     if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
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
      
            setProperty('defaultCamZoom',0.7)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-(ofs/4),yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+(ofs/4),yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-(ofs/4))
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+(ofs/4))
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
