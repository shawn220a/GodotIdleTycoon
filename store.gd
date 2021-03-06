extends Panel

var money = 0
var store_count = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	UpdateUI()

func UpdateUI():
	$MoneyLabel.text = "$ " + str(money)
	$StoreCountLabel.text = "Store Count: " + str(store_count)

func _on_ClickButton_pressed():
	money += 1
	UpdateUI()

func _on_BuyButton_pressed():
	if money >= 5:
		store_count += 1
		money -= 5
	UpdateUI()
