class_name ProtoClicker
extends Control



## Reference to the label displaying the current amount of pets.
@export var label : Label
## View reference.
@export var view: UserInterface.Views
## Refernece to the user interface.
@export var user_interface: UserInterface


## Initialize the label at launch.
func _ready() -> void:
	update_label_text() 
	
	visible = true
	
	user_interface.navigation_requested.connect(_on_navigation_request)


## Temporary function to update the label. 
func _process(_delta: float) -> void:
	update_label_text()

## Watch for navigation requests and react accordingly.
func _on_navigation_request(requested_view: UserInterface.Views) -> void:
	if requested_view == view:
		visible = true
		return
	
	visible = false

## Add 1 pet.
func create_pets() -> void:
	Game.ref.data.pets += 1


## Update the text of the label to reflect number of pets.
func update_label_text() -> void:
	label.text = "Pets : %s" %Game.ref.data.pets

## Triggered when the create pets button is pressed. 
func _on_button_pressed() -> void:
	create_pets()
