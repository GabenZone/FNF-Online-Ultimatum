function onCreate()
	-- background shit
	makeLuaSprite('limoSunset2', 'limo2/limoSunset2', -120, -50);
	setLuaSpriteScrollFactor('limoSunset2', 0.1, 0.1);

	
	makeAnimatedLuaSprite('limoDrive2', 'limo2/limoDrive2',-120, 550);
    setLuaSpriteScrollFactor('limoDrive2', 1, 1);
	makeAnimatedLuaSprite('bgLimo2','limo2/bgLimo2', -150, 480);
	setLuaSpriteScrollFactor('bgLimo2', 0.4, 0.4);
	

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('limoDancer2', 'limo2/limoDancer2',550, 100);
    setLuaSpriteScrollFactor('limoDancer2', 0.4, 0.4);

	makeAnimatedLuaSprite('limoDancer3', 'limo2/limoDancer2',250, 100);
    setLuaSpriteScrollFactor('limoDancer3', 0.4, 0.4);
	
	makeAnimatedLuaSprite('limoDancer4', 'limo2/limoDancer2',850, 100);
    setLuaSpriteScrollFactor('limoDancer4', 0.4, 0.4);
	
	makeAnimatedLuaSprite('limoDancer5', 'limo2/limoDancer2',1150, 100);
    setLuaSpriteScrollFactor('limoDancer5', 0.4, 0.4);
	end
	
    
	addLuaSprite('limoSunset2', false);
	addLuaSprite('bgLimo2', false);
	addAnimationByPrefix('bgLimo2', 'idle', 'background limo pink', 20, true); 
	addLuaSprite('limoDancer2', false);
	addAnimationByPrefix('limoDancer2', 'idle', 'bg dancer sketch PINK', 24, true); 
	addLuaSprite('limoDancer3', false);
	addAnimationByPrefix('limoDancer3', 'idle', 'bg dancer sketch PINK', 24, true);
	addLuaSprite('limoDancer4', false);
	addAnimationByPrefix('limoDancer4', 'idle', 'bg dancer sketch PINK', 24, true);
	addLuaSprite('limoDancer5', false);
	addAnimationByPrefix('limoDancer5', 'idle', 'bg dancer sketch PINK', 24, true);

	addLuaSprite('limoDrive2', false);
    setObjectOrder('limoDrive2',7);
	addAnimationByPrefix('limoDrive2', 'idle', 'Limo stage', 24, true); 

   
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end