/// @description Insert description here
// You can write your code in this editor
switch(current_house_upgrade)
{
	case 1:
		if !house_upgrade_shown
		{
			_first_house_update = instance_create_depth(x, y, 0, obj_house_upgrade);
			with(_first_house_update)
			{
				upgrade_description = "Hire a worker. Brings extra 1 $/s.";
				upgrade_price = 15;
				
				increased_amount_per_second = 1;
				
				symbol_sprite = spr_upgrade_house_1;
			}
			house_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			house_upgrade_shown = false;
			current_house_upgrade += 1;
		}
	break;
	
	case 2:
		if !house_upgrade_shown
		{
			_second_house_update = instance_create_depth(x, y, 0, obj_house_upgrade);
			with(_second_house_update)
			{
				upgrade_description = "Hire more workers. Brings extra 5 $/s.";
				upgrade_price = 100;
				
				increased_amount_per_second = 5;
				
				symbol_sprite = spr_upgrade_house_2;
			}
			house_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			house_upgrade_shown = false;
			current_house_upgrade += 1;
		}
	break;
	
	case 3:
		if !house_upgrade_shown
		{
			_third_house_update = instance_create_depth(x, y, 0, obj_house_upgrade);
			with(_third_house_update)
			{
				upgrade_description = "New equipment. Brings extra 15 $/s.";
				upgrade_price = 250;
				
				increased_amount_per_second = 15;
				
				symbol_sprite = spr_upgrade_house_3;
			}
			house_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			house_upgrade_shown = false;
			current_house_upgrade += 1;
		}
	break;
	
	case 4:
		if !house_upgrade_shown
		{
			_fourth_house_update = instance_create_depth(x, y, 0, obj_house_upgrade);
			with(_fourth_house_update)
			{
				upgrade_description = "Double the output. Brings extra 30 $/s.";
				upgrade_price = 1000;
				
				increased_amount_per_second = 30;
				symbol_sprite = spr_upgrade_house_4;
			}
			house_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			house_upgrade_shown = false;
			current_house_upgrade += 1;
		}
	break;
	
	case 5:
		if !house_upgrade_shown
		{
			_fifth_house_update = instance_create_depth(x, y, 0, obj_house_upgrade);
			with(_fifth_house_update)
			{
				upgrade_description = "Max potential. Brings extra 50 $/s.";
				upgrade_price = 10000;
				
				increased_amount_per_second = 50;
				symbol_sprite = spr_upgrade_house_5;
			}
			house_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			house_upgrade_shown = false;
			current_house_upgrade += 1;
		}
	break;
	
	case 6:
		if !house_upgrade_shown
		{
			_fifth_house_update = instance_create_depth(x, y, 0, obj_house_upgrade);
			with(_fifth_house_update)
			{
				upgrade_description = "Get into mushroom business. Brings extra 75 $/s";
				upgrade_price = 10000;
				
				increased_amount_per_second = 75;
				symbol_sprite = spr_upgrade_house_6;
			}
			house_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			house_upgrade_shown = false;
			current_house_upgrade += 1;
		}
	break;
	
	case 7:
		if !house_upgrade_shown
		{
			_fifth_house_update = instance_create_depth(x, y, 0, obj_house_upgrade);
			with(_fifth_house_update)
			{
				upgrade_description = "Grow and sell berries. Brings extra 125 $/s.";
				upgrade_price = 10000;
				
				increased_amount_per_second = 125;
				symbol_sprite = spr_upgrade_house_7;
			}
			house_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			house_upgrade_shown = false;
			current_house_upgrade += 1;
		}
	break;
	
	case 8:
		if !house_upgrade_shown
		{
			_fifth_house_update = instance_create_depth(x, y, 0, obj_house_upgrade);
			with(_fifth_house_update)
			{
				upgrade_description = "Grow the magical mushrooms. Extra 200 $/s.";
				upgrade_price = 10000;
				
				increased_amount_per_second = 200;
				symbol_sprite = spr_upgrade_house_8;
			}
			house_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			house_upgrade_shown = false;
			current_house_upgrade += 1;
		}
	break;
}

switch(current_efficacy_upgrade)
{
	case 1:
		if !efficacy_upgrade_shown
		{
			_first_eff_update = instance_create_depth(x, y, 0, obj_efficacy_upgrade);
			with(_first_eff_update)
			{
				upgrade_description = "+10 % efficacy.";
				upgrade_price = 10;
				
				increased_amount_multiplier = 0.1;
				symbol_sprite = spr_upgrade_efficacy_1;
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_efficacy_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
		}
	break;
	
	case 2:
		if !efficacy_upgrade_shown
		{
			_second_eff_update = instance_create_depth(x, y, 0, obj_efficacy_upgrade);
			with(_second_eff_update)
			{
				upgrade_description = "+20 % efficacy.";
				upgrade_price = 200;
				
				increased_amount_multiplier = 0.2;
				symbol_sprite = spr_upgrade_efficacy_2;
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_efficacy_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
		}
	break;
	
	case 3:
		if !efficacy_upgrade_shown
		{
			_third_eff_update = instance_create_depth(x, y, 0, obj_efficacy_upgrade);
			with(_third_eff_update)
			{
				upgrade_description = "+30 % efficacy.";
				upgrade_price = 500;
				
				increased_amount_multiplier = 0.3;
				symbol_sprite = spr_upgrade_efficacy_3;
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_efficacy_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
		}
	break;
	
	case 4:
		if !efficacy_upgrade_shown
		{
			_fourth_eff_update = instance_create_depth(x, y, 0, obj_efficacy_upgrade);
			with(_fourth_eff_update)
			{
				upgrade_description = "+40 % efficacy.";
				upgrade_price = 10000;
				
				increased_amount_multiplier = 0.4;
				symbol_sprite = spr_upgrade_efficacy_4;
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_efficacy_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
		}
	break;
	
	case 5:
		if !efficacy_upgrade_shown
		{
			_fifth_eff_update = instance_create_depth(x, y, 0, obj_efficacy_upgrade);
			with(_fifth_eff_update)
			{
				upgrade_description = "+50 % efficacy.";
				upgrade_price = 25000;
				
				increased_amount_multiplier = 0.5;
				symbol_sprite = spr_upgrade_efficacy_5;
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_efficacy_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
		}
	break;
	
	case 6:
		if !efficacy_upgrade_shown
		{
			_fifth_eff_update = instance_create_depth(x, y, 0, obj_efficacy_upgrade);
			with(_fifth_eff_update)
			{
				upgrade_description = "+75 % efficacy.";
				upgrade_price = 50000;
				
				increased_amount_multiplier = 0.75;
				symbol_sprite = spr_upgrade_efficacy_6;
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_efficacy_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
		}
	break;
	
	case 7:
		if !efficacy_upgrade_shown
		{
			_fifth_eff_update = instance_create_depth(x, y, 0, obj_efficacy_upgrade);
			with(_fifth_eff_update)
			{
				upgrade_description = "+100 % efficacy.";
				upgrade_price = 100000;
				
				increased_amount_multiplier = 1;
				symbol_sprite = spr_upgrade_efficacy_7;
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_efficacy_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
		}
	break;
	
	case 8:
		if !efficacy_upgrade_shown
		{
			_fifth_eff_update = instance_create_depth(x, y, 0, obj_efficacy_upgrade);
			with(_fifth_eff_update)
			{
				upgrade_description = "+200 % efficacy.";
				upgrade_price = 200000;
				
				increased_amount_multiplier = 2;
				symbol_sprite = spr_upgrade_efficacy_8;
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_efficacy_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
		}
	break;
}

