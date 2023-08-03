extends Area2D

signal point_scored
func _on_body_entered(body):
	point_scored.emit()
