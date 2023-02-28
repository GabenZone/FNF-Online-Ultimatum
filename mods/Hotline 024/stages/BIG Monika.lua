function onCreate()
	--background shit
	makeLuaSprite('Sky', 'Monika/Sky', 0, 0)

	makeLuaSprite('BG', 'Monika/BG', 0, 0)

	makeLuaSprite('FG', 'Monika/FG', 0, 0)
	addLuaSprite('Sky', false)
	addLuaSprite('BG', false)
	addLuaSprite('FG', false)
	scaleObject('Sky', 1.6, 1.6)
	scaleObject('BG', 1.6, 1.6)
	scaleObject('FG', 1.6, 1.6)
end