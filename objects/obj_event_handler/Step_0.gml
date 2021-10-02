/// @description Insert description here
// You can write your code in this editor
switch (current_event)
{
	// Greet the player
	case 1:
		_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
		with(_inst)
		{
			title = "Warm greetings!";
			text = "Praise for the Postria!" + "\n" + "We are delighted to hear that you want to build your business in our glorious country. We do not generally get involved in the businesses nor we want to regulate you as long as you pay the fair share." + "\n" + "We will be watching you with great interest as no business is small business in Postria." + "\n" + "\n" + "Praise for the Postria!";
		}
		
		current_event += 1;
	break;
	
	case 2:
	
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				text[0] = "Hey! Skip to the next text by pressing Space.";
				text[1] = "Time for business! Make money yourself in the left corner.";
				text[2] = "You can buy upgrades which will appear above your house.";
				text[3] = "You can also make money by cutting down trees";
				text[4] = "Another option is to pick berries or shrooms.";
				text[5] = "Happy businessing!";
			}
			obj_variable_handler.current_objective = "";
			
			current_event += 1;
		}
	break;
	
	case 3:
		
	break;
	
	case 4:
		
	break;
	
	case 5:
		
	break;
	
	case 6:
		
	break;
	
	case 7:
		
	break;
	
	case 8:
		
	break;
	
	case 9:
		
	break;
	
	case 10:
		
	break;
	
	case 11:
		
	break;
	
	case 12:
		
	break;
	
	case 13:
		
	break;
	
	case 14:
		
	break;
	
	case 15:
		
	break;
	
	case 16:
		
	break;
	
	case 17:
		
	break;
	
	case 18:
		
	break;
	
	case 19:
		
	break;
	
	case 20:
		
	break;
}