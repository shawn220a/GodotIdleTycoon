extends Panel

var money = 5
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
	$StoreTimer.start()
	$ProgressTimer.start()

func _on_BuyButton_pressed():
	if store_cost <= money:
		store_count += 1
		money -= store_cost
		UpdateUI()
	else:
		$PopupDialog.popup()
		yield(get_tree().create_timer(1), "timeout")
		$PopupDialog.hide()


func _on_StoreTimer_timeout():
	$StoreTimer.stop()
	$ProgressTimer.stop()
	$ProgressBar.set("value", 0)

	money += store_profit * store_count

	UpdateUI()


func _on_ProgressTimer_timeout():
	var current_progress = ($StoreTimer.wait_time - $StoreTimer.time_left) / $StoreTimer.wait_time
	
	$ProgressBar.set("value", current_progress)
