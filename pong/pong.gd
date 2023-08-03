extends Node2D

var playerOnePoints = 0
var playerTwoPoints = 0

var screenSize = DisplayServer.window_get_size()

@onready var playerOnePaddle = $Paddle
@onready var playerTwoPaddle = $PaddleTwo
@onready var ball = $Ball as Ball


func _on_area_player_2_point_scored():
	reset_game_state()
	playerTwoPoints += 1
	print_debug(playerTwoPoints)
	
func _on_player_one_scored():
	reset_game_state()
	playerOnePoints += 1
	print_debug(playerOnePoints)

func reset_game_state():
	playerTwoPaddle.position = Vector2(screenSize.x - 15, screenSize.y /2)
	playerOnePaddle.position = Vector2(15.0, screenSize.y/2)
	ball.position = Vector2(screenSize.x/2, screenSize.y/2 )
	playerTwoPaddle.linear_velocity = Vector2.ZERO
	playerOnePaddle.linear_velocity = Vector2.ZERO
	ball.linear_velocity = Vector2.ZERO
	ball.start_ball()
	
