function onCreate()
	-- background shit
	makeAnimatedLuaSprite('endless_bg_1','endless_bg_1',-900, -400);
	addAnimationByPrefix('endless_bg_1','idle','Fuck',35,true);
	scaleObject('endless_bg_1', 3, 3);
	
	makeLuaSprite('sss', 'sss', 550, 0);
	setLuaSpriteScrollFactor('sss', 1, 1);
	scaleObject('sss', 0.5, 0.5);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setLuaSpriteScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('endless_bg_1', false);
	addLuaSprite('sss', false);
	
end	
	