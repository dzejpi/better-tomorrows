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
		countdown = 400;
	break;
	
	case 5:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			if countdown > 0
			{
				countdown -= 1;
			} else
			{
		
				current_event += 1;
				countdown = 600;
			}
		}
	break;
	
	case 6:
		// UFO here
		instance_create_depth(x - 60, y, 0, obj_ufo);
		countdown = 900;
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
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			if obj_variable_handler.currency_amount > 780
			{
				_rocket = instance_create_depth(camera_get_view_x(view_camera[0]) - 35, camera_get_view_x(view_camera[0]) - 350, 0, obj_rocket);
				with(_rocket)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 500;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 500;
				}
			
				current_event += 1;
				countdown = 600;
			}
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
			
			countdown = 300;
		}
	break;
	
	case 10:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			if countdown > 0
			{
				countdown -= 1;
			} else
			{
				current_event += 1;
			}
		}
	break;
	
	case 11:
		_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
		with(_inst)
		{
			title = "Tax Office";
			text = "Long Live Postria!" + "\n" + "\n" + "This is your Tax Office with the exciting news." + "\n" + "Postria is now in the higher demand of the wooden goods that you are currently making. In order to speed your production up, your taxes will be reduced until the demand is fully satisfied and the business is back to the usual." + "\n" + "Postria authorities are here to protect you and your valuable business." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
		}
		countdown = 0;
		current_event += 1;
		
		_effectivity_increase = (obj_variable_handler.amount_multiplier * 1.75);
		obj_variable_handler.amount_multiplier = _effectivity_increase;
			
		countdown = 600;
	break;
	
	case 12:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
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
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			// Rocket impact close to the home.
			_rocket_close = instance_create_depth(600, (-400), 0, obj_rocket);
			with(_rocket_close)
			{
				impact_x = 1500;
				impact_y = 1000;
			}
			
			current_event += 1;
			countdown = 600;
		}
	break;
	
	case 15:
		// Put up the razor fence
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			layer_set_visible(lay_id, true);
			
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Security Department";
				text = "Long Live Postria!" + "\n" + "\n" + "Due to the increased tensions, we have decided to put up a razor fence for your own safety." + "\n" + "All activity with Aman border was closed and everybody seen crossing the border or trying to approach Postria border will be shot on sight." + "\n" + "Security Department wants to let you know that it will do everything to protect you and your business." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
			}
			
			current_event += 1;
			countdown = 600;
		}
		
	break;
	
	case 16:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			if countdown > 0
			{
				countdown -= 1;
			} else
			{
				_sporadic_gunfire = instance_create_layer(180, 580, back_layer_id, obj_bullet_generator);
				with(_sporadic_gunfire)
				{
					is_shooting_right = true;
					fire_intensity = 150;
				}
			
				current_event += 1;
				countdown = 600;
			}
		}
	break;
	
	case 17:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			layer_set_visible(lay_id, true);
			
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Security Department";
				text = "Long Live Postria!" + "\n" + "\n" + "Several citizens reported a sporadic gunfire on the Postria border." + "\n" + "The war on Aman was declared. All borders with Aman were closed and everybody seen crossing the border or trying to approach Postria border will be shot on sight." + "\n" + "Security Department wants to let you know that it will do everything to protect you and your business." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
			}
			
			current_event += 1;
		}
	break;
	
	case 18:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			_sporadic_gunfire_response = instance_create_layer(1247, 589, back_layer_id, obj_bullet_generator);
			with(_sporadic_gunfire_response)
			{
				is_shooting_right = false;
				fire_intensity = 100;
			}
			
			// Rocket impact close to the home.
			_rocket_close = instance_create_depth(600, (-400), 0, obj_rocket);
			with(_rocket_close)
			{
				impact_x = 1340;
				impact_y = 960;
			}
			
			current_event += 1;
			countdown = 600;
		}
	break;
	
	case 19:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Tax Office";
				text = "Long Live Postria!" + "\n" + "\n" + "As informed by the Security Department, you are surely aware of the fact that the war state with Aman was declared." + "\n" + "Postria needs your resources for the war effort." + "\n" + "Postria authorities are forfeiting half of business assets. Be informed that some of your workers will most likely have to enlist." + "\n" + "\n" + "Obligatory information:" + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
			}
			countdown = 0;
			current_event += 1;
		
			_half_the_money = (obj_variable_handler.currency_amount / 2);
			obj_variable_handler.currency_amount = _half_the_money;
			
			_effectivity_reducement = (obj_variable_handler.amount_per_second * 0.5);
			obj_variable_handler.amount_per_second = _effectivity_reducement;
			
			countdown = 600;
		}
	break;
	
	case 20:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			if countdown > 0
			{
				countdown -= 1;
			} else
			{
				_rocket_one = instance_create_depth(camera_get_view_x(view_camera[0]) - 350, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_one)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 900;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1200;
				}
			
				_rocket_two = instance_create_depth(camera_get_view_x(view_camera[0]) + 80, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_two)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 500;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1350;
				}
			
				_rocket_three = instance_create_depth(camera_get_view_x(view_camera[0]) - 100, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_three)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 400;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1040;
				}
			
				_rocket_four = instance_create_depth(camera_get_view_x(view_camera[0]) + 256, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_four)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 845;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1300;
				}
			
				_rocket_five = instance_create_depth(camera_get_view_x(view_camera[0]) + 69, camera_get_view_x(view_camera[0]) - 400, 0, obj_rocket);
				with(_rocket_five)
				{
					impact_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 490;
					impact_y = camera_get_view_x(view_camera[0]) + camera_get_view_height(view_camera[0]) + 1250;
				}
		
				current_event += 1;
				countdown = 600;
			}
		}
	break;
	
	case 21:
		with(_sporadic_gunfire)
		{
			//is_shooting_right = false;
			fire_intensity = 20;
		}
		
		with(_sporadic_gunfire_response)
		{
			//is_shooting_right = false;
			fire_intensity = 25;
		}
		
		_gunfire_one = instance_create_layer(2593, 609, back_layer_id, obj_bullet_generator);
		with(_gunfire_one)
		{
			//is_shooting_right = true;
			fire_intensity = 30;
		}
		
		_gunfire_two = instance_create_layer(3299, 579, back_layer_id, obj_bullet_generator);
		with(_gunfire_two)
		{
			//is_shooting_right = true;
			fire_intensity = 60;
		}
		
		_gunfire_three = instance_create_layer(4672, 577, back_layer_id, obj_bullet_generator);
		with(_gunfire_three)
		{
			//is_shooting_right = true;
			fire_intensity = 20;
		}
		
		_gunfire_four = instance_create_layer(4693, 579, back_layer_id, obj_bullet_generator);
		with(_gunfire_four)
		{
			//is_shooting_right = true;
			fire_intensity = 76;
		}
		
		current_event += 1;
	break;
	
	case 22:
		if obj_variable_handler.currency_amount > 30000
		{
			current_event += 1;
		}
	break;
	
	case 23:
		// Rocket impact close to the home.
		_rocket_very_close = instance_create_depth(600, (-400), 0, obj_rocket);
		with(_rocket_very_close)
		{
			impact_x = 517;
			impact_y = 979;
		}
		
		current_event += 1;
	break;
	
	case 24:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Tax Office";
				text = "Long Live Postria!" + "\n" + "\n" + "All of your assets have been forfeited due to the suspicion of not contributing your fair share for the wellbeing of your fellow citizens." + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
			}
			countdown = 0;
			current_event += 1;
		}
	break;
	
	case 25:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			countdown = 120;
			current_event += 1;

			obj_variable_handler.currency_amount = 0;
			obj_variable_handler.amount_per_second = 0;
		}
	break;
	
	case 26:
		if countdown > 0
		{
			countdown -= 1;
		} else
		{
			current_event += 1;
			countdown = 600;
		}
	break;
	
	case 27:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Security Department";
				text = "Long Live Postria!" + "\n" + "\n" + "Due to the suspicion of the anti-state crimes, you are required to arrive into your closest security station for the questioning immediately. Failure to show up will be punished into the full extend of the law." + "\n" + "Please be aware of the fact that reading letters is obligatory and ignoring them can be penalised up to 250 $ per second." + "\n" + "\n" + "Long Live Postria!";
			}
			countdown = 120;
			current_event += 1;

			obj_variable_handler.currency_amount = 0;
			obj_variable_handler.amount_per_second = 0;
		}
	break;
	
	case 28:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			if countdown > 0
			{
				countdown -= 1;
			} else
			{
				current_event += 1;
				countdown = 600;
			}
		}
	break;
	
	case 29:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			_inst = instance_create_depth(x, y, 0, obj_letter_envelope);
			with(_inst)
			{
				title = "Friendly Neighbor";
				text = "Hey! Have your assets been confiscated as well? I have absolutely nothing." + "\n" + "I have a really bad feeling about this situation. We should leave as quickly as we can. This will get very bad." + "\n" + "I know a guy that can smug us out of this god forsaken country for 100 $." + "\n" + "If you can make it quickly somehow, see me immediately. But hurry, before they lock you up!" + "\n" + "Good luck. Forest is your friend." + "\n" + "\n" + "Your Neighbour.";
			}
			current_event += 1;
		}	
	break;
	
	case 30:
		if !instance_exists(obj_letter_envelope) && !instance_exists(obj_letter_paper)
		{
			if end_game_countdown > 0
			{
				end_game_countdown -= 1;
			
				seconds_left = ceil(end_game_countdown/60);
				obj_variable_handler.current_objective = "Get 100 $ somehow. Time left: " + string(seconds_left);
			} else
			{
				// Bad ending
				if obj_variable_handler.currency_amount < 150
				{
					instance_create_depth(x, y, 0, obj_next_room_fade_in);
					obj_next_room_fade_in.displayed_text = "Authorities found you.";
					obj_next_room_fade_in.secondary_text = "You are in jail awaiting your trial.";
					
				} else
				{
					instance_create_depth(x, y, 0, obj_next_room_fade_in);
					obj_next_room_fade_in.displayed_text = "You went to your neighbor.";
					obj_next_room_fade_in.secondary_text = "Can you trust them? You will see.";
				}
				current_event += 1;
			}
		}
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

