#if !defined(using_map_DATUM)

	#include "../../mods/misc/mundane.dm"
	#include "../../mods/corporate/_corporate.dme"

	#include "lobby/music_tracks/dyinginspace.dm"

	#include "tarsus_defines.dm"
	#include "tarsus_lobby.dm"

	#include "tarsus-1.dmm"

	#define using_map_DATUM /datum/map/tarsus

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Tarsus
#endif
