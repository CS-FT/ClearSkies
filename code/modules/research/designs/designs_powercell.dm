/datum/design/item/powercell
	build_type = PROTOLATHE | MECHFAB
	category = "Misc"
	materials = list(MAT_STEEL = 700, MAT_GLASS = 50, MAT_PLASTIC = 20)

/datum/design/item/powercell/AssembleDesignName()
	name = "Power cell model ([item_name])"

/datum/design/item/powercell/device/AssembleDesignName()
	name = "Device cell model ([item_name])"

/datum/design/item/powercell/AssembleDesignDesc()
	if(build_path)
		var/obj/item/cell/C = build_path
		desc = "Allows the construction of power cells that can hold [initial(C.maxcharge)] units of energy."

/datum/design/item/powercell/Fabricate()
	var/obj/item/cell/C = ..()
	C.charge = 0 //shouldn't produce power out of thin air.
	return C

/datum/design/item/powercell/basic
	name = "basic"
	req_tech = list(TECH_POWER = 1)
	build_path = /obj/item/cell

/datum/design/item/powercell/high
	name = "high-capacity"
	req_tech = list(TECH_POWER = 2)
	build_path = /obj/item/cell/high

/datum/design/item/powercell/super
	name = "super-capacity"
	req_tech = list(TECH_POWER = 3, TECH_MATERIAL = 2)
	build_path = /obj/item/cell/super

/datum/design/item/powercell/hyper
	name = "hyper-capacity"
	req_tech = list(TECH_POWER = 5, TECH_MATERIAL = 4)
	materials = list(MAT_STEEL = 400, MAT_GOLD = 150, MAT_SILVER = 150, MAT_GLASS = 70, MAT_ALUMINIUM = 25)
	build_path = /obj/item/cell/hyper

/datum/design/item/powercell/device/standard
	name = "basic"
	req_tech = list(TECH_POWER = 1)
	materials = list(MAT_STEEL = 70, MAT_GLASS = 5)
	build_path = /obj/item/cell/device/standard

/datum/design/item/powercell/device/high
	name = "high-capacity"
	build_type = PROTOLATHE | MECHFAB
	req_tech = list(TECH_POWER = 2)
	materials = list(MAT_STEEL = 70, MAT_GLASS = 6)
	build_path = /obj/item/cell/device/high
