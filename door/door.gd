extends Area

var open = false
var hasBeenOpened = false

onready var animation_player = $DoorModel/AnimationPlayer

func _on_door_body_entered(body):
	if not open and body is Player or not open and hasBeenOpened:
		animation_player.play("doorsimple_opening")
		hasBeenOpened = true
		open = true


func _on_door_body_exited(body):
	if open and body is Player:
		animation_player.play("doorsimple_closing")
		open = false
