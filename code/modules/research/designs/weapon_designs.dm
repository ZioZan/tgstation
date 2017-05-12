/////////////////////////////////////////
/////////////////Weapons/////////////////
/////////////////////////////////////////

/datum/design/pin_testing
	name = "Test-Range Firing Pin"
	desc = "This safety firing pin allows firearms to be operated within proximity to a firing range."
	id = "pin_testing"
	req_tech = list("combat" = 1, "materials" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 500, MAT_GLASS = 300)
	build_path = /obj/item/device/firing_pin/test_range
	category = list("Firing Pins")

/datum/design/pin_standard
	name = "electronic firing pin"
	desc = "A small authentication device, to be inserted into a firearm reciever to allow operation. NT safety regulations require all new designs to incorporate one."
	id = "pin_standard"
	req_tech = list("combat" = 6, "materials" = 7, "powerstorage" = 6, "magnets" = 6, "engineering" = 6, "programming" = 6, "syndicate" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 2000, MAT_SILVER = 500, MAT_DIAMOND = 500, MAT_URANIUM = 500, MAT_PLASMA = 500)
	build_path = /obj/item/device/firing_pin
	category = list("Firing Pins")

/datum/design/pin_mindshield
	name = "Mindshield Firing Pin"
	desc = "This is a security firing pin which only authorizes users who are mindshield-implanted."
	id = "pin_loyalty"
	req_tech = list("combat" = 5, "materials" = 6, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_SILVER = 600, MAT_DIAMOND = 600, MAT_URANIUM = 200)
	build_path = /obj/item/device/firing_pin/implant/mindshield
	category = list("Firing Pins")

/datum/design/stunrevolver
	name = "Stun revolver"
	desc = "A high-tech revolver that fires internal, reusable shock cartridges in a revolving cylinder. The cartridges can be recharged using conventional rechargers."
	id = "stunrevolver"
	req_tech = list("combat" = 3, "materials" = 3, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 8000)
	build_path = /obj/item/weapon/gun/energy/stunrevolver
	category = list("Weapons")

/datum/design/teslarevolver
	name = "Tesla Revolver"
	desc = "An experimental gun based on an experimental engine, it's about as likely to kill it's operator as it is the target."
	id = "teslarevolver"
	req_tech = list("combat" = 3, "materials" = 3, "powerstorage" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 10000, MAT_GLASS = 4000, MAT_SILVER = 4000)
	build_path = /obj/item/weapon/gun/energy/tesla_revolver
	category = list("Weapons")

/datum/design/nuclear_gun
	name = "Advanced Energy Gun"
	desc = "An energy gun with an experimental miniaturized reactor."
	id = "nuclear_gun"
	req_tech = list("combat" = 4, "materials" = 5, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 1000, MAT_URANIUM = 200)
	build_path = /obj/item/weapon/gun/energy/e_gun/nuclear
	category = list("Weapons")

/datum/design/tele_shield
	name = "Telescopic Riot Shield"
	desc = "An advanced riot shield made of lightweight materials that collapses for easy storage."
	id = "tele_shield"
	req_tech = list("combat" = 4, "materials" = 3, "engineering" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 4000, MAT_GLASS = 4000, MAT_SILVER = 300, MAT_TITANIUM = 200)
	build_path = /obj/item/weapon/shield/riot/tele
	category = list("Weapons")

/datum/design/lasercannon
	name = "Laser Cannon"
	desc = "With the L.A.S.E.R. cannon, the lasing medium is enclosed in a tube lined with uranium-235 and subjected to high neutron flux in a nuclear reactor core. This incredible technology may help YOU achieve high excitation rates with small laser volumes!"
	id = "lasercannon"
	req_tech = list("combat" = 5, "magnets" = 3, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 8000, MAT_GLASS = 2000, MAT_DIAMOND = 2000)
	build_path = /obj/item/weapon/gun/energy/lasercannon
	category = list("Weapons")

/datum/design/accellasercannon
	name = "Accelerator Laser Cannon"
	desc = "A heavy duty laser cannon. It does more damage the farther away the target is."
	id = "accellasercannon"
	req_tech = list("combat" = 5, "magnets" = 3, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 8000, MAT_GLASS = 2000, MAT_DIAMOND = 2000)
	build_path = /obj/item/weapon/gun/energy/accellasercannon
	category = list("Weapons")

/datum/design/wt550
	name = "NanoTrasen WT-550 Auto Rifle"
	desc = "Old WT-550 auto rifle, used to deal with enemies protected from energy weapons."
	id = "wt550"
	req_tech = list("combat" = 4, "materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 8000, MAT_GLASS = 2000, MAT_SILVER = 1000, MAT_GOLD = 1000, MAT_URANIUM = 1000)
	build_path = /obj/item/weapon/gun/ballistic/automatic/wt550
	category = list("Weapons")

/datum/design/decloner
	name = "Decloner"
	desc = "Your opponent will bubble into a messy pile of goop."
	id = "decloner"
	req_tech = list("combat" = 6, "materials" = 7, "biotech" = 6, "powerstorage" = 6)
	build_type = PROTOLATHE
	materials = list(MAT_GOLD = 5000,MAT_URANIUM = 6000)
	reagents_list = list("mutagen" = 40)
	build_path = /obj/item/weapon/gun/energy/decloner
	category = list("Weapons")

/datum/design/rapidsyringe
	name = "Rapid Syringe Gun"
	desc = "A gun that fires many syringes."
	id = "rapidsyringe"
	req_tech = list("combat" = 3, "materials" = 3, "engineering" = 3, "biotech" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 1000)
	build_path = /obj/item/weapon/gun/syringe/rapidsyringe
	category = list("Weapons")

/datum/design/temp_gun
	name = "Temperature Gun"
	desc = "A gun that shoots temperature bullet energythings to change temperature."//Change it if you want
	id = "temp_gun"
	req_tech = list("combat" = 4, "materials" = 4, "powerstorage" = 3, "magnets" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 500, MAT_SILVER = 1000)
	build_path = /obj/item/weapon/gun/energy/temperature
	category = list("Weapons")

/datum/design/flora_gun
	name = "Floral Somatoray"
	desc = "A tool that discharges controlled radiation which induces mutation in plant cells. Harmless to other organic life."
	id = "flora_gun"
	req_tech = list("materials" = 2, "biotech" = 3, "powerstorage" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 2000, MAT_GLASS = 500)
	reagents_list = list("radium" = 20)
	build_path = /obj/item/weapon/gun/energy/floragun
	category = list("Weapons")

/datum/design/advflora_gun
	name = "Advanced Floral Somatoray"
	desc = "An improved version of floral somatoray, gives stronger mutations."
	id = "adv_flora_gun"
	req_tech = list("combat" = 6, "materials" = 7, "biotech" = 6, "powerstorage" = 7)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 8000, MAT_GLASS = 4000, MAT_GOLD = 4000, MAT_URANIUM = 4000, MAT_DIAMOND = 2000)
	reagents_list = list("radium" = 20)
	build_path = /obj/item/weapon/gun/energy/advfloragun
	category = list("Weapons")

/datum/design/large_grenade
	name = "Large Grenade"
	desc = "A grenade that affects a larger area and use larger containers."
	id = "large_Grenade"
	req_tech = list("combat" = 3, "materials" = 2)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 3000)
	build_path = /obj/item/weapon/grenade/chem_grenade/large
	category = list("Weapons")

/datum/design/pyro_grenade
	name = "Pyro Grenade"
	desc = "An advanced grenade that is able to self ignite its mixture."
	id = "pyro_Grenade"
	req_tech = list("combat" = 3, "materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 2000, MAT_PLASMA = 500)
	build_path = /obj/item/weapon/grenade/chem_grenade/pyro
	category = list("Weapons")

/* // Currently commented out, because it has no worthwhile useage yet.

/datum/design/cryo_grenade
	name = "Cryo Grenade"
	desc = "An advanced grenade that rapidly cools its contents upon detonation."
	id = "cryo_Grenade"
	req_tech = list("combat" = 3, "materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 2000, MAT_SILVER = 500)
	build_path = /obj/item/weapon/grenade/chem_grenade/cryo
	category = list("Weapons")
*/

/datum/design/adv_grenade
	name = "Advanced Release Grenade"
	desc = "An advanced grenade that can be detonated several times, best used with a repeating igniter."
	id = "adv_Grenade"
	req_tech = list("combat" = 3, "materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 3000, MAT_GLASS = 500)
	build_path = /obj/item/weapon/grenade/chem_grenade/adv_release
	category = list("Weapons")

/datum/design/xray
	name = "Xray Laser Gun"
	desc = "Not quite as menacing as it sounds"
	id = "xray"
	req_tech = list("combat" = 6, "materials" = 5, "biotech" = 5, "powerstorage" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_GOLD = 3000,MAT_URANIUM = 4000, MAT_METAL = 5000)
	build_path = /obj/item/weapon/gun/energy/xray
	category = list("Weapons")

/datum/design/ioncarbine
	name = "Ion Carbine"
	desc = "How to dismantle a cyborg : The gun."
	id = "ioncarbine"
	req_tech = list("combat" = 5, "materials" = 4, "magnets" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_SILVER = 4000, MAT_METAL = 4000, MAT_URANIUM = 1000)
	build_path = /obj/item/weapon/gun/energy/ionrifle/carbine
	category = list("Weapons")

/datum/design/wormhole_projector
	name = "Bluespace Wormhole Projector"
	desc = "A projector that emits high density quantum-coupled bluespace beams."
	id = "wormholeprojector"
	req_tech = list("combat" = 6, "materials" = 6, "bluespace" = 4)
	build_type = PROTOLATHE
	materials = list(MAT_SILVER = 2000, MAT_METAL = 5000, MAT_DIAMOND = 2000, MAT_BLUESPACE = 2000)
	build_path = /obj/item/weapon/gun/energy/wormhole_projector
	category = list("Weapons")

//WT550 Mags

/datum/design/mag_oldsmg
	name = "WT-550 Auto Gun Magazine (4.6x30mm)"
	desc = "A 20 round magazine for the out of date security WT-550 Auto Rifle"
	id = "mag_oldsmg"
	req_tech = list("combat" = 1, "materials" = 1)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 4000)
	build_path = /obj/item/ammo_box/magazine/wt550m9
	category = list("Ammo")

/datum/design/mag_oldsmg/ap_mag
	name = "WT-550 Auto Gun Armour Piercing Magazine (4.6x30mm AP)"
	desc = "A 20 round armour piercing magazine for the out of date security WT-550 Auto Rifle"
	id = "mag_oldsmg_ap"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wtap

/datum/design/mag_oldsmg/ic_mag
	name = "WT-550 Auto Gun Incendiary Magazine (4.6x30mm IC)"
	desc = "A 20 round armour piercing magazine for the out of date security WT-550 Auto Rifle"
	id = "mag_oldsmg_ic"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600, MAT_GLASS = 1000)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wtic

/datum/design/mag_oldsmg/tx_mag
	name = "WT-550 Auto Gun Uranium Magazine (4.6x30mm TX)"
	desc = "A 20 round uranium tipped magazine for the out of date security WT-550 Auto Rifle"
	id = "mag_oldsmg_tx"
	materials = list(MAT_METAL = 6000, MAT_SILVER = 600, MAT_URANIUM = 2000)
	build_path = /obj/item/ammo_box/magazine/wt550m9/wttx

/datum/design/stunshell
	name = "Stun Shell"
	desc = "A stunning shell for a shotgun."
	id = "stunshell"
	req_tech = list("combat" = 3, "materials" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 200)
	build_path = /obj/item/ammo_casing/shotgun/stunslug
	category = list("Ammo")

/datum/design/techshell
	name = "Unloaded Technological Shotshell"
	desc = "A high-tech shotgun shell which can be loaded with materials to produce unique effects."
	id = "techshotshell"
	req_tech = list("combat" = 3, "materials" = 3, "powerstorage" = 4, "magnets" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 1000, MAT_GLASS = 200)
	build_path = /obj/item/ammo_casing/shotgun/techshell
	category = list("Ammo")

/datum/design/suppressor
	name = "Universal Suppressor"
	desc = "A reverse-engineered universal suppressor that fits on most small arms with threaded barrels."
	id = "suppressor"
	req_tech = list("combat" = 6, "engineering" = 5, "syndicate" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 2000, MAT_SILVER = 500)
	build_path = /obj/item/weapon/suppressor
	category = list("Weapons")

/datum/design/gravitygun
	name = "One-point Bluespace-gravitational Manipulator"
	desc = "A multi-mode device that blasts one-point bluespace-gravitational bolts that locally distort gravity."
	id = "gravitygun"
	req_tech = list("combat" = 4, "materials" = 5, "bluespace" = 4, "powerstorage" = 4, "magnets" = 5)
	build_type = PROTOLATHE
	materials = list(MAT_SILVER = 8000, MAT_URANIUM = 8000, MAT_GLASS = 12000, MAT_METAL = 12000, MAT_DIAMOND = 3000, MAT_BLUESPACE = 2000)
	build_path = /obj/item/weapon/gun/energy/gravity_gun
	category = list("Weapons")

/datum/design/largecrossbow
	name = "Energy Crossbow"
	desc = "A reverse-engineered energy crossbow favored by syndicate infiltration teams and carp hunters."
	id = "largecrossbow"
	req_tech = list("combat" = 5, "materials" = 5, "engineering" = 3, "biotech" = 4, "syndicate" = 3)
	build_type = PROTOLATHE
	materials = list(MAT_METAL = 5000, MAT_GLASS = 1500, MAT_URANIUM = 1500, MAT_SILVER = 1500)
	build_path = /obj/item/weapon/gun/energy/kinetic_accelerator/crossbow/large
	category = list("Weapons")