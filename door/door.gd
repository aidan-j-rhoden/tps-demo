extends Area

var open = false

onready var animation_player = $DoorModel/AnimationPlayer

func _on_door_body_entered(body):
	if not open and body is Player:
		animation_player.play("doorsimple_opening")
		open = true


func _on_door_body_exited(body):
	if open and body is Player:
		animation_player.play("doorsimple_closing")
		open = false
