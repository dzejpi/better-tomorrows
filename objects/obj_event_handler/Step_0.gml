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
			text = "Long Live Postria!" + "\n" + "\n" + "We are delighted to hear that you want to build your business in our glorious country. We do not generally get involved in the businesses nor we want to regulate you as long as you pay the fair share." + "\n" + "We will be watching you with a great interest." + "\n" + "No business is small business in Postria." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
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
		if obj_variable_handler.currency_amount > 500
		{
			current_event += 1;
		}
	break;
	
	case 4:
		_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
		with(_inst)
		{
			title = "Friendly reminder";
			text = "Long Live Postria!" + "\n" + "\n" + "This is just a friendly letter from the Tax Office. We are delighted to see how well your business is doing. Regulations now require you to share 50 % of your profit right away and then to share 25 % of your profit from now on as a tax in order to make sure you contribute fairly to the common wealth of our glorious country." + "\n" + "As we already mentioned - no business is small business in Postria. We support the growth of every business." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
		}
		
		_half_the_money = (obj_variable_handler.currency_amount / 2);
		obj_variable_handler.currency_amount = _half_the_money;
		
		_effectivity_reducement = (obj_variable_handler.amount_per_second * 0.75);
		obj_variable_handler.amount_per_second = _effectivity_reducement;
		
		current_event += 1;
	break;
	
	case 5:
		if obj_variable_handler.currency_amount > 450
		{
			current_event += 1;
		}
	break;
	
	case 6:
		// UFO here
		instance_create_depth(x - 60, y, 0, obj_ufo);
		countdown = 300;
		current_event += 1;
	break;
	
	case 7:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Security Department";
				text = "Long Live Postria!" + "\n" + "\n" + "It has come to our attention that some of our citizens reported the crash of the weather balloon in your area." + "\n" + "Postria authorities are already trying to determine the cause of the crash." + "\n" + "There is no reason for concern nor for the spread of any rumours. You can safely continue with your business." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
			}
			countdown = 0;
			current_event += 1;
		}
	break;
	
	case 8:
		if obj_variable_handler.currency_amount > 780
		{
			current_event += 1;
			
			_rocket = instance_create_depth(camera_get_view_x(view_camera[0]) - 35, camera_get_view_x(view_camera[0]) - 350, 0, obj_rocket);
			with(_rocket)
			{
				impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 500;
				impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 500;
			}
			
			countdown = 600;
		}
	break;
	
	case 9:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Security Department";
				text = "Long Live Postria!" + "\n" + "\n" + "Our authorities are currently investigating some sort of crash that happened nearby." + "\n" + "Postria authorities are already trying to determine the cause of the crash. Crash has all the signs of the rocket attack possibly coming from Aman." + "\n" + "You can continue with the business as usual. Postria authorities are here to protect you and your valuable business." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
			}
			countdown = 0;
			current_event += 1;
			
			countdown = 600;
		}
	break;
	
	case 10:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			current_event += 1;
		}
	break;
	
	case 11:
		_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
		with(_inst)
		{
			title = "Tax Office";
			text = "Long Live Postria!" + "\n" + "\n" + "This is your Tax Office with the exciting news." + "\n" + "Postria is now in the higher demand of the wooden goods that you are currently making. In order to speed your production off, your taxes will be reduced until the demand is fully satisfied and the business is back to the usual." + "\n" + "Postria authorities are here to protect you and your valuable business." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
		}
		countdown = 0;
		current_event += 1;
		
		_effectivity_increase = (obj_variable_handler.amount_multiplier * 1.75);
		obj_variable_handler.amount_multiplier = _effectivity_increase;
			
		countdown = 600;
	break;
	
	case 12:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			if obj_variable_handler.currency_amount > 780
			{
				_rocket_one = instance_create_depth(camera_get_view_x(view_camera[0]) - 350, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_one)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 800;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1400;
				}
				
				_rocket_two = instance_create_depth(camera_get_view_x(view_camera[0]) + 80, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_two)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 400;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1650;
				}
				
				_rocket_three = instance_create_depth(camera_get_view_x(view_camera[0]) - 100, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_three)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 600;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1000;
				}
				
				_rocket_four = instance_create_depth(camera_get_view_x(view_camera[0]) + 256, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_four)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 645;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1400;
				}
				
				_rocket_five = instance_create_depth(camera_get_view_x(view_camera[0]) + 69, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_five)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 500;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1250;
				}
			
				current_event += 1;
				countdown = 600;
			}
		}
	break;
	
	case 13:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Security Department";
				text = "Long Live Postria!" + "\n" + "\n" + "We have detected several rocket launches and hits on the sovereign territory of Postria in a proximity of your location." + "\n" + "We have confirmed that the rockets are coming from the Aman." + "\n" + "Security Department wants to let you know that it will do everything to protect you and your business." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
			}
			
			current_event += 1;
			countdown = 450;
		}
	break;
	
	case 14:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			// Rocket impact close to the home.
			_rocket_close = instance_create_depth(600, (-400), 0, obj_rocket);
			with(_rocket_close)
			{
				impact_x = 1500;
				impact_y = 800;
			}
			
			current_event += 1;
			countdown = 600;
		}
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

//

/* Code snippets:

------------------------------

if countdown > 0
		{
			countdown -= 1;
		} else
		{
		
			current_event += 1;
			countdown = 600;
		}

------------------------------

*/

