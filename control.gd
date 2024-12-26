extends Control

var result:String = ""
var expression = Expression.new()
@onready var result_label = $CanvasLayer/VBoxContainer/Row1/PanelContainer/Result
@onready var button1 = $CanvasLayer/VBoxContainer/Row2/Number1
@onready var button2 = $CanvasLayer/VBoxContainer/Row2/Number2
@onready var button3 = $CanvasLayer/VBoxContainer/Row2/Number3
@onready var divide_button = $CanvasLayer/VBoxContainer/Row2/Divide
@onready var button4 = $CanvasLayer/VBoxContainer/Row3/Number4
@onready var button5 = $CanvasLayer/VBoxContainer/Row3/Number5
@onready var button6 = $CanvasLayer/VBoxContainer/Row3/Number6
@onready var asterisk_button = $CanvasLayer/VBoxContainer/Row3/Multiply
@onready var button7 = $CanvasLayer/VBoxContainer/Row4/Number7
@onready var button8 = $CanvasLayer/VBoxContainer/Row4/Number8
@onready var button9 = $CanvasLayer/VBoxContainer/Row4/Number9
@onready var plus_button = $CanvasLayer/VBoxContainer/Row4/Plus
@onready var button0 = $CanvasLayer/VBoxContainer/Row5/Number0
@onready var decimal_button = $CanvasLayer/VBoxContainer/Row5/Decimal
@onready var equals_button = $CanvasLayer/VBoxContainer/Row5/Equals
@onready var minus_button = $CanvasLayer/VBoxContainer/Row5/Minus
@onready var clear_button = $CanvasLayer/VBoxContainer/Row6/Clear

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	#button1.pressed.connect(self.display_number())

func _on_number_1_pressed() -> void:
	result = result + button1.text
	result_label.set_text(result)
	
func _on_number_2_pressed() -> void:
	result = result + button2.text
	result_label.set_text(result)

func _on_number_3_pressed() -> void:
	result = result + button3.text
	result_label.set_text(result)

func _on_number_4_pressed() -> void:
	result = result + button4.text
	result_label.set_text(result)

func _on_number_5_pressed() -> void:
	result = result + button5.text
	result_label.set_text(result)

func _on_number_6_pressed() -> void:
	result = result + button6.text
	result_label.set_text(result)

func _on_number_7_pressed() -> void:
	result = result + button7.text
	result_label.set_text(result)

func _on_number_8_pressed() -> void:
	result = result + button8.text
	result_label.set_text(result)

func _on_number_9_pressed() -> void:
	result = result + button9.text
	result_label.set_text(result)

func _on_number_0_pressed() -> void:
	result = result + button0.text
	result_label.set_text(result)

func _on_decimal_pressed() -> void:
	result = result + decimal_button.text
	result_label.set_text(result)

func _on_plus_pressed() -> void:
	result = result + plus_button.text
	result_label.set_text(result)

func _on_multiply_pressed() -> void:
	result = result + asterisk_button.text
	result_label.set_text(result)

func _on_minus_pressed() -> void:
	result = result + minus_button.text
	result_label.set_text(result)

func _on_divide_pressed() -> void:
	result = result + divide_button.text
	result_label.set_text(result)

func _on_equals_pressed() -> void:
	expression.parse(result)
	result = str(expression.execute())
	result_label.set_text(result)

func _on_clear_pressed() -> void:
	result = ""
	result_label.set_text("")
