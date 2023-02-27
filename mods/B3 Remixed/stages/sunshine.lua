function onCreate()
	
    
   

	makeLuaSprite('back', 'back', -700, -300);
	setScrollFactor('back', 1, 1);
	scaleObject('back', 3, 3);
	addLuaSprite('back', false);

	makeLuaSprite('chandelier', 'chandelier', -700, -300);
	setScrollFactor('chandelier', 1, 1);
	scaleObject('chandelier', 3, 3);
	addLuaSprite('chandelier', false);

    makeLuaSprite('text', 'text', -700, -300);
	setScrollFactor('text', 1, 1);
	scaleObject('text', 3, 3);
	addLuaSprite('text', false);




end

function onCreatePost()
	addChromaticAbberationEffect('camGame',0.003)
    addChromaticAbberationEffect('camHud', 0,003)
end