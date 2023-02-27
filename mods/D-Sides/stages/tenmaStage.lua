function onCreate()
	makeLuaSprite('tenmacity','boners/ENDLESS/tenmacity',0,0)
	addLuaSprite('tenmacity',false)

	makeLuaSprite('tenmathing1','boners/ENDLESS/tenmathing1',0,0)
	addLuaSprite('tenmathing1',false)

	makeLuaSprite('tenmathingy1','boners/ENDLESS/tenmathingy1',-200,200)
	addLuaSprite('tenmathingy1',false)

	makeAnimatedLuaSprite('tezma4','boners/ENDLESS/tezma2',1510,440)
	addLuaSprite('tezma4',false)
	addAnimationByPrefix('tezma4','tezma2','tezma2',24,false)
	objectPlayAnimation('tezma4','tezma2',true)

	makeAnimatedLuaSprite('tezma5','boners/ENDLESS/tezma2',1710,460)
	addLuaSprite('tezma5',false)
	addAnimationByPrefix('tezma5','tezma2','tezma2',24,false)
	objectPlayAnimation('tezma5','tezma2',true)

	makeLuaSprite('tenmathingy2','boners/ENDLESS/tenmathingy2',0,0)
	addLuaSprite('tenmathingy2',false)

	makeAnimatedLuaSprite('tezma1','boners/ENDLESS/tezma1',340,300)
	addLuaSprite('tezma1',false)
	addAnimationByPrefix('tezma1','tezma1','tezma1',24,false)
	objectPlayAnimation('tezma1','tezma1',true)

	makeAnimatedLuaSprite('tezma2','boners/ENDLESS/tezma1',190,380)
	addLuaSprite('tezma2',false)
	addAnimationByPrefix('tezma2','tezma1','tezma1',24,false)
	objectPlayAnimation('tezma2','tezma1',true)

	makeAnimatedLuaSprite('tezma3','boners/ENDLESS/tezma1',60,470)
	addLuaSprite('tezma3',false)
	addAnimationByPrefix('tezma3','tezma1','tezma1',24,false)
	objectPlayAnimation('tezma3','tezma1',true)

	makeLuaSprite('tenmacd','boners/ENDLESS/tenmacd',0,0)
	addLuaSprite('tenmacd',false)

	makeLuaSprite('tenmathing2','boners/ENDLESS/tenmathing2',-50,0)
	addLuaSprite('tenmathing2',false)

	makeAnimatedLuaSprite('TenmaLine1','boners/ENDLESS/TenmaLine',134,400)
	addLuaSprite('TenmaLine1',false)
	addAnimationByPrefix('TenmaLine1','TenmaLine','TenmaLine',24,true)
	objectPlayAnimation('TenmaLine1','TenmaLine',true)
	setProperty('TenmaLine1.visible',false)

	makeAnimatedLuaSprite('TenmaLine2','boners/ENDLESS/TenmaLine',134,534)
	addLuaSprite('TenmaLine2',false)
	addAnimationByPrefix('TenmaLine2','TenmaLine','TenmaLine',24,true)
	objectPlayAnimation('TenmaLine2','TenmaLine',true)
	setProperty('TenmaLine2.visible',false)

	makeAnimatedLuaSprite('TenmaLine3','boners/ENDLESS/TenmaLine',134,668)
	addLuaSprite('TenmaLine3',false)
	addAnimationByPrefix('TenmaLine3','TenmaLine','TenmaLine',24,true)
	objectPlayAnimation('TenmaLine3','TenmaLine',true)
	setProperty('TenmaLine3.visible',false)

	makeAnimatedLuaSprite('TenmaLine4','boners/ENDLESS/TenmaLine',134,802)
	addLuaSprite('TenmaLine4',false)
	addAnimationByPrefix('TenmaLine4','TenmaLine','TenmaLine',24,true)
	objectPlayAnimation('TenmaLine4','TenmaLine',true)
	setProperty('TenmaLine4.visible',false)

	makeAnimatedLuaSprite('TenmaLine5','boners/ENDLESS/TenmaLine',134,936)
	addLuaSprite('TenmaLine5',false)
	addAnimationByPrefix('TenmaLine5','TenmaLine','TenmaLine',24,true)
	objectPlayAnimation('TenmaLine5','TenmaLine',true)
	setProperty('TenmaLine5.visible',false)

	makeAnimatedLuaSprite('TenmaLine6','boners/ENDLESS/TenmaLine',134,1070)
	addLuaSprite('TenmaLine6',false)
	addAnimationByPrefix('TenmaLine6','TenmaLine','TenmaLine',24,true)
	objectPlayAnimation('TenmaLine6','TenmaLine',true)
	setProperty('TenmaLine6.visible',false)

	makeAnimatedLuaSprite('TenmaLine7','boners/ENDLESS/TenmaLine',134,1204)
	addLuaSprite('TenmaLine7',false)
	addAnimationByPrefix('TenmaLine7','TenmaLine','TenmaLine',24,true)
	objectPlayAnimation('TenmaLine7','TenmaLine',true)
	setProperty('TenmaLine7.visible',false)

	makeAnimatedLuaSprite('TenmaLine8','boners/ENDLESS/TenmaLine',134,1338)
	addLuaSprite('TenmaLine8',false)
	addAnimationByPrefix('TenmaLine8','TenmaLine','TenmaLine',24,true)
	objectPlayAnimation('TenmaLine8','TenmaLine',true)
	setProperty('TenmaLine8.visible',false)

	doTweenX('TenmaLine1X','TenmaLine1',0,0.2,'quadInOut')
	doTweenX('TenmaLine2X','TenmaLine2',0,0.2,'quadInOut')
	doTweenX('TenmaLine3X','TenmaLine3',0,0.2,'quadInOut')
	doTweenX('TenmaLine4X','TenmaLine4',0,0.2,'quadInOut')
	doTweenX('TenmaLine5X','TenmaLine5',0,0.2,'quadInOut')
	doTweenX('TenmaLine6X','TenmaLine6',0,0.2,'quadInOut')
	doTweenX('TenmaLine7X','TenmaLine7',0,0.2,'quadInOut')
	doTweenX('TenmaLine8X','TenmaLine8',0,0.2,'quadInOut')
end
function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('tezma4','tezma2',true)
		objectPlayAnimation('tezma5','tezma2',true)
		objectPlayAnimation('tezma1','tezma1',true)
		objectPlayAnimation('tezma2','tezma1',true)
		objectPlayAnimation('tezma3','tezma1',true)
	end
end
function onTweenCompleted(tag)
	if tag == 'TenmaLine1X' then
		setProperty('TenmaLine1.x',134)
		doTweenX('TenmaLine1X','TenmaLine1',0,0.2,'quadInOut')
		setProperty('TenmaLine1.y',400)
		doTweenY('TenmaLine1Y','TenmaLine1',534,0.2,'quadInOut')
	end
	if tag == 'TenmaLine2X' then
		setProperty('TenmaLine2.x',134)
		doTweenX('TenmaLine2X','TenmaLine2',0,0.2,'quadInOut')
		setProperty('TenmaLine2.y',534)
		doTweenY('TenmaLine2Y','TenmaLine2',668,0.2,'quadInOut')
	end
	if tag == 'TenmaLine3X' then
		setProperty('TenmaLine3.x',134)
		doTweenX('TenmaLine3X','TenmaLine3',0,0.2,'quadInOut')
		setProperty('TenmaLine3.y',668)
		doTweenY('TenmaLine3Y','TenmaLine3',802,0.2,'quadInOut')
	end
	if tag == 'TenmaLine4X' then
		setProperty('TenmaLine4.x',134)
		doTweenX('TenmaLine4X','TenmaLine4',0,0.2,'quadInOut')
		setProperty('TenmaLine4.y',802)
		doTweenY('TenmaLine4Y','TenmaLine4',936,0.2,'quadInOut')
	end
	if tag == 'TenmaLine5X' then
		setProperty('TenmaLine5.x',134)
		doTweenX('TenmaLine5X','TenmaLine5',0,0.2,'quadInOut')
		setProperty('TenmaLine5.y',936)
		doTweenY('TenmaLine5Y','TenmaLine5',1070,0.2,'quadInOut')
	end
	if tag == 'TenmaLine6X' then
		setProperty('TenmaLine6.x',134)
		doTweenX('TenmaLine6X','TenmaLine6',0,0.2,'quadInOut')
		setProperty('TenmaLine6.y',1070)
		doTweenY('TenmaLine6Y','TenmaLine6',1204,0.2,'quadInOut')
	end
	if tag == 'TenmaLine7X' then
		setProperty('TenmaLine7.x',134)
		doTweenX('TenmaLine7X','TenmaLine7',0,0.2,'quadInOut')
		setProperty('TenmaLine7.y',1204)
		doTweenY('TenmaLine7Y','TenmaLine7',1338,0.2,'quadInOut')
	end
	if tag == 'TenmaLine8X' then
		setProperty('TenmaLine8.x',134)
		doTweenX('TenmaLine8X','TenmaLine8',0,0.2,'quadInOut')
		setProperty('TenmaLine8.y',1338)
		doTweenY('TenmaLine8Y','TenmaLine8',1472,0.2,'quadInOut')
	end
end