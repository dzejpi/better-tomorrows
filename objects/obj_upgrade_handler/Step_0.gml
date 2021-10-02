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
				upgrade_description = "First house upgrade.";
				upgrade_price = 15;
				
				increased_amount_per_second = 1;
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
				upgrade_description = "Second house upgrade.";
				upgrade_price = 100;
				
				increased_amount_per_second = 5;
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
				upgrade_description = "Third house upgrade.";
				upgrade_price = 250;
				
				increased_amount_per_second = 15;
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
				upgrade_description = "Fourth house upgrade.";
				upgrade_price = 1000;
				
				increased_amount_per_second = 30;
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
				upgrade_description = "Fifth house upgrade.";
				upgrade_price = 10000;
				
				increased_amount_per_second = 50;
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
				upgrade_description = "First efficacy upgrade.";
				upgrade_price = 2;
				
				increased_amount_multiplier = 0.1;
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
				upgrade_description = "Second efficacy upgrade.";
				upgrade_price = 22;
				
				increased_amount_multiplier = 0.2;
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
				upgrade_description = "Third efficacy upgrade.";
				upgrade_price = 222;
				
				increased_amount_multiplier = 0.3;
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
				upgrade_description = "Fourth efficacy upgrade.";
				upgrade_price = 2222;
				
				increased_amount_multiplier = 0.4;
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
				upgrade_description = "Fifth efficacy upgrade.";
				upgrade_price = 22222;
				
				increased_amount_multiplier = 2;
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

