/*
//////////////////////////////////////

Augemites

	Noticable.
	Some Resistance.
	Very high stage speed penalty.
	High transmittablity penalty.
	High Level.

BONUS
	Will slowly augment the infected.

//////////////////////////////////////
*/

/datum/symptom/augment

	name = "Augmites"
	stealth = -2
	resistance = 3
	stage_speed = -4
	transmittable = -3
	level = 6
	symptom_delay_min = 18
	symptom_delay_max = 36
	
/datum/symptom/augment/Activate(var/datum/disease/advance/A)
	if(!..())
		return
	var/mob/living/M = A.affected_mob
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
	if(prob(25) && A.stage == 5)
		var/mob/living/carbon/human/M = A.affected_mob
		var/obj/item/bodypart/L = M.get_bodypart(pick("chest", "head", "l_leg", "r_leg", "l_arm", "r_arm"))
		if(L.status == ORGAN_ORGANIC)
			M << "<span class='notice'>Your [L.name] feels hard and heavy.</span>"
			L.change_bodypart_status(ORGAN_ROBOTIC, 1)
	return