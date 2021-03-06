extends Panel

# Declare member variables here. Examples:
var money = 0
var storeCount = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	UpdateUI()

func UpdateUI():
	$MoneyLabel.text = "$ " + str(money)
	$StoreCountLabel.text = "Store Count: " + str(storeCount)

func _on_ClickButton_pressed():
	money = money + 1
	UpdateUI()

func _on_BuyButton_pressed():
	storeCount = storeCount + 1
	UpdateUI()# Replace with function body.
