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
			text = "Long Live Postria!" + "\n" + "\n" + "We are delighted to hear that you want to build your business in our glorious country. We do not generally get involved in the businesses nor we want to regulate you as long as you pay the fair share." + "\n" + "We will be watching you with a great interest." + "\n" + "No business is small business in Postria." + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
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
				text[1] = "Time for business! Look around by going into corners.";
				text[2] = "Make money yourself in the left corner by cutting logs" + "\n" +  "by clicking on them.";
				text[3] = "You can eventually buy upgrades which appear above" + "\n" + "your house.";
				text[4] = "Make some extra unregulated money by picking berries" + "\n" + "or mushrooms.";
				text[5] = "Always read letters or you will be fined!";
				text[6] = "Happy and stable business!";
			}
			obj_variable_handler.current_objective = "Make money and explore!";
			
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