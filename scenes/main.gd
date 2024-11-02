extends Node2D

# Called when the node enters the scene tree for the first time.
#@onready var blala = $"Ba-vi"
func _ready() -> void:
	SceneManager.change_scene.connect(change_scene_to)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func change_scene_to(scene: PackedScene) -> void:
	for currentChild in $scene_container.get_children():
		currentChild.queue_free()
		
	$scene_container.add_child(scene.instantiate())
