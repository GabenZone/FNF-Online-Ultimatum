function onCreate()
	makeLuaSprite('dream', 'nightmare/dream', -500, -300);
	setScrollFactor('dream', 1, 1);
	scaleObject('dream', 2.0, 2.0);
	addLuaSprite('dream', false);

	
	makeLuaSprite("blood", "nightmare/filters/blood", 0, 100)
	scaleObject("blood", 1, 1)
	setObjectCamera("blood", "hud")
	addLuaSprite("blood", true)
end