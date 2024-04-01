extends Node

var music_stream = null
var is_ambient_playing = false

func _ready():
	music_stream = load("res://AudioCoffee - Warm Autumn Day.mp3")
	var audio_stream_player = AudioStreamPlayer.new()
	self.add_child(audio_stream_player)

	if not is_ambient_playing and music_stream:
		audio_stream_player.stream = music_stream
		audio_stream_player.play()

		is_ambient_playing = true