extends CanvasLayer

var time_left = 30
@onready var message = $Message
@onready var timer = $Timer

func _ready():
	message.text = str(time_left)  # Display initial time
	timer.wait_time = 1  # Make timer tick every second
	timer.start()  # Start countdown
	
func show_message(text):
	$Message.text = text
	$Message.show()
	$Timer.start()
	
func _on_timer_timeout() -> void:
	$Message.hide()
	message.text = str("Timer Ended")
