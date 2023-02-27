function onCreate()
	makeLuaSprite('bgWalls','W5/bgWalls',-1250,-950)
	addLuaSprite('bgWalls',false)
	setScrollFactor('bgWalls',0.6,0.6)

	makeLuaSprite('bgEscalator','W5/bgEscalator',-1350,-850)
	addLuaSprite('bgEscalator',false)
	setScrollFactor('bgEscalator',0.6,0.6)

	makeAnimatedLuaSprite('upperBop','W5/upperBop',-250,160)
	addLuaSprite('upperBop',false)
	setScrollFactor('upperBop',0.6,0.6)
	addAnimationByPrefix('upperBop','idle','Upper Crowd Bop',24,false)

	makeLuaSprite('christmasTree','W5/christmasTree',300,-350)
	addLuaSprite('christmasTree',false)
	setScrollFactor('christmasTree',0.65,0.65)

	makeAnimatedLuaSprite('bottomBop','W5/bottomBop',0,0)
	addLuaSprite('bottomBop',false)
	addAnimationByPrefix('bottomBop','idle','Bottom Level Boppers',24,false)

	makeLuaSprite('fgSnow','W5/fgSnow',-600,670)
	addLuaSprite('fgSnow',false)

	makeAnimatedLuaSprite('santa','W5/santa',-900,220)
	addLuaSprite('santa',false)
	addAnimationByPrefix('santa','idle','santa idle in fear',24,false)
end
function onBeatHit()
	if curBeat%2 == 0 and songName == 'Green Eggs' then
		objectPlayAnimation('upperBop','idle',true)
		objectPlayAnimation('bottomBop','idle',true)
		objectPlayAnimation('santa','idle',true)
	end
	if curBeat % 1 == 0 and songName == 'ham' then
		objectPlayAnimation('upperBop','idle',true)
		objectPlayAnimation('bottomBop','idle',true)
		objectPlayAnimation('santa','idle',true)
	end
end