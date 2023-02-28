-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'Girlfriend Fade' then
		duration = tonumber(value1);
		end

		targetAlpha = tonumber(value2);
                doTweenAlpha('gfFadeEventTween', 'gf', targetAlpha, duration, 'linear');
		end
		--debugPrint('Event triggered: ', name, duration, targetAlpha);