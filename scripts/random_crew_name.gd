extends Node

var first_name: String = ""
var second_name: String = ""


func roll_crew_name():
	
	roll_first_name()
	roll_second_name()
	
	return (first_name + " " + second_name)
	
	
func roll_first_name():
	var r: int = round(rand_range(1,100))
	match r:
		1:
			first_name = "Abe"
		2:
			first_name = "Addison"
		3:
			first_name = "Al"
		4:
			first_name = "Algernon"
		5:
			first_name = "Baxter"
		6:
			first_name = "Barry"
		7:
			first_name = "Bill"
		8:
			first_name = "Carl"
		9:
			first_name = "Chad"
		10:
			first_name = "Chuck"
		11:
			first_name = "Dave"
		12:
			first_name = "Daniel"
		13:
			first_name = "Ed"
		14:
			first_name = "Elton"
		15:
			first_name = "Fletcher"
		16:
			first_name = "Fred"
		17:
			first_name = "Gerald"
		18:
			first_name = "Greg"
		19:
			first_name = "Harry"
		20:
			first_name = "Hugh"
		21:
			first_name = "Ike"
		22:
			first_name = "Jack"
		23:
			first_name = "Jim"
		24:
			first_name = "Kevin"
		25:
			first_name = "Lance"
		26:
			first_name = "Lionel"
		27:
			first_name = "Magnus"
		28:
			first_name = "Mark"
		29:
			first_name = "Max"
		30:
			first_name = "Neil"
		31:
			first_name = "Neville"
		32:
			first_name = "Orson"
		33:
			first_name = "Pete"
		34:
			first_name = "Phil"
		35:
			first_name = "Randy"
		36:
			first_name = "Ray"
		37:
			first_name = "Rich"
		38:
			first_name = "Scott"
		39:
			first_name = "Steve"
		40:
			first_name = "Spike"
		41:
			first_name = "Terry"
		42:
			first_name = "Vince"
		43:
			first_name = "Wayne"
		44:
			first_name = "Will"
		45:
			first_name = "Zach"
		46:
			first_name = "Abbey"
		47:
			first_name = "Alexandra"
		48:
			first_name = "Amy"
		49:
			first_name = "Barbra"
		50:
			first_name = "Becca"
		51:
			first_name = "Bridget"
		52:
			first_name = "Carol"
		53:
			first_name = "Cass"
		54:
			first_name = "Clara"
		55:
			first_name = "Debs"
		56:
			first_name = "Diana"
		57:
			first_name = "Ellie"
		58:
			first_name = "Emma"
		59:
			first_name = "Fanny"
		60:
			first_name = "Flo"
		61:
			first_name = "Gill"
		62:
			first_name = "Gwen"
		63:
			first_name = "Hayley"
		64:
			first_name = "Holly"
		65:
			first_name = "Iris"
		66:
			first_name = "Izzy"
		67:
			first_name = "Jade"
		68:
			first_name = "Jenny"
		69:
			first_name = "Jessica"
		70:
			first_name = "Kate"
		71:
			first_name = "Kim"
		72:
			first_name = "Kitty"
		73:
			first_name = "Laura"
		74:
			first_name = "Linda"
		75:
			first_name = "Lucy"
		76:
			first_name = "Mel"
		77:
			first_name = "Molly"
		78:
			first_name = "Nancy"
		79:
			first_name = "Pam"
		80:
			first_name = "Peggy"
		81:
			first_name = "Rachel"
		82:
			first_name = "Rose"
		83:
			first_name = "Ruby"
		84:
			first_name = "Sally"
		85:
			first_name = "Sharon"
		86:
			first_name = "Tara"
		87:
			first_name = "Trudy"
		88:
			first_name = "Unity"
		89:
			first_name = "Verity"
		90:
			first_name = "Yasmin"
		91:
			first_name = "Old"
		92:
			first_name = "The Right Hon."
		93:
			first_name = "The Amazing"
		94:
			first_name = "Stuttering"
		95:
			first_name = "Lying"
		96:
			first_name = "The Inexcusable"
		97:
			first_name = "One-eyed"
		98:
			first_name = "Angry"
		99:
			first_name = "Lady"
		100:
			first_name = "Limping"
		_:
			pass


func roll_second_name():
	var n: int = round(rand_range(1,100))
	match n:
		1:
			second_name = "Abbott"
		2:
			second_name = "Ackerman"
		3:
			second_name = "Anderson"
		4:
			second_name = "Archer"
		5:
			second_name = "Banks"
		6:
			second_name = "Baxter"
		7:
			second_name = "Bishop"
		8:
			second_name = "Brewer"
		9:
			second_name = "Clark"
		10:
			second_name = "Clinton"
		11:
			second_name = "Cox"
		12:
			second_name = "Daniels"
		13:
			second_name = "De'Ath"
		14:
			second_name = "Dixon"
		15:
			second_name = "Edwards"
		16:
			second_name = "English"
		17:
			second_name = "Fisher"
		18:
			second_name = "Fletcher"
		19:
			second_name = "Foster"
		20:
			second_name = "Fry"
		21:
			second_name = "Gabriel"
		22:
			second_name = "Goddard"
		23:
			second_name = "Gore"
		24:
			second_name = "Green"
		25:
			second_name = "Hackett"
		26:
			second_name = "Hampton"
		27:
			second_name = "Harper"
		28:
			second_name = "Henderson"
		29:
			second_name = "Honeycutt"
		30:
			second_name = "Hopkins"
		31:
			second_name = "Hunter"
		32:
			second_name = "Ingram"
		33:
			second_name = "Irwin"
		34:
			second_name = "Jacobs"
		35:
			second_name = "Jameson"
		36:
			second_name = "Jeffers"
		37:
			second_name = "Jervis"
		38:
			second_name = "Jones"
		39:
			second_name = "Keighley"
		40:
			second_name = "Kellogg"
		41:
			second_name = "King"
		42:
			second_name = "Lee"
		43:
			second_name = "Leighton"
		44:
			second_name = "Lockwood"
		45:
			second_name = "Lucas"
		46:
			second_name = "Mallory"
		47:
			second_name = "Marshall"
		48:
			second_name = "Martell"
		49:
			second_name = "May"
		50:
			second_name = "Merchant"
		51:
			second_name = "Miller"
		52:
			second_name = "Monday"
		53:
			second_name = "Morris"
		54:
			second_name = "Myres"
		55:
			second_name = "Nash"
		56:
			second_name = "Nelson"
		57:
			second_name = "Norman"
		58:
			second_name = "Osbourne"
		59:
			second_name = "Outlaw"
		60:
			second_name = "Palmer"
		61:
			second_name = "Paris"
		62:
			second_name = "Patton"
		63:
			second_name = "Payne"
		64:
			second_name = "Perkins"
		65:
			second_name = "Pierce"
		66:
			second_name = "Pond"
		67:
			second_name = "Quick"
		68:
			second_name = "Quincy"
		69:
			second_name = "Rake"
		70:
			second_name = "Randall"
		71:
			second_name = "Reynolds"
		72:
			second_name = "Rider"
		73:
			second_name = "Sanders"
		74:
			second_name = "Savage"
		75:
			second_name = "Sergeant"
		76:
			second_name = "Skinner"
		77:
			second_name = "Southgate"
		78:
			second_name = "Spencer"
		79:
			second_name = "Stone"
		80:
			second_name = "Stroud"
		81:
			second_name = "Taylor"
		82:
			second_name = "Thorn"
		83:
			second_name = "Trask"
		84:
			second_name = "Trueman"
		85:
			second_name = "Vernon"
		86:
			second_name = "Wade"
		87:
			second_name = "Walker"
		88:
			second_name = "Ward"
		89:
			second_name = "York"
		90:
			second_name = "Young"
		91:
			second_name = "Skullcracker"
		92:
			second_name = "Switchknife"
		93:
			second_name = "Hotcakes"
		94:
			second_name = "Wilderbeast"
		95:
			second_name = "EmoGoth"
		96:
			second_name = "Ace"
		97:
			second_name = "Terminator"
		98:
			second_name = "Tabletop"
		99:
			second_name = "Deathmetal"
		100:
			second_name = "Mutley"
		_:
			pass

