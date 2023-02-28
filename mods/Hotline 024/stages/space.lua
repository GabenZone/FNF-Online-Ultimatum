local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = -600.95;
local yy = 370;
local xx2 = -122.9;
local yy2 = 105;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;

video = 0
function onCreate()
	precacheImage('stage3/s1')
	precacheImage('stage3/s2')
	precacheImage('stage3/s3')
	precacheImage('stage3/s4')
	precacheImage('stage3/s5')
	precacheImage('stage3/s6')
	precacheImage('stage3/s7')
	precacheImage('stage3/s8')
	precacheImage('stage3/s9')
	precacheImage('stage3/s10')
	precacheImage('stage3/cutscene/bg')
	precacheImage('stage3/cutscene/bgEnd')
	precacheImage('stage3/cutscene/logo')

    makeLuaSprite('bg', 'stage3/s1', -2650, -1520)
    addLuaSprite('bg', false)
    scaleObject('bg', 2.4, 2.4)
	setLuaSpriteScrollFactor('bg', 0.1, 0.1)

    makeLuaSprite('bg2', 'stage3/s2', -2000, -600)
    addLuaSprite('bg2', false)
    scaleObject('bg2', 2, 2)
	setLuaSpriteScrollFactor('bg2', 0.2, 0.2)

    makeLuaSprite('bg3', 'stage3/s3', -1300, -600)
    addLuaSprite('bg3', false)
    scaleObject('bg3', 1.4, 1.4)
	setLuaSpriteScrollFactor('bg3', 0.3, 0.3);

    makeLuaSprite('bg4', 'stage3/s4', -2650, -800)
    scaleObject('bg4', 2.5, 2.4)
	setLuaSpriteScrollFactor('bg4', 0.45, 0.45);
	setProperty('bg4.alpha', 0.5);

    makeLuaSprite('bg5', 'stage3/s5', -2750, -1200)
    addLuaSprite('bg5', false)
    scaleObject('bg5', 2.4, 2.4)
	setLuaSpriteScrollFactor('bg5', 0.4, 0.4);
	setProperty('bg5.scale.x', getProperty('bg5.scale.x') -0.25);
	setProperty('bg5.scale.y', getProperty('bg5.scale.y') -0.25);

    makeLuaSprite('bg6', 'stage3/s6', -2650, -1400)
    addLuaSprite('bg6', false)
    scaleObject('bg6', 2.4, 2.4)
	setLuaSpriteScrollFactor('bg6', 0.5, 0.5);

    addLuaSprite('bg4', false)

    makeLuaSprite('bg7', 'stage3/s7', -2650, -1400)
    addLuaSprite('bg7', false)
    scaleObject('bg7', 2.4, 2.4)
	setLuaSpriteScrollFactor('bg7', 0.6, 0.6);

    makeLuaSprite('bg8', 'stage3/s8', -2525, -1375)
    addLuaSprite('bg8', false)
    scaleObject('bg8', 2.4, 2.4)
	setLuaSpriteScrollFactor('bg8', 0.8, 0.8);
	setProperty('bg8.scale.x', getProperty('bg8.scale.x') -0.6);
	setProperty('bg8.scale.y', getProperty('bg8.scale.y') -0.6);
	
	makeAnimatedLuaSprite('characters/GF_assets', 'characters/GF_assets', -900, -420);
	addAnimationByPrefix('characters/GF_assets', 'bop', 'GF Dancing Beat', 24, true);
	setLuaSpriteScrollFactor('characters/GF_assets', 0.8, 0.8);
	setProperty('characters/GF_assets.scale.x', getProperty('characters/GF_assets.scale.x') -0.5);
	setProperty('characters/GF_assets.scale.y', getProperty('characters/GF_assets.scale.y') -0.5);
	addLuaSprite('characters/GF_assets', false);

    makeLuaSprite('bg9', 'stage3/s9', -2000, -1520)
    addLuaSprite('bg9', false)
    scaleObject('bg9', 1.75, 2.4)

    makeLuaSprite('bg10', 'stage3/s10', -2400, -900)
    addLuaSprite('bg10', true)
    scaleObject('bg10', 1.8, 1.5)
	setLuaSpriteScrollFactor('bg10', 1.2, 1.2)
	
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
	
	makeLuaSprite('black','',-600,-300)
    makeGraphic('black',2560,1440,'000000')
    addLuaSprite('black',true)
    setScrollFactor('black',0,0)
	setObjectCamera('black','other')
	
	setProperty('defaultCamZoom',0.55)
end

function onBeatHit()
	objectPlayAnimation('characters/GF_assets', 'bop', false);
	if curBeat == 2 then
		setProperty('black.visible', false)
	end
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	daYvalue = 
	
	setProperty('dad.y', (math.sin(i/20)*75) - 650)
	yy = (math.sin(i/20)*75) - 150

	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.45)
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
            setProperty('defaultCamZoom',0.55)
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