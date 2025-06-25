class_name UserInterface
extends Control

## List of views.
enum Views {
	PROTO_CLICKER,
	PROTO_GENERATOR,
}

## Signals the various views.
signal navigation_requested(view : Views)

## When Generate Pets link is pressed, signals the generation view.
func _on_gen_pets_link_pressed() -> void:
	navigation_requested.emit(Views.PROTO_GENERATOR)

## When Home link is pressed, signals the home view. 
func _on_home_link_pressed() -> void:
	navigation_requested.emit(Views.PROTO_CLICKER)
