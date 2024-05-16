extends CharacterBody2D


@export var speed = 400.0

@export var directionX = 1
var directionY = -1


func _physics_process(delta):



	velocity.x = directionX * speed
	velocity.y = directionY * speed

	move_and_slide()
	
	if(is_on_wall()):
		directionX *= -1
	if(is_on_ceiling() or is_on_floor()):
		directionY *= -1
