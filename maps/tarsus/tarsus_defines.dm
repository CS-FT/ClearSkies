/datum/map/tarsus
	name = "Tarsus"
	full_name = "Tarsus"
	path = "overmap_example"

	station_name  = "IMV Clear Skies"
	station_short = "Clear Skies"

	dock_name     = "MRP Alpha"
	boss_name     = "Militia Flotilla Command"
	boss_short    = "Flotilla Command"
	company_name  = "Nanotrasen"
	company_short = "NT"
	overmap_event_areas = 11

	evac_controller_type = /datum/evacuation_controller/lifepods
	lobby_screens = list('maps/tarsus/lobby/icons/lobby.gif')

	planet_size = list(129,129)
	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"
	use_overmap = 1
	num_exoplanets = 1

	welcome_sound = 'sound/effects/cowboysting.ogg'

	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."

	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_called_sound = sound('maps/bearcat/sounds/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2
	station_networks = list(NETWORK_ENGINEERING)

/datum/map/tarsus/get_map_info()
	return "You're aboard the <b>[station_name],</b> an independent vessel affiliated with Free Trade Union, on a SPACE FRONTIER. \
	No major corporation or government has laid claim on the planets in this sector, so their exploitation is entirely up to you - mine, poach and deforest all you want."