extends Area2D


var speed = 4.5

func _physics_process(_delta):
	position.y += speed
	if position.y >= 620:
		queue_free()



func _on_Meteor2_body_entered(body):
	body.die(0)
