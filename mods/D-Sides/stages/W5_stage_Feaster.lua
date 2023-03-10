local allowIdle = 1
function onCreate()
	makeLuaSprite('evilBG','W5/evilBG',-600,-650)
	addLuaSprite('evilBG',false)
	setScrollFactor('evilBG',0.6,0.6)

	makeAnimatedLuaSprite('evilupperBop','W5/evilupperBop',-200,260)
	addLuaSprite('evilupperBop',false)
	setScrollFactor('evilupperBop',0.6,0.6)
	addAnimationByPrefix('evilupperBop','idle','Upper Crowd BobEvil',24,false)

	makeLuaSprite('evilTree','W5/evilTree',300,-350)
	addLuaSprite('evilTree',false)
	setScrollFactor('evilTree',0.65,0.65)

	makeAnimatedLuaSprite('evilbottomBop','W5/evilbottomBop',-150,0)
	addLuaSprite('evilbottomBop',false)
	addAnimationByPrefix('evilbottomBop','idle','Bottom Level Boppers evil',24,false)
	addAnimationByPrefix('evilbottomBop','left','Bottom Level Boppers left',24,false)
	addAnimationByPrefix('evilbottomBop','down','Bottom Level Boppers down',24,false)
	addAnimationByPrefix('evilbottomBop','up','Bottom Level Boppers up',24,false)
	addAnimationByPrefix('evilbottomBop','right','Bottom Level Boppers right',24,false)

	makeLuaSprite('evilSnow','W5/evilSnow',-600,670)
	addLuaSprite('evilSnow',false)

	makeAnimatedLuaSprite('evilsanta','W5/evilsanta',-750,20)
	addLuaSprite('evilsanta',false)
	addAnimationByPrefix('evilsanta','idle','santa idle in fear evil instance 1',24,false)
end
function onBeatHit()
	if curBeat % 2 == 0 then
		objectPlayAnimation('evilupperBop','idle',false)
		objectPlayAnimation('evilsanta','idle',false)
	end
	if curBeat % 2 == 0 and allowIdle == 1 then
		objectPlayAnimation('evilbottomBop','idle',false)
	end
end