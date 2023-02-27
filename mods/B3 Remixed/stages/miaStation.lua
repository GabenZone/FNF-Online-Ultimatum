function onCreate()
	-- background shit
	makeLuaSprite('stadium', 'stages/stage/stadium', -550, -280);
	setLuaSpriteScrollFactor('stadium', 1, 1);
	scaleObject('stadium', 2.1, 2.1);
	
	makeAnimatedLuaSprite('mia_boppers','stages/stage/mia_boppers',-550, -380);
	addAnimationByPrefix('mia_boppers','idle','Back Crowd Bop', 24,true);
	scaleObject('mia_boppers', 2.1, 2.1);

	makeAnimatedLuaSprite('mia_boppers2','stages/stage/mia_boppers',-550, -380);
	addAnimationByPrefix('mia_boppers2','idle','Front Crowd Bop', 24,true);
	scaleObject('mia_boppers2', 2.1, 2.1);

	makeLuaSprite('lights', 'stages/stage/lights', -550, -280);
	setLuaSpriteScrollFactor('lights', 1, 1);
	scaleObject('lights', 2.1, 2.1);

	-- sprites that only load if Low Quality is turned off

	
	

	addLuaSprite('stadium', false);
	addLuaSprite('mia_boppers', false);
	addLuaSprite('mia_boppers2', false);
	addLuaSprite('lights', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end