local u = false;
local r = 0;
local i =0
local shot = false;
local agent = 1
local health = 0;
local xx = 450.95;
local yy = 570;
local xx2 = 1152.9;
local yy2 = 455;
local ofs = 35;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()
	setProperty('defaultCamZoom',0.65)
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

	-- Whitback
	makeLuaSprite('stageback', 'whittyBack', -420, -130);
	setLuaSpriteScrollFactor('stageback', 1.0, 1.0);

	makeLuaSprite('stagefront', 'whittyFront', -300, 670);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);


	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed

	daYvalue = 
	
	setProperty('boyfriend.y', (math.sin(i/20)*50) - 200)
	yy = (math.sin(i/20)*50) + 200
end
