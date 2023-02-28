local originy = 0
function onCreate()

	originy = getProperty('boyfriend.y')

end

function onBeatHit()
	if getProperty('boyfriend') then
		setProperty('boyfriend.y',originy+20)
		doTweenY('wifjwiuuf','boyfriend',originy,0.26,'sineOut')
	end

end