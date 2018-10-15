StoreCurrency = "R$"

storeGroups = {
   {["name"] = GetLabelText("VAULT_WMENUT_8"), ["id"] = "explosivos"},
   {["name"] = GetLabelText("VAULT_WMENUT_2"), ["id"] = "pistolas"},
   {["name"] = GetLabelText("VAULT_WMENUT_7"), ["id"] = "pesadas"},
   {["name"] = GetLabelText("VAULT_WMENUT_9"), ["id"] = "fisico"},
   {["name"] = GetLabelText("VAULT_WMENUT_5"), ["id"] = "rifles"},
   {["name"] = GetLabelText("VAULT_WMENUT_3"), ["id"] = "escopeta"},
   {["name"] = GetLabelText("VAULT_WMENUT_6"), ["id"] = "precisao"},
 }

StoreWeapons = {
	{ ["id"] = "pistolas",
	  ["items"] = {
	    {model="WEAPON_APPISTOL", name="Pistola ap", price = 5000},
	    {model="WEAPON_COMBATPISTOL", name="Pistola de combate", price = 3200},
	    {model="WEAPON_DOUBLEACTION", name="Pistola dupla", price = 5400},
	    {model="WEAPON_HEAVYPISTOL", name="Pistola pesada", price = 3375},
	    {model="WEAPON_REVOLVER", name="Revolver pesado", price = 5400},
	    {model="WEAPON_REVOLVER_MK2", name="Revolver Mk2", price = 5420},
	    {model="WEAPON_MARKSMANPISTOL", name="Pistola do atirador", price = 4350},
	    {model="WEAPON_PISTOL", name="Pistola", price = 2500},
	    {model="WEAPON_PISTOL50", name="Pistola .50", price = 3375},
	    {model="WEAPON_PISTOL_MK2", name="Pistola MK2", price = 3900},
	    {model="WEAPON_SNSPISTOL", name="Pistola semi-automática", price = 2750},
	    {model="WEAPON_SNSPISTOL_MK2", name="Pistola semi-mk2", price = 3900}
	   }
    },
	{ ["id"] = "fisico",
	  ["items"] = {
	    {model="WEAPON_CROWBAR", name="Barra", price = 90},
	    {model="WEAPON_KNIFE", name="Faca", price = 90},
	    {model="WEAPON_HAMMER", name="Martelo", price = 3200},
	    {model="WEAPON_HATCHET", name="Machadinha", price = 3900},
	    {model="WEAPON_PETROLCAN", name="Jarra petróleo", price = 22},
	   }
    },

	{ ["id"] = "rifles",
	  ["items"] = {
	    {model="WEAPON_ASSAULTRIFLE", name="Rifle de assalto", price = 125000},
	    {model="WEAPON_ASSAULTRIFLE_MK2", name="Rifle de assalto Mk2", price = 145000},
	    {model="WEAPON_BULLPUPRIFLE", name="Rifle automático", price = 150000},
	    {model="WEAPON_CARBINERIFLE", name="Carabina rifle", price = 130000},
	    {model="WEAPON_COMPACTRIFLE", name="Rifle compacto", price = 146500},
	    {model="WEAPON_SPECIALCARBINE", name="Carabina especial", price = 146500}
	   }
    },
	{ ["id"] = "explosivos",
	  ["items"] = {
	    {model="WEAPON_GRENADE", name="Granada", price = 15000},
	    {model="WEAPON_MOLOTOV", name="Bomba molotov", price = 30000},
	    {model="WEAPON_PIPEBOMB", name="Bomba cachimbo", price = 50000},
	    {model="WEAPON_PROXMINE", name="Mina de proximidade", price = 67500},
	    {model="WEAPON_STICKYBOMB", name="Bomba pegajosa", price = 45000},
	   }
    },    
	{ ["id"] = "pesadas",
	  ["items"] = {
	    {model="WEAPON_COMPACTLAUNCHER", name="Lançador de granadas compacto", price = 125000},
	    {model="WEAPON_FIREWORK", name="Lançador de fogos", price = 145000},
	    {model="WEAPON_GRENADELAUNCHER", name="Lançador de granadas", price = 165000},
	    {model="WEAPON_HOMINGLAUNCHER", name="Lançador de homing", price=750000},
	    {model="WEAPON_MINIGUN", name="Minigun", price=1000000},
	    {model="WEAPON_RAILGUN", name="Arma lazer", price=1875000},
	    {model="WEAPON_RPG", name="Lançador de foguetes", price=2625000}
	   }
    },
	{ ["id"] = "escopeta",
	  ["items"] = {
	    {model="WEAPON_AUTOSHOTGUN", name="Escopeta de assalto", price = 149000},
	    {model="WEAPON_ASSAULTSHOTGUN", name="Escopeta automática", price = 100000},
	    {model="WEAPON_BULLPUPSHOTGUN", name="Escopeta tiro duplo", price = 80000},
	    {model="WEAPON_HEAVYSHOTGUN", name="Escopeta pesada", price = 135500},
	    {model="WEAPON_MUSKET", name="Mosquete", price = 192600},
	    {model="WEAPON_PUMPSHOTGUN", name="Escopeta semi-automática", price = 35000},
	    {model="WEAPON_PUMPSHOTGUN_MK2",name="Escopeta semi Mk2", price = 38000},
	    {model="WEAPON_SAWNOFFSHOTGUN", name="Escopeta Sawn", price = 3000},
	    {model="WEAPON_DBSHOTGUN", name="Escopeta Dbs", price = 3000}
	   }
    },    
	{ ["id"] = "precisao",
	  ["items"] = {
	    {model="WEAPON_HEAVYSNIPER", name="Rifle precisão pesado", price = 381500},
	    {model="WEAPON_MARKSMANRIFLE", name="Rifle do atirador", price = 157500},
	    {model="WEAPON_MARKSMANRIFLE_MK2", name="Rifle do atirador Mk2", price = 197500},
	    {model="WEAPON_SNIPERRIFLE", name="Rifle de precisão", price = 200000}
	   }
    },
}
