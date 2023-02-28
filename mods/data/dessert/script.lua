

function onCreate()
    function onStepHit()
     
    if curStep == 416 then
            

        makeLuaSprite('dream', 'nightmare/dream', -700, -500);
        setScrollFactor('dream', 1, 1);
        scaleObject('dream', 2.0, 2.0);
        addLuaSprite('dream', false);
	        
            
    
        end

    if curStep == 672 then
        
        makeLuaSprite('dream', 'nightmare/dream', -700, -500);
        setScrollFactor('dream', 1, 1);
        scaleObject('dream', 2.0, 2.0);

        end

    
    end
end

