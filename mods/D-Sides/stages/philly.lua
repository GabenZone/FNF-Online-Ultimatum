function onCreate()
 if songName == 'Philly Nice' then
  makeAnimatedLuaSprite('Crowd1','philly/Crowd1',30,320)
  addAnimationByPrefix('Crowd1','idle','Crowd1 instance 1',24,false)
  addLuaSprite('Crowd1', false)
 end
end
function onBeatHit()
 if curBeat % 2 == 0 then
  objectPlayAnimation('Crowd1','idle',true)
 end
end