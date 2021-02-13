comments = {"It's boring\rany good ideas?.", "Poseur is posing like his\rlife depends on it.", "Poseur's limbs shouldn't be\rmoving in this way."}
commands = {"HELP", "F**K", "WAIT"}
randomdialogue = {"Random\nDialogue\n1.", "Random\nDialogue\n2.", "Random\nDialogue\n3."}

sprite = "poseur" --Always PNG. Extension is added automatically.
name = "Poseur"
hp = 180
atk = 100
def = 0
check = "Check message goes here."
dialogbubble = "right" -- See documentation for what bubbles you have available.
canspare = false
cancheck = true

-- Happens after the slash animation but before 
function HandleAttack(attackstatus)
    if attackstatus == -4 then
        -- player pressed fight but didn't press Z afterwards
    else
        -- player did actually attack
    end
end
 
function HandleCustomCommand(command)
    if command == "F***" then
		BattleDialog({"F * * *  Y O U  T O O"})
		currentdialogue = {"F**k you\r too."}
		canspare=false
	elseif command == "HELP" then
		BattleDialog({"What do you want to do when you\r have time."})
        currentdialogue = {"Keep it\r down."}
        canspare=true
    elseif command == "WAIT" then
		BattleDialog({"What do you do besides being in\r a daze."})
        currentdialogue = {"Wait you \rtoo."}
    end
    
end
