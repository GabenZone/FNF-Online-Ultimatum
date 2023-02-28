function onCreate()
	-- background shit
	makeLuaSprite('nightmarecupbg', 'nightmarecupbg', 200, 0);
        setProperty('nightmarecupbg.scale.x',1.6)
        setProperty('nightmarecupbg.scale.y',1.6)
        setBlendMode('nightmarecupbg','add')
        makeLuaSprite('nightmarecupbg1', 'nightmarecupbg', 200, 0);
        makeLuaSprite('musicBar','musicBar',2000,500)
        setProperty('musicBar.alpha',0.7)
        makeLuaText('musicText',"Saru & TheInnuend0 - Devil's Gambit",0,2050,520)
        setTextSize('musicText',25)
        setTextBorder("musicText", 1, '00001')
        addLuaText('musicText')
        addLuaSprite('musicBar',false)
        setObjectCamera('musicBar','camHUD')
        setProperty('nightmarecupbg1.scale.x',1.6)
        setProperty('nightmarecupbg1.scale.y',1.6)
        setBlendMode('nightmarecupbg1','multiply')
        makeAnimatedLuaSprite('NMClight','NMClight',0,200)
        addAnimationByPrefix('NMClight','rgrrr instance','rgrrr instance',24,true)
        objectPlayAnimation('NMClight','rgrrr instance',false)

        makeAnimatedLuaSprite('Grainshit','Grainshit',0,0)addAnimationByPrefix('Grainshit','Cupheadshit_gif instance','Cupheadshit_gif instance',24,true)
        objectPlayAnimation('Grainshit','Geain instance',false)
        setObjectCamera('Grainshit','other')
        setBlendMode('Grainshit','lighten')

        addLuaSprite('nightmarecupbg', false);
        addLuaSprite('nightmarecupbg1', false);
        addLuaSprite('NMClight', false);
        addLuaSprite('Grainshit', true)
        makeLuaSprite('healthbarlol','cuphealthbar',0,0)
        addLuaSprite('healthbarlol',false)
        setObjectCamera('healthbarlol','camHUD')
end
function onStepHit()
        if curStep == 1 then
                doTweenX('aw','musicBar',600,2,'sineOut')
                doTweenX('wa','musicText',650,2,'sineOut')
        end
        if curStep == 35 then
                doTweenX('aw','musicBar',2000,2,'sineIn')
                doTweenX('wa','musicText',2050,2,'sineIn')
        end
end
function onCreatePost()
        if downscroll then
                yvi = 70
        else
                yvi = 652
        end
        setProperty('gf.visible',false)
        setProperty('healthBarBG.visible',false)
        setProperty('healthBar.scale.y',1.5)
        setProperty('timeBar.color',getColorFromHex('CC2BF7'))
        setProperty('healthbarlol.x',getProperty('healthBar.x')-20)
        setObjectOrder('healthbarlol',getObjectOrder('healthBar'))
        setProperty('healthbarlol.y',getProperty('healthBar.y')-20)
        setProperty('iconP2.y',getProperty('iconP2.y') - 8)
end