extends Node

@onready var p_1_score = $"../CanvasLayer/Panel/P1_Score"
@onready var p_2_score = $"../CanvasLayer/Panel/P2_Score"


var p1_points = 0
var p2_points = 0

func increment_p1():
	p1_points += 1
	p_1_score.text = str(p1_points)

func increment_p2():
	p2_points += 1
	p_2_score.text = str(p2_points)
