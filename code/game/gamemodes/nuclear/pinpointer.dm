/obj/item/pinpointer/nuke
	var/mode = TRACK_NUKE_DISK

/obj/item/pinpointer/nuke/examine(mob/user)
	..()
	var/msg = "Its tracking indicator reads "
	switch(mode)
		if(TRACK_NUKE_DISK)
			msg += "\"nuclear_disk\"."
		if(TRACK_MALF_AI)
			msg += "\"01000001 01001001\"."
		if(TRACK_INFILTRATOR)
			msg += "\"vasvygengbefuvc\"."
		else
			msg = "Its tracking indicator is blank."
	to_chat(user, msg)
	for(var/obj/machinery/nuclearbomb/bomb in GLOB.machines)
		if(bomb.timing)
			to_chat(user, "Extreme danger. Arming signal detected. Time remaining: [bomb.get_time_left()]")

/obj/item/pinpointer/nuke/process()
	..()
	if(active) // If shit's going down
		for(var/obj/machinery/nuclearbomb/bomb in GLOB.nuke_list)
			if(bomb.timing)
				if(!alert)
					alert = TRUE
					playsound(src, 'sound/items/nuke_toy_lowpower.ogg', 50, 0)
					if(isliving(loc))
						var/mob/living/L = loc
						to_chat(L, "<span class='userdanger'>Your [name] vibrates and lets out a tinny alarm. Uh oh.</span>")

/obj/item/pinpointer/nuke/scan_for_target()
	target = null
	switch(mode)
		if(TRACK_NUKE_DISK)
			var/obj/item/disk/nuclear/N = locate() in GLOB.poi_list
			target = N
		if(TRACK_MALF_AI)
			for(var/V in GLOB.ai_list)
				var/mob/living/silicon/ai/A = V
				if(A.nuking)
					target = A
			for(var/V in GLOB.apcs_list)
				var/obj/machinery/power/apc/A = V
				if(A.malfhack && A.occupier)
					target = A
		if(TRACK_INFILTRATOR)
			target = SSshuttle.getShuttle("syndicate")
	..()

/obj/item/pinpointer/nuke/proc/switch_mode_to(new_mode)
	if(isliving(loc))
		var/mob/living/L = loc
		to_chat(L, "<span class='userdanger'>Your [name] beeps as it reconfigures its tracking algorithms.</span>")
		playsound(L, 'sound/machines/triple_beep.ogg', 50, 1)
	mode = new_mode
	scan_for_target()

/obj/item/pinpointer/nuke/syndicate // Syndicate pinpointers automatically point towards the infiltrator once the nuke is active.
	name = "syndicate pinpointer"
	desc = "A handheld tracking device that locks onto certain signals. It's configured to switch tracking modes once it detects the activation signal of a nuclear device."
	icon_state = "pinpointer_syndicate"

/obj/item/pinpointer/syndicate_cyborg // Cyborg pinpointers just look for a random operative.
	name = "cyborg syndicate pinpointer"
	desc = "An integrated tracking device, jury-rigged to search for living Syndicate operatives."
	flags_1 = NODROP_1

/obj/item/pinpointer/syndicate_cyborg/scan_for_target()
	target = null
	var/list/possible_targets = list()
	var/turf/here = get_turf(src)
	for(var/V in SSticker.mode.syndicates)
		var/datum/mind/M = V
		if(M.current && M.current.stat != DEAD)
			possible_targets |= M.current
	var/mob/living/closest_operative = get_closest_atom(/mob/living/carbon/human, possible_targets, here)
	if(closest_operative)
		target = closest_operative
	..()

/obj/item/pdapinpointer
	name = "pda pinpointer"
	desc = "A pinpointer that has been illegally modified to track the PDA of a crewmember for malicious reasons."
	icon = 'icons/obj/device.dmi'
	icon_state = "pinoff"
	flags_1 = CONDUCT_1
	slot_flags = SLOT_BELT
	w_class = WEIGHT_CLASS_SMALL
	item_state = "electronic"
	throw_speed = 3
	throw_range = 7
	materials = list(MAT_METAL = 500, MAT_GLASS = 250)
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | ACID_PROOF
	var/active = FALSE
	var/used = 0
	var/obj/target = null

/obj/item/pdapinpointer/New()
	..()
	GLOB.pinpointer_list += src

/obj/item/pdapinpointer/Destroy()
	STOP_PROCESSING(SSfastprocess, src)
	GLOB.pinpointer_list -= src
	return ..()

/obj/item/pdapinpointer/attack_self(mob/living/user)
	active = !active
	user.visible_message("<span class='notice'>[user] [active ? "" : "de"]activates their pinpointer.</span>", "<span class='notice'>You [active ? "" : "de"]activate your pinpointer.</span>")
	playsound(user, 'sound/items/Screwdriver2.ogg', 50, 1)
	icon_state = "pin[active ? "onnull" : "off"]"
	if(active)
		START_PROCESSING(SSfastprocess, src)
	else
		STOP_PROCESSING(SSfastprocess, src)

/obj/item/pdapinpointer/proc/point_to_target(atom/target) //If we found what we're looking for, show the distance and direction
	if(!active)
		return
	if(!target)
		return
	var/turf/here = get_turf(src)
	var/turf/there = get_turf(target)
	if(here.z != there.z)
		icon_state = "pinonnull"
		return
	if(here == there)
		icon_state = "pinondirect"
	else
		setDir(get_dir(here, there))
		switch(get_dist(here, there))
			if(1 to 8)
				icon_state = "pinonclose"
			if(9 to 16)
				icon_state = "pinonmedium"
			if(16 to INFINITY)
				icon_state = "pinonfar"
		
/obj/item/pdapinpointer/process()
	if(!active)
		STOP_PROCESSING(SSfastprocess, src)
		return
	point_to_target(target)



/obj/item/pdapinpointer/verb/select_pda()
	set category = "Object"
	set name = "Select pinpointer target"
	set src in view(1)
	if(used)
		if(isliving(loc))
			var/mob/living/L = loc
			L << "<span class='notice'>Target has already been set!</span>"
		return

	var/list/M = list()
	M["Cancel"] = "Cancel"
	var/length = 1
	for (var/obj/item/device/pda/P in world)
		if(P.name != "\improper PDA")
			M[text("([length]) [P.name]")] = P
			length++

	var/t = input("Select pinpointer target. WARNING: Can only set once.") as null|anything in M
	if(t == "Cancel")
		return
	target = M[t]
	if(!target)
		if(isliving(loc))
			var/mob/living/L = loc
			L << "<span class='notice'>Failed to locate [target]!</span>"
		return
	active = 1
	point_to_target(target)
	if(isliving(loc))
		var/mob/living/L = loc
		L << "<span class='notice'>You set the pinpointer to locate [target].</span>"
	used = 1


/obj/item/pdapinpointer/examine(mob/user)
	..()
	if (target)
		if(isliving(loc))
			var/mob/living/L = loc
			L << "<span class='notice'>Tracking [target].</span>"
