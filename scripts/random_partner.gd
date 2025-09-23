extends Node

var type: String = ""
var description: String = ""


func roll_partner():
	
	roll_partner_type()
	print(type + " - " + description)
	
	return (type + " - " + description)
	
	
func roll_partner_type():
	var r: int = round(rand_range(1,100))
	if r <= 15:
		type = "Best Friend"
		description = "You've been hanging around with your partner since you were children. You would laugh, play and get into trouble together. There is probably nothing your best friend doesn't know about you and vice versa. When you managed to scrape together a ship and a tidy stack of credits there was no way you were going to leave them behind. Your best friend can be male or female, but there is definitely no romance between you – they are too much like a brother or sister (optionally they can be your brother or sister)."
		return
	if r <= 30:
		type = "Boyfriend/Girlfriend"
		roll_boyfriend_girlfriend_type()
		return
	if r <= 45:
		type = "Business Partner"
		roll_business_partner_type()
		return
	if r <= 60:
		type = "Dependent Child"
		roll_dependent_child_type()
		return
	if r <= 75:
		type = "Husband/Wife"
		roll_boyfriend_girlfriend_type()
		return
	if r <= 100:
		type = "Thrown together by chance"
		roll_thrown_by_chance_type()
		return
	

func roll_boyfriend_girlfriend_type():
	var n: int = round(rand_range(1,10))
	if n <= 1:
		description = "Antagonistic. You are 'together' only as an act of pure stubbornness. The plain fact is you don't get on, and bicker and compete constantly. The worst part is you are a great team and complement each other well. Neither of you wants to ‘walk away' as the division of assets would be too complicated, and you know that you'll make more money together than you would apart."
		return
	if n <= 3:
		description = "Too cool to show affection. People would be forgiven for not realising you are a couple at all. You'll never be caught kissing, holding hands or even complimenting each other in public. It's not that you don't love each other, but one, or both of you, just doesn't like being all ‘lovey dovey' with each other when people are watching. In private the façade can melt – perhaps just a little."
		return
	if n <= 5:
		description = "One-upmanship. You love each other but you don't let that get in the way of the real foundation of your relationship – competition. Each of you knows that you are cleverer, more competent and better than the other, and that only bad luck and circumstances can ever make it appear otherwise. Each of you like to have the last word and take the credit for a job well done. Without each other the competition would end; and where would be the fun in that?"
		return
	if n <= 7:
		description = "Obsequious. One of you in this relationship just doesn't cope well alone. Roll a D10, on an even number it is you, on and odd number it is your partner. This dependant member of the relationship hangs on, agrees with the other, and in most ways acts as a rather irritating and overly-compliant member of the partnership. A fear of being abandoned is usually the root cause of this behaviour. The dependant partner will constantly check that their partner is okay, feeling happy, and hasn't been upset with some thoughtless comment they might have said."
		return
	if n <= 8:
		description = "Old Souls. The love you share with your partner is mature and long lasting, based not on words but mutual admiration, respect, and a desire for companionship. You never talk about your relationship and either of you could leave at any time, but the near telepathic understanding of each other's moods and needs makes any such fear groundless. You do right by each other and are dependable friends and comrades."
		return
	if n <= 10:
		description = "The First Blush of Love. You have been ‘going out' for only a few weeks at the start of the adventure and are still in the golden holiday of your love. You laugh, giggle, squeeze each other and give one another pet names. Your other comrades have to stop themselves being physically sick. However all good things will come to an end. Have the GM secretly roll on this table again at the start of the next adventure; this is what your relationship with gradually become as the honeymoon period ends and you settle into life together."
		return


func roll_business_partner_type():
	var n: int = round(rand_range(1,10))
	if n <= 2:
		description = "Lost a friend or loved one. Your business partner has a second motivation for a life in space. Someone close to them, a dear friend or loved one, vanished into the depths of space and never returned. Perhaps they were kidnapped, or just vanished into deep space? The odds of finding them alive are slim after so much time, but your partner keeps a wary eye out at every space station and planet they visit."
		return
	if n <= 4:
		description = "Exiled from home world. Your partner has joined up with you because it has been made clear to them that they cannot go home. An outstanding arrest warrant could be hanging over them, or perhaps a death threat from a powerful corporate head or gangster has made it clear they are no longer welcome on their home planet. Joining up with you was the best deal your business partner could make in the limited time they had available."
		return
	if n <= 6:
		description = "Strong political beliefs. Your partner wants to make money to fund political action. Perhaps they are a rabid pro-imperialist who wants to overthrow a corrupt democracy, or a fervent fundraiser who wants to establish a cross-border charity to aid interstellar war refugees. Regardless of their beliefs they are raising money for their cause, which could become a problem if they ever want to ‘cash in' their share of the business."
		return
	if n <= 8:
		description = "Spy. Your business partner is a spy for a significant power such as a large company or interstellar nation. The company they run with you is just a front, and sometimes they may be absent from the ship on official business. If you (the player) rolled this yourself you know your partner is a spy, and as long as they do their spying on other people you don't really mind. If the GM rolled this keep this result a secret. Choose a different result as the business partner's cover and wait to reveal the business partner at a suitably dramatic moment."
		return
	if n <= 10:
		description = "Secret Infatuation. You don't think romantically about your partner, but they very much think romantically about you. This whole ‘business' is nothing more than a way of staying very close to you. Perhaps you know about your partner's infatuation with you, or perhaps you are blithely ignorant. Either way you are really not interested in them that way … but you do need their money."
		return


func roll_dependent_child_type():
	var n: int = round(rand_range(1,10))
	if n <= 2:
		description = "Your own child. Well … you have no one to blame but yourself. The child is yours and no one else is going to look after them. You should decide what happened to the other parent – it can even be another player's character if you like."
		return
	if n <= 4:
		description = "Orphan. Many parts of the galaxy are war torn, or exist in states of perpetual anarchy. The kid has no parents and lived rough. It's no life for a child so you let them hang around with you. That doesn't mean you have to like it!"
		return
	if n <= 6:
		description = "Stowaway. One day you found the kid snoozing in the cargo bay. From the bruises and the malnutrition they are obviously escaping a pretty tough time at home, and short of pushing them out of the airlock you're stuck with them. Legally this could be hard to explain if the kid's parents track them down."
		return
	if n <= 8:
		description = "Ex-Slave. Even Imperials blanche at enslaving children, so when you discovered the kid chained up in a ruined spaceship hold you didn't have much choice but to free them. There might be a relative out there somewhere who hasn't been enslaved. Until then it looks like you're looking after them."
		return
	if n <= 10:
		description = "Niece/Nephew. Your sister's kid was only supposed to stay for the weekend. As it turned out, your sister and her husband were involved in some rather dubious deals with narcotics smugglers and their ship was found in a thousand pieces in a distant system. So, now it's your job to raise a child you barely know. Let's hope they learn quickly!"
		return


func roll_thrown_by_chance_type():
	var n: int = round(rand_range(1,10))
	if n <= 2:
		description = "Ex-wife's Second Husband. You didn't think you could be more angry with the world when your wife died at such a young age. You were wrong. You managed to get a bit angrier when you discovered she was a serial bigamist and more than one husband attended the funeral. Ironically during the process of sorting out her affairs, both material and otherwise, you got to quite like her second husband. The two of you ended up having a lot in common, including a desire to work in space. It turns out your wife had excellent taste in husbands."
		return
	if n <= 4:
		description = "Shared Ship Deeds with a Distant Relative. When granddad Jameson left you something in his will you expected your own ship. You didn't expect to share it with your third cousin. You know nothing about this side of the family, but unless you sell the ship and go back to working as bank returns clerk you'd better learn to like each other."
		return
	if n <= 6:
		description = "Escaped Together from the Same Power Hungry Dictator. When you got the chance to escape from the brutal dictatorship of your Homeworld you took it. Risking all, you escaped with a fellow prisoner without whom you could never have got away. Owning only the ship you escaped in and a few other possessions you decided to try and earn a living in the galaxy together."
		return
	if n <= 8:
		description = "Life Debt. You saved your partner's life, pushing them away from the energy blast that would have finished them, or breaking them out of death row at the last moment. You didn't ask for anything in return but your partner insisted on coming with you until the debt is fully repaid."
		return
	if n <= 10:
		description = "You Reversed your Ship into Theirs. Crunch! The sound of uninsured and unshielded metal is the worst sound you can hear when reversing in a busy space station. You ruined your partner's life that day and have felt responsible ever since. As it turns out it was a lucky bump – you make a great team. You just wish your partner wouldn't keep bringing up your space piloting in public."
		return

