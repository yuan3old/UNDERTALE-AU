-- A basic monster script skeleton you can copy and modify for your own creations.
comments = {"It's boring\any good ideas?.", "Poseur is posing like his\rlife depends on it.", "Poseur's limbs shouldn't be\rmoving in this way."}
commands = {"HELP", "FUCK", "WAIT"}
randomdialogue = {"Random\nDialogue\n1.", "Random\nDialogue\n2.", "Random\nDialogue\n3."}

sprite = "poseur" --Always PNG. Extension is added automatically.
name = "Poseur"
hp = 60
atk = 100
def = 100
check = "Check message goes here."
dialogbubble = "right" -- See documentation for what bubbles you have available.
canspare = false
cancheck = true

-- Happens after the slash animation but before 
function HandleAttack(attackstatus)
    if attackstatus == -1 then
        -- player pressed fight but didn't press Z afterwards
    else
        -- player did actually attack
    end
end
 
-- This handles the commands; all-caps versions of the commands list you have above.
function HandleCustomCommand(command)
    if command == "FUCK" then
		BattleDialog({"F U C K  Y O U  T O O"})
		currentdialogue = {"Fuck you\n too."}
	elseif command == "HELP" then
		BattleDialog({"What do you want to do when you\n have time."})
        currentdialogue = {"Keep it\n down."}
    elseif command == "WAIT" then
		BattleDialog({"What do you do besides being in\n a daze."})
        currentdialogue = {"Wait you \ntoo."}
    end
    
end
