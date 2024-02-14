function onCreate()
	makeAnimatedLuaSprite('cassier', 'characters/CASSIE', 0, 0)
	addAnimationByPrefix('cassier', 'idle', 'IDLE', 24, true)
	addAnimationByPrefix('cassier', 'left', 'LEFT', 24, true)
	addAnimationByPrefix('cassier', 'down', 'DOWN', 24, true)
	addAnimationByPrefix('cassier', 'up', 'IDLE', 24, true)
	addAnimationByPrefix('cassier', 'right', 'RIGHT', 24, true)
	scaleObject('cassier', 0.77, 0.77)
	setScrollFactor('cassier', 0.2, 0.2)
	--addLuaSprite('cassier', true)
	
	makeAnimatedLuaSprite('cas', 'characters/cassie_extra', 0, 0)
	addAnimationByPrefix('cas', 'idle', 'cassie line', 24, true)
	scaleObject('cas', 0.77, 0.77)
	setScrollFactor('cas', 0.2, 0.2)
	--addLuaSprite('cas', true)
end

local anims = {'left', 'down', 'up', 'right'}
function goodNoteHit(i, d, nt, s)
	for i = 0,3 do
		if d == i then
			playAnim('cassier', anims[i+1], true)
		end
	end
end