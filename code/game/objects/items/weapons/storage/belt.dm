/obj/item/weapon/storage/belt
	name = "belt"
	desc = "Can hold various things."
	icon = 'icons/obj/clothing/belts.dmi'
	icon_state = "utilitybelt"
	item_state = "utility"
	flags = FPRINT
	slot_flags = SLOT_BELT
	attack_verb = list("whipped", "lashed", "disciplined")


/obj/item/weapon/storage/belt/proc/can_use()
	if(!ismob(loc)) return 0
	var/mob/M = loc
	if(src in M.get_equipped_items())
		return 1
	else
		return 0

/obj/item/weapon/storage/belt/utility
	name = "tool-belt" //Carn: utility belt is nicer, but it bamboozles the text parsing.
	desc = "It has a tag that rates it for compatibility with standard tools, device analyzers, flashlights, cables, engineering tape, small fire extinguishers, compressed matter cartridges, light replacers, and fuel cans."
	icon_state = "utilitybelt"
	item_state = "utility"
	w_class = 4
	max_w_class = 2
	storage_slots = 14
	max_combined_w_class = 200 //This actually doesn't matter as long as it is arbitrarily high, bar will be set by storage slots
	can_hold = list(
		"/obj/item/weapon/crowbar",
		"/obj/item/weapon/screwdriver",
		"/obj/item/weapon/weldingtool",
		"/obj/item/weapon/solder",
		"/obj/item/weapon/wirecutters",
		"/obj/item/weapon/wrench",
		"/obj/item/device/multitool",
		"/obj/item/device/flashlight",
		"/obj/item/stack/cable_coil",
		"/obj/item/device/t_scanner",
		"/obj/item/device/analyzer",
		"/obj/item/taperoll/engineering",
		"/obj/item/taperoll/atmos",
		"/obj/item/weapon/extinguisher",
		"/obj/item/weapon/rcd_ammo",
		"/obj/item/weapon/reagent_containers/glass/fuelcan",
		"/obj/item/device/lightreplacer",
		"/obj/item/device/device_analyser",
		"/obj/item/device/silicate_sprayer"
		)

/obj/item/weapon/storage/belt/utility/complete/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/device/multitool(src)
	new /obj/item/stack/cable_coil(src,30,pick("red","yellow","orange"))

/obj/item/weapon/storage/belt/utility/full/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/stack/cable_coil(src,30,pick("red","yellow","orange"))


/obj/item/weapon/storage/belt/utility/atmostech/New()
	..()
	new /obj/item/weapon/screwdriver(src)
	new /obj/item/weapon/wrench(src)
	new /obj/item/weapon/weldingtool(src)
	new /obj/item/weapon/crowbar(src)
	new /obj/item/weapon/wirecutters(src)
	new /obj/item/device/t_scanner(src)

/obj/item/weapon/storage/belt/utility/chief
	name = "advanced tool-belt"
	desc = "The ancestral belt of Many-APCs-Charging, the original chief engineer from Space Native America. It's made out of the skins of the ancient enemy of engineers, giant spiders."
	icon_state = "utilitychief"
	item_state = "utilitychief"
	w_class = 4
	max_w_class = 3
	storage_slots = 14
	can_hold = list(
		"/obj/item/weapon/crowbar",
		"/obj/item/weapon/screwdriver",
		"/obj/item/weapon/weldingtool",
		"/obj/item/weapon/solder",
		"/obj/item/weapon/wirecutters",
		"/obj/item/weapon/wrench",
		"/obj/item/device/multitool",
		"/obj/item/device/flashlight",
		"/obj/item/stack/cable_coil",
		"/obj/item/device/t_scanner",
		"/obj/item/device/analyzer",
		"/obj/item/taperoll/engineering",
		"/obj/item/taperoll/atmos",
		"/obj/item/weapon/extinguisher",
		"/obj/item/device/rcd/matter/engineering",
		"/obj/item/device/rcd/rpd",
		"/obj/item/device/rcd/tile_painter",
		"/obj/item/weapon/storage/component_exchanger",
		"/obj/item/weapon/rcd_ammo",
		"/obj/item/weapon/reagent_containers/glass/fuelcan",
		"/obj/item/blueprints",
		"/obj/item/device/lightreplacer",
		"/obj/item/device/device_analyser",
		"/obj/item/weapon/rcl",
		"/obj/item/device/silicate_sprayer"
		)

/obj/item/weapon/storage/belt/utility/chief/New()
	..()

/obj/item/weapon/storage/belt/medical
	name = "medical belt"
	desc = "Can hold various medical equipment."
	icon_state = "medicalbelt"
	item_state = "medical"
	can_hold = list(
		"/obj/item/device/healthanalyzer",
		"/obj/item/weapon/dnainjector",
		"/obj/item/weapon/reagent_containers/dropper",
		"/obj/item/weapon/reagent_containers/glass/beaker",
		"/obj/item/weapon/reagent_containers/glass/bottle",
		"/obj/item/weapon/reagent_containers/pill",
		"/obj/item/weapon/reagent_containers/syringe",
		"/obj/item/weapon/reagent_containers/glass/dispenser",
		"/obj/item/weapon/lighter/zippo",
		"/obj/item/weapon/storage/fancy/cigarettes",
		"/obj/item/weapon/storage/pill_bottle",
		"/obj/item/stack/medical",
		"/obj/item/device/flashlight/pen",
		"/obj/item/clothing/mask/surgical",
		"/obj/item/clothing/gloves/latex",
        "/obj/item/weapon/reagent_containers/hypospray/autoinjector",
		"/obj/item/device/mass_spectrometer",
		"/obj/item/device/gps/paramedic",
		"/obj/item/device/antibody_scanner"
	)


/obj/item/weapon/storage/belt/security
	name = "security belt"
	desc = "Can hold security gear like handcuffs and flashes."
	icon_state = "securitybelt"
	item_state = "security"//Could likely use a better one.
	storage_slots = 7
	max_w_class = 3
	max_combined_w_class = 21
	can_hold = list(
		"/obj/item/weapon/grenade",
		"/obj/item/weapon/reagent_containers/spray/pepper",
		"/obj/item/weapon/handcuffs",
		"/obj/item/device/flash",
		"/obj/item/clothing/glasses",
		"/obj/item/ammo_casing/shotgun",
		"/obj/item/ammo_storage",
		"/obj/item/weapon/reagent_containers/food/snacks/donut/normal",
		"/obj/item/weapon/reagent_containers/food/snacks/donut/jelly",
		"/obj/item/weapon/melee/baton",
		"/obj/item/weapon/gun/energy/taser",
		"/obj/item/weapon/lighter/zippo",
		"/obj/item/weapon/cigpacket",
		"/obj/item/clothing/glasses/hud/security",
		"/obj/item/device/flashlight",
		"/obj/item/device/pda",
		"/obj/item/device/radio/headset",
		"/obj/item/weapon/melee/baton",
		"/obj/item/taperoll/police",
		"/obj/item/weapon/gun/energy/taser",
		"/obj/item/weapon/legcuffs/bolas",
		"/obj/item/device/hailer",
		"obj/item/weapon/melee/telebaton",
		"/obj/item/device/gps/secure"
		)
/obj/item/weapon/storage/belt/security/batmanbelt
	name = "batbelt"
	desc = "For all your crime-fighting bat needs."
	icon_state = "bmbelt"
	item_state = "bmbelt"
/obj/item/weapon/storage/belt/security/batmanbelt/New()
	..()
	can_hold |= "/obj/item/weapon/gun/hookshot"

/obj/item/weapon/storage/belt/soulstone
	name = "soul stone belt"
	desc = "Designed for ease of access to the shards during a fight, as to not let a single enemy spirit slip away"
	icon_state = "soulstonebelt"
	item_state = "soulstonebelt"
	storage_slots = 6
	can_hold = list(
		"/obj/item/device/soulstone"
		)

/obj/item/weapon/storage/belt/soulstone/full/New()
	..()
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)
	new /obj/item/device/soulstone(src)


/obj/item/weapon/storage/belt/champion
	name = "championship belt"
	desc = "Proves to the world that you are the strongest!"
	icon_state = "championbelt"
	item_state = "champion"
	storage_slots = 1
	can_hold = list(
		"/obj/item/clothing/mask/luchador"
		)


/obj/item/weapon/storage/belt/skull
	name = "trophy-belt" //FATALITY
	desc = "Excellent for holding the heads of your fallen foes."
	icon_state = "utilitybelt"
	item_state = "utility"
	max_w_class = 4
	max_combined_w_class = 28
	can_hold = list(
 		"/obj/item/weapon/organ/head"
 	)


/obj/item/weapon/storage/belt/mining
	name = "mining gear belt"
	desc = "Can hold various mining gear like pickaxes or drills."
	icon_state = "miningbelt"
	item_state = "mining"
	w_class = 4 //Lets it hold mining satchels.
	max_w_class = 4
	max_combined_w_class = 28
	can_hold = list(
		"/obj/item/weapon/storage/bag/ore",
		"/obj/item/weapon/pickaxe/shovel",
		"/obj/item/weapon/storage/box/samplebags",
		"/obj/item/device/core_sampler",
		"/obj/item/device/beacon_locator",
		"/obj/item/beacon",
		"/obj/item/device/gps",
		"/obj/item/device/measuring_tape",
		"/obj/item/device/flashlight",
		"/obj/item/weapon/pickaxe",
		"/obj/item/device/depth_scanner",
		"/obj/item/weapon/paper",
		"/obj/item/weapon/pen",
		"/obj/item/clothing/glasses",
		"/obj/item/weapon/wrench",
		"/obj/item/device/mining_scanner",
		"/obj/item/weapon/crowbar",
		"/obj/item/weapon/storage/box/excavation",
		"/obj/item/weapon/gun/energy/kinetic_accelerator",
		"/obj/item/weapon/resonator",
		"/obj/item/device/wormhole_jaunter",
		"/obj/item/weapon/lazarus_injector",
		"/obj/item/weapon/anobattery")

/obj/item/weapon/storage/belt/lazarus
	name = "trainer's belt"
	desc = "For the pokemo- mining master, holds your lazarus capsules."
	icon_state = "lazarusbelt_0"
	item_state = "lazbelt"
	w_class = 4
	max_w_class = 4
	max_combined_w_class = 28
	storage_slots = 6
	can_hold = list("/obj/item/device/mobcapsule")

/obj/item/weapon/storage/belt/lazarus/New()
	..()
	update_icon()


/obj/item/weapon/storage/belt/lazarus/update_icon()
	..()
	icon_state = "lazarusbelt_[contents.len]"

/obj/item/weapon/storage/belt/lazarus/attackby(obj/item/W, mob/user)
	var/amount = contents.len
	. = ..()
	if(amount != contents.len)
		update_icon()

/obj/item/weapon/storage/belt/lazarus/remove_from_storage(obj/item/W as obj, atom/new_location)
	..()
	update_icon()

/obj/item/weapon/storage/belt/lazarus/antag
	name = "master trainer's belt"
	desc = "For the pokemo- mining master, holds your lazarus capsules."
	icon_state = "lazarusbelt"
	item_state = "lazbelt"
	storage_slots = 6
	w_class = 4
	max_w_class = 4
	max_combined_w_class = 28
	can_hold = list("/obj/item/device/mobcapsule")

/obj/item/weapon/storage/belt/lazarus/antag/New(loc, mob/user)
	var/blocked = list(
	/mob/living/simple_animal/hostile/hivebot/tele,
	)
	var/list/critters = existing_typesof(/mob/living/simple_animal/hostile) - blocked // list of possible hostile mobs
	critters = shuffle(critters)
	while(contents.len < 6)
		var/obj/item/device/mobcapsule/MC = new /obj/item/device/mobcapsule(src)
		var/chosen = pick(critters)
		critters -= chosen
		var/mob/living/simple_animal/hostile/NM = new chosen(MC)
		NM.faction = "lazarus \ref[user]"
		NM.friends += user
		MC.contained_mob = NM
	..()

/obj/item/weapon/storage/belt/thunderdome
	name = "Thunderdome Belt"
	desc = "Can hold the thunderdome IDs of your fallen foes."
	item_state = ""
	storage_slots = 30
	can_hold = list("/obj/item/weapon/card/id/thunderdome")

/obj/item/weapon/storage/belt/thunderdome/green
	icon_state = "td_belt-green"

/obj/item/weapon/storage/belt/thunderdome/red
	icon_state = "td_belt-red"

/obj/item/weapon/storage/belt/security/doomguy
	name = "Doomguy's belt"
	desc = ""
	icon_state = "doom"
	item_state = "doom"
