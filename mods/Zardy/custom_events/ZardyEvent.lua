local grabbed = false
local indices = {57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0}

-- keyGetter getPropertyFromClass('flixel.FlxG', 'keys.justPressed.?')
function onCreate()
	--variables--
	py = 250
	px = 200 + 50
	pxb = 400 + 50
	pxc = 600 + 50
	pxd = 800 + 50
	k1 = 'n/a'
	k2 = 'n/a'
	k3 = 'n/a'
	k4 = 'n/a'
	stun = false
	finished = false
	counter = 0;
	
	makeAnimatedLuaSprite('vine', 'ZardyWeek2_Vines', 155, 620)
	addAnimationByPrefix('vine', 'vine', 'Vine Whip instance 1', 24, false)
	addAnimationByPrefix('vine', 'vineBack', 'Vine Back instance 1', 24, false)
	addAnimationByPrefix('vine', 'vineChop', 'Vine Chop instance 1', 24, false)
	addLuaSprite('vine', false)
	setProperty('vine.alpha', 0)
	
	--sprites--
	--key1
	makeLuaSprite('arrow1', 'zardy/arrow1', px, py);
	makeLuaSprite('arrow2', 'zardy/arrow2', px, py);
	makeLuaSprite('arrow3', 'zardy/arrow3', px, py);
	makeLuaSprite('arrow4', 'zardy/arrow4', px, py);
	--key2
	makeLuaSprite('arrowb1', 'zardy/arrow1', pxb, py);
	makeLuaSprite('arrowb2', 'zardy/arrow2', pxb, py);
	makeLuaSprite('arrowb3', 'zardy/arrow3', pxb, py);
	makeLuaSprite('arrowb4', 'zardy/arrow4', pxb, py);
	--key3
	makeLuaSprite('arrowc1', 'zardy/arrow1', pxc, py);
	makeLuaSprite('arrowc2', 'zardy/arrow2', pxc, py);
	makeLuaSprite('arrowc3', 'zardy/arrow3', pxc, py);
	makeLuaSprite('arrowc4', 'zardy/arrow4', pxc, py);
	--key4
	makeLuaSprite('arrowd1', 'zardy/arrow1', pxd, py);
	makeLuaSprite('arrowd2', 'zardy/arrow2', pxd, py);
	makeLuaSprite('arrowd3', 'zardy/arrow3', pxd, py);
	makeLuaSprite('arrowd4', 'zardy/arrow4', pxd, py);
	
	setObjectCamera('arrow1', 'other');
	setObjectCamera('arrow2', 'other');
	setObjectCamera('arrow3', 'other');
	setObjectCamera('arrow4', 'other');
		
	setObjectCamera('arrowb1', 'other');
	setObjectCamera('arrowb2', 'other');
	setObjectCamera('arrowb3', 'other');
	setObjectCamera('arrowb4', 'other');
		
	setObjectCamera('arrowc1', 'other');
	setObjectCamera('arrowc2', 'other');
	setObjectCamera('arrowc3', 'other');
	setObjectCamera('arrowc4', 'other');
		
	setObjectCamera('arrowd1', 'other');
	setObjectCamera('arrowd2', 'other');
	setObjectCamera('arrowd3', 'other');
	setObjectCamera('arrowd4', 'other');
	
	--new sprite system
	addLuaSprite('arrow1', true);
	addLuaSprite('arrow2', true);
	addLuaSprite('arrow3', true);
	addLuaSprite('arrow4', true);
	
	addLuaSprite('arrowb1', true);
	addLuaSprite('arrowb2', true);
	addLuaSprite('arrowb3', true);
	addLuaSprite('arrowb4', true);
	
	addLuaSprite('arrowc1', true);
	addLuaSprite('arrowc2', true);
	addLuaSprite('arrowc3', true);
	addLuaSprite('arrowc4', true);
	
	addLuaSprite('arrowd1', true);
	addLuaSprite('arrowd2', true);
	addLuaSprite('arrowd3', true);
	addLuaSprite('arrowd4', true);
	
	setProperty('arrow1.visible', false);
	setProperty('arrow2.visible', false);
	setProperty('arrow3.visible', false);
	setProperty('arrow4.visible', false);
	
	setProperty('arrowb1.visible', false);
	setProperty('arrowb2.visible', false);
	setProperty('arrowb3.visible', false);
	setProperty('arrowb4.visible', false);
	
	setProperty('arrowc1.visible', false);
	setProperty('arrowc2.visible', false);
	setProperty('arrowc3.visible', false);
	setProperty('arrowc4.visible', false);
	
	setProperty('arrowd1.visible', false);
	setProperty('arrowd2.visible', false);
	setProperty('arrowd3.visible', false);
	setProperty('arrowd4.visible', false);
end

function onEvent(n, v1, v2)
	if n == 'ZardyEvent' and stun == false then

	grabThatMF()

	--cameraFlash('other', '0xFFFFFF', '0.2');
	
	elseif n == 'ZardyEvent' and stun == true then
		setProperty('health', -500);
	end
end

function hidePrevious()
	setProperty(k1v, false);
	setProperty(k2v, false);
	setProperty(k3v, false);
	setProperty(k4v, false);
end

function showArrows()
	setProperty(k1v, true);
	setProperty(k2v, true);
	setProperty(k3v, true);
	setProperty(k4v, true);
	--debugPrint(k1v);
end

function startPressin()
	setProperty('boyfriend.stunned', true);
	triggerEvent('Screen Shake', '', '0.1, 0.009');
	stun = true;
	finished = false;
end

function heDone()
	counter = 0;
	stun = false;
	finished = false;
	setProperty('boyfriend.stunned', false);
	characterPlayAnim('boyfriend', 'axe', true);
	runTimer('flush2', 1.1)
	setProperty('boyfriend.specialAnim', true);
	hidePrevious()
end

function onTimerCompleted(tag)
	if tag == 'grab' then

		if botPlay then
			heDone()
			playSound('bf_grabbed_by_vine', 0.9)
		end

		characterPlayAnim('boyfriend', 'heldByVine', true);
		setProperty('boyfriend.specialAnim', true);
		playSound('bf_grabbed_by_vine', 0.9)
		k1 = string.format('arrow%i', getRandomInt(1, 4, true));
		k2 = string.format('arrowb%i', getRandomInt(1, 4, true));
		k3 = string.format('arrowc%i', getRandomInt(1, 4, true));
		k4 = string.format('arrowd%i', getRandomInt(1, 4, true));
	
		k1v = (k1..'.visible')
		k2v = (k2..'.visible')
		k3v = (k3..'.visible')
		k4v = (k4..'.visible')
	
		--debugPrint(k1..' '.. k2 ..' '.. k3 ..' '.. k4 )
	
		hidePrevious();
		showArrows();
		startPressin();
	end

	if tag == 'flush' then
		--characterPlayAnim('boyfriend', 'dodge', true);
		--setProperty('boyfriend.specialAnim', true);
		objectPlayAnimation('vine', 'vineBack')
		runTimer('flush3', 0.88)
		playSound('bf_vine_defeat', 0.9)
	end

	if tag == 'flush2' then
		playSound('bf_axe_chop', 0.9)
		runTimer('flush', 0.09)
		objectPlayAnimation('vine', 'vineChop')
	end

	if tag == 'flush4' then
		setProperty('vine.alpha', 0)
	end

	if tag == 'flush3' then
		characterPlayAnim('boyfriend', 'idle', true);
		setProperty('boyfriend.specialAnim', true);
		runTimer('flush4', 1.55)
		--setProperty('vine.alpha', 0)
	end
end

function onUpdatePost()
	--KEY 1
	if stun == true and k1 == 'arrow1' and counter == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.LEFT') then
	counter = (counter + 1)
	setProperty(k1v, false);
	
	elseif stun == true and k1 == 'arrow2' and counter == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.DOWN') then
	counter = (counter + 1)
	setProperty(k1v, false);
	
	elseif stun == true and k1 == 'arrow3' and counter == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.UP') then
	counter = (counter + 1)
	setProperty(k1v, false);
	
	elseif stun == true and k1 == 'arrow4' and counter == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.RIGHT') then
	counter = (counter + 1)
	setProperty(k1v, false);
	
	--KEY 2
	elseif stun == true and k2 == 'arrowb1' and counter == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.LEFT') then
	counter = (counter + 1)
	setProperty(k2v, false);
	
	elseif stun == true and k2 == 'arrowb2' and counter == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.DOWN') then
	counter = (counter + 1)
	setProperty(k2v, false);
	
	elseif stun == true and k2 == 'arrowb3' and counter == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.UP') then
	counter = (counter + 1)
	setProperty(k2v, false);
	
	elseif stun == true and k2 == 'arrowb4' and counter == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.RIGHT') then
	counter = (counter + 1)
	setProperty(k2v, false);
	
	
	--KEY 3
	elseif stun == true and k3 == 'arrowc1' and counter == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.LEFT') then
	counter = (counter + 1)
	setProperty(k3v, false);
	
	elseif stun == true and k3 == 'arrowc2' and counter == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.DOWN') then
	counter = (counter + 1)
	setProperty(k3v, false);
	
	elseif stun == true and k3 == 'arrowc3' and counter == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.UP') then
	counter = (counter + 1)
	setProperty(k3v, false);
	
	elseif stun == true and k3 == 'arrowc4' and counter == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.RIGHT') then
	counter = (counter + 1)
	setProperty(k3v, false);
	
	
	--KEY 4 (FINAL KEY)
	elseif stun == true and k4 == 'arrowd1' and counter == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.LEFT') then
	counter = (counter + 1)
	setProperty(k4v, false);
	finished = true;
	
	elseif stun == true and k4 == 'arrowd2' and counter == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.DOWN') then
	counter = (counter + 1)
	setProperty(k4v, false);
	finished = true;
	
	elseif stun == true and k4 == 'arrowd3' and counter == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.UP') then
	counter = (counter + 1)
	setProperty(k4v, false);
	finished = true;
	
	elseif stun == true and k4 == 'arrowd4' and counter == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.RIGHT') then
	counter = (counter + 1)
	setProperty(k4v, false);
	finished = true;
	
	elseif finished == true then
	heDone();
	end
end

function grabThatMF()
	grabbed = true
	debugPrint("IM GRABBING THAT MF");
	setProperty('vine.alpha', 1)
	objectPlayAnimation('vine', 'vine', false);
	debugPrint("playin grab");

	runTimer('grab', 1.55)
end
