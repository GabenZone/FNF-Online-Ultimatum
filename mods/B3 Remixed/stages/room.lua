function onCreate()
	-- background shit
	makeLuaSprite('room', 'halloween/room', -600, -300);
	setScrollFactor('room', 1, 1);

    makeLuaSprite('window', 'halloween/windowcity', -600, -300);
	setScrollFactor('window', 1, 1);

	makeLuaSprite('filter1', 'halloween/filter1', -600, -300);
	setScrollFactor('filter1', 1, 1);

	addLuaSprite('room', false);
	addLuaSprite('window', false);
	addLuaSprite('filter1', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end