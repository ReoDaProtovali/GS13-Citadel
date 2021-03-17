/obj/item/ammo_box/magazine/internal/cylinder/rev38
	name = "detective revolver cylinder"
	ammo_type = /obj/item/ammo_casing/c38
	caliber = list("38")
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/cylinder/rev762
	name = "\improper Nagant revolver cylinder"
	ammo_type = /obj/item/ammo_casing/n762
	caliber = list("n762")
	max_ammo = 7

/obj/item/ammo_box/magazine/internal/cylinder/rus357
	name = "\improper Russian revolver cylinder"
	ammo_type = /obj/item/ammo_casing/a357
	caliber = list("357")
	max_ammo = 6
	multiload = 0

/obj/item/ammo_box/magazine/internal/rus357/Initialize()
	stored_ammo += new ammo_type(src)
	. = ..()

// just to keep consistent with the derringer being on revolver.dm
/obj/item/ammo_box/magazine/internal/cylinder/derringer
	name = "derringer receiver"
	caliber = list("38")
	ammo_type = /obj/item/ammo_casing/c38/lethal	// lets have it start loaded
	max_ammo = 2

// lets not let it reload with speedloadrs, it makes no sense! but maybe later lets allow it?
/obj/item/ammo_box/magazine/internal/cylinder/derringer/attackby(obj/item/A, mob/user, params, silent, replace_spent)
	if(istype(A, /obj/item/ammo_box/))
		return
	. = ..()
