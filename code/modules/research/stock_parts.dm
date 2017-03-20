/*Power cells are in code\modules\power\cell.dm

If you create T5+ please take a pass at gene_modder.dm [L40]. Max_values MUST fit with the clamp to not confuse the user or cause possible exploits.*/
/obj/item/weapon/storage/part_replacer
	name = "rapid part exchange device"
	desc = "Special mechanical module made to store, sort, and apply standard machine parts."
	icon_state = "RPED"
	item_state = "RPED"
	w_class = WEIGHT_CLASS_HUGE
	can_hold = list(/obj/item/weapon/stock_parts)
	storage_slots = 50
	use_to_pickup = 1
	allow_quick_gather = 1
	allow_quick_empty = 1
	collection_mode = 1
	display_contents_with_number = 1
	max_w_class = WEIGHT_CLASS_NORMAL
	max_combined_w_class = 100
	var/works_from_distance = 0
	var/pshoom_or_beepboopblorpzingshadashwoosh = 'sound/items/rped.ogg'
	var/alt_sound = null

/obj/item/weapon/storage/part_replacer/afterattack(obj/machinery/T, mob/living/carbon/human/user, flag, params)
	if(flag)
		return
	else if(works_from_distance)
		if(istype(T))
			if(T.component_parts)
				T.exchange_parts(user, src)
				user.Beam(T,icon_state="rped_upgrade",time=5)
	return

/obj/item/weapon/storage/part_replacer/bluespace
	name = "bluespace rapid part exchange device"
	desc = "A version of the RPED that allows for replacement of parts and scanning from a distance, along with higher capacity for parts."
	icon_state = "BS_RPED"
	w_class = WEIGHT_CLASS_NORMAL
	storage_slots = 400
	max_w_class = WEIGHT_CLASS_NORMAL
	max_combined_w_class = 800
	works_from_distance = 1
	pshoom_or_beepboopblorpzingshadashwoosh = 'sound/items/PSHOOM.ogg'

/obj/item/weapon/storage/part_replacer/bluespace/content_can_dump(atom/dest_object, mob/user)
	if(Adjacent(user))
		if(get_dist(user, dest_object) < 8)
			if(dest_object.storage_contents_dump_act(src, user))
				play_rped_sound()
				user.Beam(dest_object,icon_state="rped_upgrade",time=5)
				return 1
		to_chat(user, "The [src.name] buzzes.")
		playsound(src, 'sound/machines/buzz-sigh.ogg', 50, 0)
	return 0

/obj/item/weapon/storage/part_replacer/proc/play_rped_sound()
	playsound(src, pshoom_or_beepboopblorpzingshadashwoosh, 40, 1)
//Plays the sound for RPED exhanging or installing parts.

//Sorts stock parts inside an RPED by their rating.
//Only use /obj/item/weapon/stock_parts/ with this sort proc!
/proc/cmp_rped_sort(obj/item/weapon/stock_parts/A, obj/item/weapon/stock_parts/B)
	return B.rating - A.rating

/obj/item/weapon/storage/part_replacer/bluespace/debuglv1full
	name = "bluespace rapid part exchange device (debug level 1)"
	desc = "Special mechanical module made to store, sort, and apply standard machine parts. It is used for debug and holds 65 lvl 1 parts."

/obj/item/weapon/storage/part_replacer/bluespace/debuglv1full/New()
	..()
	new /obj/item/weapon/stock_parts/console_screen(src)
	new /obj/item/weapon/stock_parts/console_screen(src)
	new /obj/item/weapon/stock_parts/console_screen(src)
	new /obj/item/weapon/stock_parts/console_screen(src)
	new /obj/item/weapon/stock_parts/console_screen(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/capacitor(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/scanning_module(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/manipulator(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/micro_laser(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/matter_bin(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)
	new /obj/item/weapon/stock_parts/cell(src)


/obj/item/weapon/storage/part_replacer/bluespace/debuglv2full
	name = "bluespace rapid part exchange device (debug level 2)"
	desc = "Special mechanical module made to store, sort, and apply standard machine parts. It is used for debug and holds 60 lvl 2 parts."

/obj/item/weapon/storage/part_replacer/bluespace/debuglv2full/New()
	..()
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/capacitor/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/scanning_module/adv(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/manipulator/nano(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/micro_laser/high(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/matter_bin/adv(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)
	new /obj/item/weapon/stock_parts/cell/high(src)

/obj/item/weapon/storage/part_replacer/bluespace/debuglv3full
	name = "bluespace rapid part exchange device (debug level 3)"
	desc = "Special mechanical module made to store, sort, and apply standard machine parts. It is used for debug and holds 60 lvl 3 parts."

/obj/item/weapon/storage/part_replacer/bluespace/debuglv3full/New()
	..()
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/capacitor/super(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/phasic(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/manipulator/pico(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/ultra(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/matter_bin/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)
	new /obj/item/weapon/stock_parts/cell/super(src)

/obj/item/weapon/storage/part_replacer/bluespace/debuglv4full
	name = "bluespace rapid part exchange device (debug level 4)"
	desc = "Special mechanical module made to store, sort, and apply standard machine parts. It is used for debug and holds 60 lvl 4 parts."

/obj/item/weapon/storage/part_replacer/bluespace/debuglv4full/New()
	..()
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/capacitor/quadratic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/scanning_module/triphasic(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/manipulator/femto(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/micro_laser/quadultra(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/matter_bin/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)
	new /obj/item/weapon/stock_parts/cell/bluespace(src)


/obj/item/weapon/stock_parts
	name = "stock part"
	desc = "What?"
	icon = 'icons/obj/stock_parts.dmi'
	w_class = WEIGHT_CLASS_SMALL
	var/rating = 1

/obj/item/weapon/stock_parts/New()
	..()
	src.pixel_x = rand(-5, 5)
	src.pixel_y = rand(-5, 5)

//Rating 1

/obj/item/weapon/stock_parts/console_screen
	name = "console screen"
	desc = "Used in the construction of computers and other devices with a interactive console."
	icon_state = "screen"
	origin_tech = "materials=1"
	materials = list(MAT_GLASS=200)

/obj/item/weapon/stock_parts/capacitor
	name = "capacitor"
	desc = "A basic capacitor used in the construction of a variety of devices."
	icon_state = "capacitor"
	origin_tech = "powerstorage=1"
	materials = list(MAT_METAL=50, MAT_GLASS=50)

/obj/item/weapon/stock_parts/scanning_module
	name = "scanning module"
	desc = "A compact, high resolution scanning module used in the construction of certain devices."
	icon_state = "scan_module"
	origin_tech = "magnets=1"
	materials = list(MAT_METAL=50, MAT_GLASS=20)

/obj/item/weapon/stock_parts/manipulator
	name = "micro-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "micro_mani"
	origin_tech = "materials=1;programming=1"
	materials = list(MAT_METAL=30)

/obj/item/weapon/stock_parts/micro_laser
	name = "micro-laser"
	desc = "A tiny laser used in certain devices."
	icon_state = "micro_laser"
	origin_tech = "magnets=1"
	materials = list(MAT_METAL=10, MAT_GLASS=20)

/obj/item/weapon/stock_parts/matter_bin
	name = "matter bin"
	desc = "A container designed to hold compressed matter awaiting reconstruction."
	icon_state = "matter_bin"
	origin_tech = "materials=1"
	materials = list(MAT_METAL=80)

//Rating 2

/obj/item/weapon/stock_parts/capacitor/adv
	name = "advanced capacitor"
	desc = "An advanced capacitor used in the construction of a variety of devices."
	icon_state = "adv_capacitor"
	origin_tech = "powerstorage=3"
	rating = 2
	materials = list(MAT_METAL=50, MAT_GLASS=50)

/obj/item/weapon/stock_parts/scanning_module/adv
	name = "advanced scanning module"
	desc = "A compact, high resolution scanning module used in the construction of certain devices."
	icon_state = "adv_scan_module"
	origin_tech = "magnets=3"
	rating = 2
	materials = list(MAT_METAL=50, MAT_GLASS=20)

/obj/item/weapon/stock_parts/manipulator/nano
	name = "nano-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "nano_mani"
	origin_tech = "materials=3;programming=2"
	rating = 2
	materials = list(MAT_METAL=30)

/obj/item/weapon/stock_parts/micro_laser/high
	name = "high-power micro-laser"
	desc = "A tiny laser used in certain devices."
	icon_state = "high_micro_laser"
	origin_tech = "magnets=3"
	rating = 2
	materials = list(MAT_METAL=10, MAT_GLASS=20)

/obj/item/weapon/stock_parts/matter_bin/adv
	name = "advanced matter bin"
	desc = "A container designed to hold compressed matter awaiting reconstruction."
	icon_state = "advanced_matter_bin"
	origin_tech = "materials=3"
	rating = 2
	materials = list(MAT_METAL=80)

//Rating 3

/obj/item/weapon/stock_parts/capacitor/super
	name = "super capacitor"
	desc = "A super-high capacity capacitor used in the construction of a variety of devices."
	icon_state = "super_capacitor"
	origin_tech = "powerstorage=5;engineering=4"
	rating = 3
	materials = list(MAT_METAL=50, MAT_GLASS=50)

/obj/item/weapon/stock_parts/scanning_module/phasic
	name = "phasic scanning module"
	desc = "A compact, high resolution phasic scanning module used in the construction of certain devices."
	icon_state = "super_scan_module"
	origin_tech = "magnets=5"
	rating = 3
	materials = list(MAT_METAL=50, MAT_GLASS=20)

/obj/item/weapon/stock_parts/manipulator/pico
	name = "pico-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "pico_mani"
	origin_tech = "materials=5;programming=2"
	rating = 3
	materials = list(MAT_METAL=30)

/obj/item/weapon/stock_parts/micro_laser/ultra
	name = "ultra-high-power micro-laser"
	icon_state = "ultra_high_micro_laser"
	desc = "A tiny laser used in certain devices."
	origin_tech = "magnets=5"
	rating = 3
	materials = list(MAT_METAL=10, MAT_GLASS=20)

/obj/item/weapon/stock_parts/matter_bin/super
	name = "super matter bin"
	desc = "A container designed to hold compressed matter awaiting reconstruction."
	icon_state = "super_matter_bin"
	origin_tech = "materials=5"
	rating = 3
	materials = list(MAT_METAL=80)

//Rating 4

/obj/item/weapon/stock_parts/capacitor/quadratic
	name = "quadratic capacitor"
	desc = "An capacity capacitor used in the construction of a variety of devices."
	icon_state = "quadratic_capacitor"
	origin_tech = "powerstorage=6;materials=5"
	rating = 4
	materials = list(MAT_METAL=50, MAT_GLASS=50)

/obj/item/weapon/stock_parts/scanning_module/triphasic
	name = "triphasic scanning module"
	desc = "A compact, ultra resolution triphasic scanning module used in the construction of certain devices."
	icon_state = "triphasic_scan_module"
	origin_tech = "magnets=6"
	rating = 4
	materials = list(MAT_METAL=50, MAT_GLASS=20)

/obj/item/weapon/stock_parts/manipulator/femto
	name = "femto-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "femto_mani"
	origin_tech = "materials=6;programming=3"
	rating = 4
	materials = list(MAT_METAL=30)

/obj/item/weapon/stock_parts/micro_laser/quadultra
	name = "quad-ultra micro-laser"
	icon_state = "quadultra_micro_laser"
	desc = "A tiny laser used in certain devices."
	origin_tech = "magnets=6"
	rating = 4
	materials = list(MAT_METAL=10, MAT_GLASS=20)

/obj/item/weapon/stock_parts/matter_bin/bluespace
	name = "bluespace matter bin"
	desc = "A container designed to hold compressed matter awaiting reconstruction."
	icon_state = "bluespace_matter_bin"
	origin_tech = "materials=6"
	rating = 4
	materials = list(MAT_METAL=80)

// Subspace stock parts

/obj/item/weapon/stock_parts/subspace/ansible
	name = "subspace ansible"
	icon_state = "subspace_ansible"
	desc = "A compact module capable of sensing extradimensional activity."
	origin_tech = "programming=2;magnets=3;materials=2;bluespace=1"
	materials = list(MAT_METAL=30, MAT_GLASS=10)

/obj/item/weapon/stock_parts/subspace/filter
	name = "hyperwave filter"
	icon_state = "hyperwave_filter"
	desc = "A tiny device capable of filtering and converting super-intense radiowaves."
	origin_tech = "programming=2;magnets=1"
	materials = list(MAT_METAL=30, MAT_GLASS=10)

/obj/item/weapon/stock_parts/subspace/amplifier
	name = "subspace amplifier"
	icon_state = "subspace_amplifier"
	desc = "A compact micro-machine capable of amplifying weak subspace transmissions."
	origin_tech = "programming=2;magnets=2;materials=2;bluespace=1"
	materials = list(MAT_METAL=30, MAT_GLASS=10)

/obj/item/weapon/stock_parts/subspace/treatment
	name = "subspace treatment disk"
	icon_state = "treatment_disk"
	desc = "A compact micro-machine capable of stretching out hyper-compressed radio waves."
	origin_tech = "programming=2;magnets=1;materials=3;bluespace=1"
	materials = list(MAT_METAL=30, MAT_GLASS=10)

/obj/item/weapon/stock_parts/subspace/analyzer
	name = "subspace wavelength analyzer"
	icon_state = "wavelength_analyzer"
	desc = "A sophisticated analyzer capable of analyzing cryptic subspace wavelengths."
	origin_tech = "programming=2;magnets=2;materials=2;bluespace=1"
	materials = list(MAT_METAL=30, MAT_GLASS=10)

/obj/item/weapon/stock_parts/subspace/crystal
	name = "ansible crystal"
	icon_state = "ansible_crystal"
	desc = "A crystal made from pure glass used to transmit laser databursts to subspace."
	origin_tech = "magnets=2;materials=2;bluespace=1"
	materials = list(MAT_GLASS=50)

/obj/item/weapon/stock_parts/subspace/transmitter
	name = "subspace transmitter"
	icon_state = "subspace_transmitter"
	desc = "A large piece of equipment used to open a window into the subspace dimension."
	origin_tech = "magnets=2;materials=2;bluespace=2"
	materials = list(MAT_METAL=50)

/obj/item/weapon/research//Makes testing much less of a pain -Sieve
	name = "research"
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "capacitor"
	desc = "A debug item for research."
	origin_tech = "materials=9;programming=9;magnets=9;powerstorage=9;bluespace=11;combat=9;biotech=9;syndicate=9;engineering=9;plasmatech=9;abductor=9"
