

function onCreate()
    function onStepHit()
     
    if curStep == 444 then
            
            makeLuaSprite('bartop','',0, -30);
            makeGraphic('bartop',1280,100,'000000');
            addLuaSprite('bartop', false);
            setObjectCamera('bartop','hud');
            setScrollFactor('bartop',0,0);

            makeLuaSprite('barbot','',0,650);
            makeGraphic('barbot',1280,100,'000000');
            addLuaSprite('barbot', false);
            setScrollFactor('barbot',0,0);
            setObjectCamera('barbot','hud');

            makeLuaSprite('subway-alt', 'stages/station/subway-alt', -500, -650);
	        setLuaSpriteScrollFactor('subway-alt', 1, 1);
	        scaleObject('subway-alt', 2.3, 2.3);
	        addLuaSprite('subway-alt',false);

            makeAnimatedLuaSprite('lightsSheet','stages/station/lightsSheet',-500, -650);
	        addAnimationByPrefix('lightsSheet','idle','Lights',24,true);
	        scaleObject('lightsSheet', 2.3, 2.3);
	        


            makeAnimatedLuaSprite('pcameos','stages/station/pcameos',-500, -710);
	        addAnimationByPrefix('pcameos','idle','bop',24,true);
	        scaleObject('pcameos', 2.3, 2.3);
	        
            
    
        end

    if curStep == 704 then
        makeLuaSprite('bartop','',0, -30);
        makeGraphic('bartop',1280,100,'000000');
        setObjectCamera('bartop','hud');
        setScrollFactor('bartop',0,0);

        makeLuaSprite('barbot','',0,650);
        makeGraphic('barbot',1280,100,'000000');
        setScrollFactor('barbot',0,0);
        setObjectCamera('barbot','hud');

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
            
        end

    
    end
end

