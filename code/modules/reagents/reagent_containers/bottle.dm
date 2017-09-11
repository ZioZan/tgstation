//Not to be confused with /obj/item/reagent_containers/food/drinks/bottle

/obj/item/reagent_containers/glass/bottle
	name = "bottle"
	desc = "A small bottle."
	icon_state = "bottle"
	item_state = "atoxinbottle"
	possible_transfer_amounts = list(5,10,15,25,30)
	volume = 30


/obj/item/reagent_containers/glass/bottle/Initialize()
	. = ..()
	if(!icon_state)
		icon_state = "bottle"
	update_icon()

/obj/item/reagent_containers/glass/bottle/on_reagent_change()
	update_icon()

/obj/item/reagent_containers/glass/bottle/update_icon()
	cut_overlays()
	if(reagents.total_volume)
		var/mutable_appearance/filling = mutable_appearance('icons/obj/reagentfillings.dmi', "[icon_state]-10")

		var/percent = round((reagents.total_volume / volume) * 100)
		switch(percent)
			if(0 to 9)
				filling.icon_state = "[icon_state]-10"
			if(10 to 29)
				filling.icon_state = "[icon_state]25"
			if(30 to 49)
				filling.icon_state = "[icon_state]50"
			if(50 to 69)
				filling.icon_state = "[icon_state]75"
			if(70 to INFINITY)
				filling.icon_state = "[icon_state]100"

		filling.color = mix_color_from_reagents(reagents.reagent_list)
		add_overlay(filling)


/obj/item/reagent_containers/glass/bottle/epinephrine
	name = "epinephrine bottle"
	desc = "A small bottle. Contains epinephrine - used to stabilize patients."
	icon_state = "bottle16"
	list_reagents = list("epinephrine" = 30)

/obj/item/reagent_containers/glass/bottle/toxin
	name = "toxin bottle"
	desc = "A small bottle of toxins. Do not drink, it is poisonous."
	icon_state = "bottle12"
	list_reagents = list("toxin" = 30)

/obj/item/reagent_containers/glass/bottle/cyanide
	name = "cyanide bottle"
	desc = "A small bottle of cyanide. Bitter almonds?"
	icon_state = "bottle12"
	list_reagents = list("cyanide" = 30)

/obj/item/reagent_containers/glass/bottle/spewium
	name = "spewium bottle"
	desc = "A small bottle of spewium."
	icon_state = "bottle12"
	list_reagents = list("spewium" = 30)

/obj/item/reagent_containers/glass/bottle/morphine
	name = "morphine bottle"
	desc = "A small bottle of morphine."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bottle20"
	list_reagents = list("morphine" = 30)

/obj/item/reagent_containers/glass/bottle/chloralhydrate
	name = "Chloral Hydrate Bottle"
	desc = "A small bottle of Choral Hydrate. Mickey's Favorite!"
	icon_state = "bottle20"
	list_reagents = list("chloralhydrate" = 15)

/obj/item/reagent_containers/glass/bottle/charcoal
	name = "antitoxin bottle"
	desc = "A small bottle of charcoal."
	icon_state = "bottle17"
	list_reagents = list("charcoal" = 30)

/obj/item/reagent_containers/glass/bottle/mutagen
	name = "unstable mutagen bottle"
	desc = "A small bottle of unstable mutagen. Randomly changes the DNA structure of whoever comes in contact."
	icon_state = "bottle20"
	list_reagents = list("mutagen" = 30)

/obj/item/reagent_containers/glass/bottle/plasma
	name = "liquid plasma bottle"
	desc = "A small bottle of liquid plasma. Extremely toxic and reacts with micro-organisms inside blood."
	icon_state = "bottle8"
	list_reagents = list("plasma" = 30)

/obj/item/reagent_containers/glass/bottle/synaptizine
	name = "synaptizine bottle"
	desc = "A small bottle of synaptizine."
	icon_state = "bottle20"
	list_reagents = list("synaptizine" = 30)

/obj/item/reagent_containers/glass/bottle/formaldehyde
	name = "formaldehyde bottle"
	desc = "A small bottle of formaldehyde."
	icon_state = "bottle20"
	list_reagents = list("formaldehyde" = 30)

/obj/item/reagent_containers/glass/bottle/ammonia
	name = "ammonia bottle"
	desc = "A small bottle of ammonia."
	icon_state = "bottle20"
	list_reagents = list("ammonia" = 30)

/obj/item/reagent_containers/glass/bottle/diethylamine
	name = "diethylamine bottle"
	desc = "A small bottle of diethylamine."
	icon_state = "bottle17"
	list_reagents = list("diethylamine" = 30)

/obj/item/reagent_containers/glass/bottle/facid
	name = "Fluorosulfuric Acid Bottle"
	desc = "A small bottle. Contains a small amount of Fluorosulfuric Acid"
	icon_state = "bottle17"
	list_reagents = list("facid" = 30)

/obj/item/reagent_containers/glass/bottle/adminordrazine
	name = "Adminordrazine Bottle"
	desc = "A small bottle. Contains the liquid essence of the gods."
	icon = 'icons/obj/drinks.dmi'
	icon_state = "holyflask"
	list_reagents = list("adminordrazine" = 30)

/obj/item/reagent_containers/glass/bottle/capsaicin
	name = "Capsaicin Bottle"
	desc = "A small bottle. Contains hot sauce."
	icon_state = "bottle3"
	list_reagents = list("capsaicin" = 30)

/obj/item/reagent_containers/glass/bottle/frostoil
	name = "Frost Oil Bottle"
	desc = "A small bottle. Contains cold sauce."
	icon_state = "bottle17"
	list_reagents = list("frostoil" = 30)

/obj/item/reagent_containers/glass/bottle/traitor
	name = "syndicate bottle"
	desc = "A small bottle. Contains a random nasty chemical."
	icon = 'icons/obj/chemical.dmi'
	icon_state = "bottle16"
	var/extra_reagent = null

/obj/item/reagent_containers/glass/bottle/traitor/Initialize()
	. = ..()
	extra_reagent = pick("polonium", "histamine", "formaldehyde", "venom", "neurotoxin2", "cyanide")
	reagents.add_reagent("[extra_reagent]", 3)

/obj/item/reagent_containers/glass/bottle/polonium
	name = "polonium bottle"
	desc = "A small bottle. Contains Polonium."
	icon_state = "bottle16"
	list_reagents = list("polonium" = 30)

/obj/item/reagent_containers/glass/bottle/magillitis
	name = "magillitis bottle"
	desc = "A small bottle. Contains a serum known only as 'magillitis'."
	icon_state = "bottle16"
	list_reagents = list("magillitis" = 5)

/obj/item/reagent_containers/glass/bottle/venom
	name = "venom bottle"
	desc = "A small bottle. Contains Venom."
	icon_state = "bottle16"
	list_reagents = list("venom" = 30)

/obj/item/reagent_containers/glass/bottle/neurotoxin2
	name = "neurotoxin bottle"
	desc = "A small bottle. Contains Neurotoxin."
	icon_state = "bottle16"
	list_reagents = list("neurotoxin2" = 30)

/obj/item/reagent_containers/glass/bottle/formaldehyde
	name = "formaldehyde bottle"
	desc = "A small bottle. Contains Formaldehyde."
	icon_state = "bottle16"
	list_reagents = list("formaldehyde" = 30)

/obj/item/reagent_containers/glass/bottle/initropidril
	name = "initropidril bottle"
	desc = "A small bottle. Contains initropidril."
	icon_state = "bottle16"
	list_reagents = list("initropidril" = 30)

/obj/item/reagent_containers/glass/bottle/pancuronium
	name = "pancuronium bottle"
	desc = "A small bottle. Contains pancuronium."
	icon_state = "bottle16"
	list_reagents = list("pancuronium" = 30)

/obj/item/reagent_containers/glass/bottle/sodium_thiopental
	name = "sodium thiopental bottle"
	desc = "A small bottle. Contains sodium thiopental."
	icon_state = "bottle16"
	list_reagents = list("sodium_thiopental" = 30)

/obj/item/reagent_containers/glass/bottle/coniine
	name = "coniine bottle"
	desc = "A small bottle. Contains coniine."
	icon_state = "bottle16"
	list_reagents = list("coniine" = 30)

/obj/item/reagent_containers/glass/bottle/curare
	name = "curare bottle"
	desc = "A small bottle. Contains curare."
	icon_state = "bottle16"
	list_reagents = list("curare" = 30)

/obj/item/reagent_containers/glass/bottle/amanitin
	name = "amanitin bottle"
	desc = "A small bottle. Contains amanitin."
	icon_state = "bottle16"
	list_reagents = list("amanitin" = 30)

/obj/item/reagent_containers/glass/bottle/histamine
	name = "histamine bottle"
	desc = "A small bottle. Contains Histamine."
	icon_state = "bottle16"
	list_reagents = list("histamine" = 30)

/obj/item/reagent_containers/glass/bottle/diphenhydramine
	name = "antihistamine bottle"
	desc = "A small bottle of diphenhydramine."
	icon_state = "bottle20"
	list_reagents = list("diphenhydramine" = 30)

/obj/item/reagent_containers/glass/bottle/potass_iodide
	name = "anti-radiation bottle"
	desc = "A small bottle of potassium iodide."
	icon_state = "bottle11"
	list_reagents = list("potass_iodide" = 30)

/obj/item/reagent_containers/glass/bottle/salglu_solution
	name = "saline-glucose solution bottle"
	desc = "A small bottle of saline-glucose solution."
	icon_state = "bottle1"
	list_reagents = list("salglu_solution" = 30)

/obj/item/reagent_containers/glass/bottle/atropine
	name = "atropine bottle"
	desc = "A small bottle of atropine."
	icon_state = "bottle12"
	list_reagents = list("atropine" = 30)

/obj/item/reagent_containers/glass/bottle/romerol
	name = "romerol bottle"
	desc = "A small bottle of Romerol. The REAL zombie powder."
	icon_state = "bottle12"
	list_reagents = list("romerol" = 30)

/obj/item/reagent_containers/glass/bottle/flu_virion
	name = "Flu virion culture bottle"
	desc = "A small bottle. Contains H13N1 flu virion culture in synthblood medium."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/advance/flu

/obj/item/reagent_containers/glass/bottle/epiglottis_virion
	name = "Epiglottis virion culture bottle"
	desc = "A small bottle. Contains Epiglottis virion culture in synthblood medium."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/advance/voice_change

/obj/item/reagent_containers/glass/bottle/liver_enhance_virion
	name = "Liver enhancement virion culture bottle"
	desc = "A small bottle. Contains liver enhancement virion culture in synthblood medium."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/advance/heal

/obj/item/reagent_containers/glass/bottle/hallucigen_virion
	name = "Hallucigen virion culture bottle"
	desc = "A small bottle. Contains hallucigen virion culture in synthblood medium."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/advance/hallucigen

/obj/item/reagent_containers/glass/bottle/pierrot_throat
	name = "Pierrot's Throat culture bottle"
	desc = "A small bottle. Contains H0NI<42 virion culture in synthblood medium."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/pierrot_throat

/obj/item/reagent_containers/glass/bottle/cold
	name = "Rhinovirus culture bottle"
	desc = "A small bottle. Contains XY-rhinovirus culture in synthblood medium."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/advance/cold

/obj/item/reagent_containers/glass/bottle/retrovirus
	name = "Retrovirus culture bottle"
	desc = "A small bottle. Contains a retrovirus culture in a synthblood medium."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/dna_retrovirus

/obj/item/reagent_containers/glass/bottle/gbs
	name = "GBS culture bottle"
	desc = "A small bottle. Contains Gravitokinetic Bipotential SADS+ culture in synthblood medium."//Or simply - General BullShit
	icon_state = "bottle3"
	amount_per_transfer_from_this = 5
	spawned_disease = /datum/disease/gbs

/obj/item/reagent_containers/glass/bottle/fake_gbs
	name = "GBS culture bottle"
	desc = "A small bottle. Contains Gravitokinetic Bipotential SADS- culture in synthblood medium."//Or simply - General BullShit
	icon_state = "bottle3"
	spawned_disease = /datum/disease/fake_gbs

/obj/item/reagent_containers/glass/bottle/brainrot
	name = "Brainrot culture bottle"
	desc = "A small bottle. Contains Cryptococcus Cosmosis culture in synthblood medium."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/brainrot

/obj/item/reagent_containers/glass/bottle/magnitis
	name = "Magnitis culture bottle"
	desc = "A small bottle. Contains a small dosage of Fukkos Miracos."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/magnitis

/obj/item/reagent_containers/glass/bottle/wizarditis
	name = "Wizarditis culture bottle"
	desc = "A small bottle. Contains a sample of Rincewindus Vulgaris."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/wizarditis

/obj/item/reagent_containers/glass/bottle/anxiety
	name = "Severe Anxiety culture bottle"
	desc = "A small bottle. Contains a sample of Lepidopticides."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/anxiety

/obj/item/reagent_containers/glass/bottle/beesease
	name = "Beesease culture bottle"
	desc = "A small bottle. Contains a sample of invasive Apidae."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/beesease

/obj/item/reagent_containers/glass/bottle/fluspanish
	name = "Spanish flu culture bottle"
	desc = "A small bottle. Contains a sample of Inquisitius."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/fluspanish

/obj/item/reagent_containers/glass/bottle/tuberculosis
	name = "Fungal Tuberculosis culture bottle"
	desc = "A small bottle. Contains a sample of Fungal Tubercle bacillus."
	icon_state = "bottle3"
	spawned_disease = /datum/disease/tuberculosis

/obj/item/reagent_containers/glass/bottle/tuberculosiscure
	name = "BVAK bottle"
	desc = "A small bottle containing Bio Virus Antidote Kit."
	icon_state = "bottle5"
	list_reagents = list("atropine" = 5, "epinephrine" = 5, "salbutamol" = 10, "spaceacillin" = 10)

/obj/item/reagent_containers/glass/bottle/precision
	name = "bottle"
	desc = "A precision bottle."
	possible_transfer_amounts = list(1,2,5,10,15,25,50)
	volume = 50

/obj/item/reagent_containers/glass/bottle/precision/plasma
	name = "liquid plasma bottle"
	desc = "A precision bottle of liquid plasma. Extremely toxic and reacts with micro-organisms inside blood."
	list_reagents = list("plasma" = 50)

/obj/item/reagent_containers/glass/bottle/synaptizine
	name = "synaptizine bottle"
	desc = "A precision bottle of synaptizine."
	list_reagents = list("synaptizine" = 50)

/obj/item/reagent_containers/glass/bottle/precision/mutagen
	name = "unstable mutagen bottle"
	desc = "A precision bottle of unstable mutagen. Randomly changes the DNA structure of whoever comes in contact."
	list_reagents = list("mutagen" = 50)

/obj/item/reagent_containers/glass/bottle/precision/eznutriment
	name = "bottle of E-Z-Nutrient"
	desc = "A precision bottle of e-z-nutrient. Contains a fertilizer that causes mild mutations with each harvest."
	list_reagents = list("eznutriment" = 50)

/obj/item/reagent_containers/glass/bottle/precision/left4zednutriment
	name = "bottle of Left 4 Zed"
	desc = "A precision bottle of left 4 zed. Contains a fertilizer that limits plant yields to no more than one and causes significant mutations in plants."
	list_reagents = list("left4zednutriment" = 50)

/obj/item/reagent_containers/glass/bottle/precision/robustharvestnutriment
	name = "bottle of Robust Harvest"
	desc = "A precision bottle of robust harvest. Contains a fertilizer that doubles the yield of a plant while causing no mutations."
	list_reagents = list("robustharvestnutriment" = 50)

/obj/item/reagent_containers/glass/bottle/precision/plantbgone
	name = "bottle of plant-b-gone"
	desc = "A precision bottle of plant-b-gone. Contains a chemical toxic to plants kills them fast."
	list_reagents = list("plantbgone" = 50)

/obj/item/reagent_containers/glass/bottle/precision/weedkiller
	name = "bottle of weed killer"
	desc = "A precision bottle of weed killer. Contains a herbicide."
	list_reagents = list("weedkiller" = 50)

/obj/item/reagent_containers/glass/bottle/precision/pestkiller
	name = "bottle of pest killer"
	desc = "A precision bottle of pest killer. Contains a pesticide."
	list_reagents = list("pestkiller" = 50)

/obj/item/reagent_containers/glass/bottle/precision/ash
	name = "bottle of ash"
	desc = "A precision bottle of ash. Contains a weak fertilizer that very slightly heals the plant while also killing weeds."
	list_reagents = list("ash" = 50)

/obj/item/reagent_containers/glass/bottle/precision/ammonia
	name = "bottle of ammonia"
	desc = "A precision bottle of ammonia. Contains a fertilizer that slightly heals the plant while also in a sufficient amount able to increase plant yield."
	list_reagents = list("ammonia" = 50)

/obj/item/reagent_containers/glass/bottle/precision/saltpetre
	name = "bottle of saltpetre"
	desc = "A precision bottle of saltpetre. Contains a chemical that very slightly heals the plant while also in a sufficient amount able to increase plant potency and growth rate."
	list_reagents = list("saltpetre" = 50)

/obj/item/reagent_containers/glass/bottle/precision/diethylamine
	name = "bottle of diethylamine"
	desc = "A precision bottle of diethylamine. Contains a strong fertilizer that heals the plant while also killing pests and in a sufficient amount able to increase plant yield at double the rate of ammonia."
	list_reagents = list("diethylamine" = 50)
