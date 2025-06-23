class_name ProtoClicker
extends Control



## Reference to the label displaying the current amount of pets.
@export var label : Label
## Current amount of pets.
var pets : int = 0


## Initialize the label at launch.
func _ready() -> void:
	update_label_text() 


## Add 1 pet.
func create_pets() -> void:
	pets += 1
	update_label_text()


## Update the text of the label to reflect number of pets.
func update_label_text() -> void:
	label.text = "Pets : %s" %pets

## Triggered when the create pets button is pressed. 
func _on_button_pressed() -> void:
	create_pets()
