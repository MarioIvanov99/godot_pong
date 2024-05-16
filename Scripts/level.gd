extends Node

@onready var point_tracker = %PointTracker
@onready var ball = $Ball

func _ready():
	ball.position = Vector2(get_window().size.x/2.0-20, get_window().size.y/2.0-20)
	
func _on_timer_timeout():
	ball.speed *= 1.03

func _process(delta):
	if(ball.position.x <= -40):
		point_tracker.increment_p2()
		ball.position = Vector2(get_window().size.x/2.0-20, get_window().size.y/2.0-20)
		ball.directionX *= -1
	if(ball.position.x >= get_window().size.x):
		point_tracker.increment_p1()
		ball.position = Vector2(get_window().size.x/2.0-20, get_window().size.y/2.0-20)
		ball.directionX *= -1
