function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do	
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bala' then
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == "bala" then
		triggerEvent('Screen Shake', "0.40, 0.0090", 0)
		triggerEvent('Play Animation', 'bf', 'Pico Down Note', 0);
    end
end
