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
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
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
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
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
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
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
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
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
			}
			efficacy_upgrade_shown = true;
		} 
		
		if !object_exists(obj_house_upgrade)
		{
			efficacy_upgrade_shown = false;
			current_efficacy_upgrade += 1;
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
				upgrade_price = 1;
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
				upgrade_price = 1;
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
				upgrade_price = 1;
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
				upgrade_price = 1;
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
				upgrade_price = 1;
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

