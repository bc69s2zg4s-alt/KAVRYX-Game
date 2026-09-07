extends Node

var music_player: AudioStreamPlayer
var sfx_players: Array[AudioStreamPlayer] = []

func _ready() -> void:
	music_player = AudioStreamPlayer.new()
	add_child(music_player)

func play_music(stream: AudioStream) -> void:
	if stream == null:
		return

	music_player.stream = stream
	music_player.play()

func stop_music() -> void:
	music_player.stop()

func play_sfx(stream: AudioStream) -> void:
	if stream == null:
		return

	var player := AudioStreamPlayer.new()
	player.stream = stream
	add_child(player)
	sfx_players.append(player)
	player.play()

	await player.finished

	sfx_players.erase(player)
	player.queue_free()