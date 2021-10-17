extends CanvasLayer

func _ready():
	$PanelContainer/MarginContainer/VBoxContainer/Button.connect("pressed", self, "on_next_button_pressed")

func _process(delta):
	if(Input.is_action_just_pressed("jump")):
		$"/root/LevelManager".increment_level()

func on_next_button_pressed():
	$"/root/LevelManager".increment_level()
