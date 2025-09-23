extends Node

var safe_trading_value: String = ""
var asteroid_mining_value: String = ""


func roll_betweenAdventures():
	
	safe_trading()
	print(safe_trading_value)
	
	asteroid_mining()
	print(asteroid_mining_value)
	
	exploration()
	
	bounty_hunting()
	
	return


func safe_trading():
	var output: String = ""
	output += ("Safe Trading: \n")
	output += ("Employee risk level: 10 \n")
	output += ("Requirements: at least one cargo rack on your ship. \n")
	output += ("For safe trading, once you have determined your profit per ton, multiply the result by your character’s Trade bonus and then the number of cargo canisters your ship can hold.\n")
	return (output)


func roll_safe_trading_value():
	var r: int = round(rand_range(1,100))
	if r <= 5:
		safe_trading_value = "Safe trading profit per ton: 500"
		return (safe_trading_value)
	if r <= 15:
		safe_trading_value = "Safe trading profit per ton: 600"
		return (safe_trading_value)
	if r <= 25:
		safe_trading_value = "Safe trading profit per ton: 700"
		return (safe_trading_value)
	if r <= 35:
		safe_trading_value = "Safe trading profit per ton: 800"
		return (safe_trading_value)
	if r <= 45:
		safe_trading_value = "Safe trading profit per ton: 900"
		return (safe_trading_value)
	if r <= 75:
		safe_trading_value = "Safe trading profit per ton: 1000"
		return (safe_trading_value)
	if r <= 80:
		safe_trading_value = "Safe trading profit per ton: 1100"
		return (safe_trading_value)
	if r <= 85:
		safe_trading_value = "Safe trading profit per ton: 1200"
		return (safe_trading_value)
	if r <= 90:
		safe_trading_value = "Safe trading profit per ton: 1300"
		return (safe_trading_value)
	if r <= 95:
		safe_trading_value = "Safe trading profit per ton: 1400"
		return (safe_trading_value)
	if r <= 100:
		safe_trading_value = "Safe trading profit per ton: 1500"
		return (safe_trading_value)


func asteroid_mining():
	var output: String = ""
	output += ("Asteroid Mining: \n")
	output += ("Employee risk level: 9 \n") 
	output += ("Requirements: at least one cargo rack, at least one mining laser, and a refinery on your ship. \n")
	output += ("For asteroid mining, add up the bonuses from all your mining equipment together (mining lasers, refineries, collector and prospect drones). Add the number of cargo canisters your ship can hold to the number. Multiply this total by your Planetary Knowledge Skill bonus. Then multiply this number by the yield value you just rolled.\n")
	return (output)


func roll_asteroid_mining_value():
	var r: int = round(rand_range(1,100))
	if r <= 5:
		asteroid_mining_value = "Asteroid mining yield value: 200"
		return (asteroid_mining_value)
	if r <= 15:
		asteroid_mining_value = "Asteroid mining yield value: 400"
		return (asteroid_mining_value)
	if r <= 25:
		asteroid_mining_value = "Asteroid mining yield value: 600"
		return (asteroid_mining_value)
	if r <= 35:
		asteroid_mining_value = "Asteroid mining yield value: 800"
		return (asteroid_mining_value)
	if r <= 45:
		asteroid_mining_value = "Asteroid mining yield value: 900"
		return (asteroid_mining_value)
	if r <= 75:
		asteroid_mining_value = "Asteroid mining yield value: 1000"
		return (asteroid_mining_value)
	if r <= 80:
		asteroid_mining_value = "Asteroid mining yield value: 1200"
		return (asteroid_mining_value)
	if r <= 85:
		asteroid_mining_value = "Asteroid mining yield value: 1400"
		return (asteroid_mining_value)
	if r <= 90:
		asteroid_mining_value = "Asteroid mining yield value: 1600"
		return (asteroid_mining_value)
	if r <= 95:
		asteroid_mining_value = "Asteroid mining yield value: 1800"
		return (asteroid_mining_value)
	if r <= 100:
		asteroid_mining_value = "Asteroid mining yield value: 2000"
		return (asteroid_mining_value)


func exploration():
	var output: String = ""
	output += ("Exploration: \n")
	output += ("Employee risk level: 8 \n")
	output += ("Requirements: a basic, intermediate or advanced planetary scanner on your ship. \n")
	output += ("Details: for exploration, you will need to consult the rulebook, as it is a simple addition of ship travel range and equipment bonuses.")
	return (output)


func bounty_hunting():
	var output: String = ""
	output += ("Bounty Hunting: \n")
	output += ("Employee risk level: N/A (cannot send NPCs for bounty hunting) \n")
	output += ("Requirements: a certain number of filled weapon hard points (see core rulebook). \n")
	output += ("For bounty hunting, you will need to consult the rulebook. You will need to pass a Spaceship Piloting check and a Spaceship Weapons check, and must beat the risk number for the risk category you wish to pursue. Failing one of those checks nets you no money, and failing both means you need to do repairs. Failing both by more than 3 means that your ship has been destroyed.\n")
	return (output)


func bounty_hunting_risk_number():
	var r: int = round(rand_range(1,100))
	return ("Bounty hunting risk number: " + str(r))
	

