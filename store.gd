extends Panel

var money = 0
var store_count = 0

var store_cost = 5
var store_profit = 2

# Called when the node enters the scene tree for the first time.
func _ready():
	UpdateUI()

func UpdateUI():
	$MoneyLabel.text = "$ " + str(money)
	$StoreCountLabel.text = "Store Count: " + str(store_count)

func _on_ClickButton_pressed():
	money += store_profit
	UpdateUI()

func _on_BuyButton_pressed():
	if money >= store_cost:
		store_count += 1
		money -= store_cost
	UpdateUI()
