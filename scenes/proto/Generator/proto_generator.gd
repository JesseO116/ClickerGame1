class_name ProtoGenerator
extends Control
## Generator proto creating pets every second.


## Reference to the labels displaying the current amount.
@export var label: Label
## Reference to the button starting the generation.
@export var button: Button
## Reference to the timer. 
@export var timer: Timer
## Refernece to the user interface.
@export var user_interface: UserInterface
## View reference.
@export var view: UserInterface.Views

## Current amount of pets in storage.
var pets: int = 0


## Initizalize the label
func _ready() -> void:
	update_label_text()
	
	visible = false
	
	user_interface.navigation_requested.connect(_on_navigation_request)


## Creates pets and stores it. 
func create_pets() -> void:
	pets += 1
	update_label_text()


## Update the label text to match the current amount of pets in storage.
func update_label_text() -> void:
	label.text = "Pets : %s" %pets

## Watch for navigation requests and react accordingly.
func _on_navigation_request(requested_view: UserInterface.Views) -> void:
	if requested_view == view:
		visible = true
		return
	
	visible = false


## Start the time and disable the button. 
func begin_generating_pets() -> void:
	timer.start()
	button.disabled = true


## Triggered when the "begin generating" button is pressed. 
func _on_button_pressed() -> void:
	begin_generating_pets()


## Triggered when the timer times out. 
func _on_timer_timeout() -> void:
	create_pets()
