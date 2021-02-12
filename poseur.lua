-- A basic monster script skeleton you can copy and modify for your own creations.
comments = {"It's boring\rany good ideas?.", "Poseur is posing like his\rlife depends on it.", "Poseur's limbs shouldn't be\rmoving in this way."}
commands = {"HELP", "F**K", "WAIT"}
randomdialogue = {"Random\nDialogue\n1.", "Random\nDialogue\n2.", "Random\nDialogue\n3."}

sprite = "poseur" --Always PNG. Extension is added automatically.
name = "Poseur"
hp = 10
atk = 30
def = 10
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
