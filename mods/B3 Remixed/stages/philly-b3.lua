function onCreate()
	-- background shit
	
	
	

	
	
	makeLuaSprite('subway', 'stages/station/subway', -500, -650);
	setLuaSpriteScrollFactor('subway', 1, 1);
	scaleObject('subway', 2.3, 2.3);
	addLuaSprite('subway',false);

    makeAnimatedLuaSprite('lightsSheet','stages/station/lightsSheet',-500, -650);
	addAnimationByPrefix('lightsSheet','idle','Lights',24,true);
	scaleObject('lightsSheet', 2.3, 2.3);
	addLuaSprite('lightsSheet',false);


     makeAnimatedLuaSprite('pcameos','stages/station/pcameos',-500, -710);
	addAnimationByPrefix('pcameos','idle','bop',24,true);
	scaleObject('pcameos', 2.3, 2.3);
	addLuaSprite('pcameos',false);

	
	
	function onBeatHit()
		objectPlayAnimation('pcameos','idle',true)
		objectPlayAnimation('lightsSheet','idle',true)
	end
	
    

	
end