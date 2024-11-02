extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_bathroom_button_up() -> void:
	SceneManager.change_scene.emit(preload("res://scenes/living_spaces/bathroom.tscn"))


func _on_bed_2_button_up() -> void:
	SceneManager.change_scene.emit(preload("res://scenes/bunker/lab_bunker.tscn"))
