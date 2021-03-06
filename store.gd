extends Panel

# Declare member variables here. Examples:
var money = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	UpdateUI()

func UpdateUI():
	$MoneyLabel.text = "$ " + str(money)

func _on_Button_pressed():
	print("You clicked the button")
	money = money + 1
	UpdateUI()
