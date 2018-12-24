-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local screen_height = 0
local screen_width = 0
local enemy_speed = 150
local current_score = nil
local music_play = true
local SFX_play = true
local from_end = false
local music_playing = false

function play_menu_music()
	music_playing = true
	sound.play("/music#menu-song")
end

function stop_menu_music()
	music_playing = false
	sound.stop("/music#menu-song")
end

function is_music_playing()
	return music_playing
end

function set_dimension(height, width)
	print("Height: "..height.." Width: "..width)
	screen_height = height
	screen_width = width
end

function reset_speed()
	enemy_speed = 150
end

function set_current_score(score)
	current_score = score
end

function set_music_play(bool)
	music_play = bool
end

function set_SFX_play(bool)
	SFX_play = bool
end

function set_from_end(bool)
	from_end = bool
end

function get_screen_height()
	return screen_height
end

function get_screen_width()
	return screen_width
end

function update(self, dt)
	if enemy_speed < 500 then
		enemy_speed = enemy_speed + (dt * 10)
	end
end

function get_enemy_speed()
	return enemy_speed
end

function get_score()
	return current_score
end

function get_music_play()
	return music_play
end

function get_SFX_play()
	return SFX_play
end

function get_from_end()
	return from_end
end