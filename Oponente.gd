extends CharacterBody2D

var speed = 600.0
@onready var ball = get_parent().find_child("Ball")

func _physics_process(delta):
	velocity.y = _get_oponent_direction() * speed
	
	move_and_collide(velocity * delta)

func _get_oponent_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
