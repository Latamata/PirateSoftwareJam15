extends Node

var audio_player: AudioStreamPlayer

func _ready():
	audio_player = AudioStreamPlayer.new()
	add_child(audio_player)
	var sound = preload("res://Assets/gather.mp3")
	audio_player.stream = sound

func play_sound():
	if audio_player.is_playing():
		audio_player.stop()
	audio_player.play()
