return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['uang_merah'] = {
		label = 'Uang Merah',
		weight = 0,
		stack = true,
		rarity = 'rare'
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['money'] = {
		label = 'Money',
	},
	['cloth'] = {
        label = 'Clothing',
        consume = 0,
    },
    ['id_card'] = {
        label = 'Identification Card',
    },

    ['driver_license'] = {
        label = 'Drivers License',
    },

    ['weaponlicense'] = {
        label = 'Weapon License',
    },

    ['lawyerpass'] = {
        label = 'Lawyer Pass',
    },

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

    ['radio'] = {
        label = 'Radio',
        weight = 1000,
        allowArmed = true,
        consume = 0,
        client = {
            event = 'mm_radio:client:use'
        }
    },
	
	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		rarity = 'epic',
		client = {
			image = "armor.png"
		}
	},

	['armour_plate'] = {
		label = "Armor Plate",
		weight = 1500,
		stack = true,
		rarity = 'rare',
		client = {
			image = "armor_plate.png",
		}
	},
	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		rarity = 'uncommon',
		client = {
			image = 'card_bank.png'
		}
	},
	['backpack'] = {
		label = 'Small Backpack',
		weight = 220,
		bp_weight = 40, -- 40kg capacity
		bp_slot = 20,   -- 20 slots
		backpack = true, -- Identifies as backpack
		stack = false,
		close = true,
		rarity = 'uncommon',
		description = 'A small backpack for carrying basic items.',
		client = {
			image = 'backpack.png',
		}
	},
	['backpack_medium'] = {
		label = 'Medium Backpack',
		weight = 350,
		bp_weight = 60, -- 60kg capacity
		bp_slot = 30,   -- 30 slots
		backpack = true,
		stack = false,
		close = true,
		rarity = 'uncommon',
		description = 'A medium-sized backpack with more storage space.',
		client = {
			image = 'backpack.png',
		}
	},
	['backpack_large'] = {
		label = 'Large Backpack',
		weight = 500,
		bp_weight = 80, -- 80kg capacity
		bp_slot = 40,   -- 40 slots
		backpack = true, -- Simple boolean to identify as backpack
		stack = false,
		close = true,
		rarity = 'rare',
		description = 'A large backpack for extended trips and heavy loads.',
		client = {
			image = 'backpack.png',
		}
	},
	['tactical_backpack'] = {
		label = 'Tactical Backpack',
		weight = 650,
		bp_weight = 100, -- 100kg capacity
		bp_slot = 50,    -- 50 slots
		backpack = true, -- Identifies as backpack
		stack = false,
		close = true,
		rarity = 'epic',
		description = 'A military-grade tactical backpack with maximum storage capacity.',
		client = {
			image = 'backpack.png',
		}
	},
	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},
	['iron'] = {
        label = 'Iron',
        weight = 100,
    },

    ['copper'] = {
        label = 'Copper',
        weight = 100,
    },

    ['aluminium'] = {
        label = 'Aluminium',
        weight = 100,
    },

    ['plastic'] = {
        label = 'Plastic',
        weight = 100,
    },

    ['glass'] = {
        label = 'Glass',
        weight = 100,
    },

    ['gatecrack'] = {
        label = 'Gatecrack',
        weight = 1000,
    },

    ['cryptostick'] = {
        label = 'Crypto Stick',
        weight = 100,
    },

    ['trojan_usb'] = {
        label = 'Trojan USB',
        weight = 100,
    },

    ['toaster'] = {
        label = 'Toaster',
        weight = 5000,
    },

    ['small_tv'] = {
        label = 'Small TV',
        weight = 100,
    },

    ['security_card_01'] = {
        label = 'Security Card A',
        weight = 100,
    },

    ['security_card_02'] = {
        label = 'Security Card B',
        weight = 100,
    },

    ['drill'] = {
        label = 'Drill',
        weight = 5000,
    },

    ['thermite'] = {
        label = 'Thermite',
        weight = 1000,
    },

    ['diving_gear'] = {
        label = 'Diving Gear',
        weight = 30000,
    },

    ['diving_fill'] = {
        label = 'Diving Tube',
        weight = 3000,
    },

    ['antipatharia_coral'] = {
        label = 'Antipatharia',
        weight = 1000,
    },

    ['dendrogyra_coral'] = {
        label = 'Dendrogyra',
        weight = 1000,
    },

    ['jerry_can'] = {
        label = 'Jerrycan',
        weight = 3000,
    },

    -- ['nitrous'] = {
    --     label = 'Nitrous',
    --     weight = 1000,
    -- },

    ['wine'] = {
        label = 'Wine',
        weight = 500,
    },

    ['grape'] = {
        label = 'Grape',
        weight = 10,
    },

    ['grapejuice'] = {
        label = 'Grape Juice',
        weight = 200,
    },

    ['coffee'] = {
        label = 'Coffee',
        weight = 200,
    },

    ['vodka'] = {
        label = 'Vodka',
        weight = 500,
    },

    ['whiskey'] = {
        label = 'Whiskey',
        weight = 200,
    },

    ['beer'] = {
        label = 'beer',
        weight = 200,
    },

    ['sandwich'] = {
        label = 'beer',
        weight = 200,
    },

    ['walking_stick'] = {
        label = 'Walking Stick',
        weight = 1000,
    },

    ['lighter'] = {
        label = 'Lighter',
        weight = 200,
    },

    ['binoculars'] = {
        label = 'Binoculars',
        weight = 800,
    },

    ['stickynote'] = {
        label = 'Sticky Note',
        weight = 0,
    },

    ['empty_evidence_bag'] = {
        label = 'Empty Evidence Bag',
        weight = 200,
    },

    ['filled_evidence_bag'] = {
        label = 'Filled Evidence Bag',
        weight = 200,
    },

    ['harness'] = {
        label = 'Harness',
        weight = 200,
    },

    ['handcuffs'] = {
        label = 'Handcuffs',
        weight = 200,
    },

	['veh_package'] = {
		label = "Package",
		weight = 1000,
		client = {
			image = "vehicle_package_2.png",
			event = "SK-Chopping:CL:SDOIAOIUNWIDUAIODBANLSDDD"
		},
		rarity = "uncommon"
	},

	['weedseeds'] = {
		label = "Weed Seeds",
		weight = 100,
		client = {
			image = "seeds_weed_2c.png",
		},
		rarity = "uncommon"
	},
	
	['easychopcontract'] = {
		label = "Easy Scrap Contract",
		weight = 0,
		client = {
			image = "scrap_contract_easy.png",
		},
		rarity = "rare"
	},
	
	['mediumchopcontract'] = {
		label = "Medium Scrap Contract",
		weight = 0,
		client = {
			image = "scrap_contract_medium.png",
		},
		rarity = "epic"
	},
	
	['hardchopcontract'] = {
		label = "Hard Scrap Contract",
		weight = 0,
		client = {
			image = "scrap_contract_hard.png",
		},
		rarity = "mythic"
	},
	['repairkit'] = {
        label = 'Repairkit',
        weight = 2500,
        stack = true,
        close = true,
        description = 'A nice toolbox with stuff to repair your vehicle',
        client = {
            image = 'repairkit.png',
        },
    },

    ['cleaningkit'] = {
        label = 'Cleaning Kit',
        weight = 250,
        stack = true,
        close = true,
        description = 'A microfiber cloth with some soap will let your car sparkle again!',
        client = {
            image = 'cleaningkit.png',
        },
    },

    ['tyrekit'] = {
        label = 'Tyre Kit',
        weight = 250,
        stack = true,
        close = true,
        description = 'A tyre kit with some fixation stuffs for your tyre!',
        client = {
            image = 'tyrekit.png',
        },
    },

    ['wheel'] = {
        label = 'Wheel',
        weight = 250,
        stack = true,
        close = true,
        description = 'A wheel to replace your old one with brand new one!',
        client = {
            image = 'wheel.png',
        },
    },

    ['tuningtablet'] = {
        label = 'Tuning Tablet',
        weight = 2500,
        stack = true,
        close = true,
        description = 'Tune vehicle with this tablet',
        client = {
            image = 'tuningtablet.png',
        },
    },

    ['nitrous'] = {
        label = 'Nitrous',
        weight = 2500,
        stack = true,
        close = true,
        description = 'I am speed',
        client = {
            image = 'nitrous.png',
        },
    },

    ['plate'] = {
        label = 'Plate',
        weight = 2500,
        stack = true,
        close = true,
        description = 'Fancy plate for identification',
        client = {
            image = 'plate.png',
        },
    },
    ['carlift'] ={
    label = 'Car Lift',
    weight = 2500,
    stack = true,
    close = true,
    description = 'Car lift machine placement',
    client = {
        image = 'carlift.png',
        use = true
        },
    },
    ['essence'] = {
    label = 'Essence',
    weight = 1000,
    stack = true,
    close = true,
    description = 'A can of vehicle fuel',
    client = {
        image = 'essence.png',
        use = true
        }
    },
    ['screwdriverset'] = {
    label = 'Screwdriver Set',
    weight = 500,
    stack = true,
    close = true,
    description = 'A handy tool for repairs or breaking into things',
    client = {
        image = 'screwdriver.png',
        use = true
        }
    },
    ['recyclablematerial'] = {
        label = "Recycle Box",
        weight = 100,
        stack = true,
        close = false,
        description = "A box of Recyclable Materials",
        client = {
            image = "recyclablematerial.png"
        }
    },

    ['bottle'] = {
        label = "Empty Bottle",
        weight = 10,
        stack = true,
        close = false,
        description = "A glass bottle",
        client = {
            image = "bottle.png"
        }
    },

    ['can'] = {
        label = "Empty Can",
        weight = 10,
        stack = true,
        close = false,
        description = "An empty can, good for recycling",
        client = {
            image = "can.png"
        }
    },
	['plastic'] = {
        label = "Plastic",
        weight = 100,
        stack = true,
        close = false,
        description = "RECYCLE! - Greta Thunberg 2019",
        client = {
            image = "plastic.png"
        }
    },

    ['metalscrap'] = {
        label = "Metal Scrap",
        weight = 100,
        stack = true,
        close = false,
        description = "You can probably make something nice out of this",
        client = {
            image = "metalscrap.png"
        }
    },

    ['copper']= {
        label = "Copper",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "copper.png"
        }
    },

    ['aluminum'] = {
        label = "Aluminium",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "aluminum.png"
        }
    },

    ['aluminumoxide'] = {
        label = "Aluminium Powder",
        weight = 100,
        stack = true,
        close = false,
        description = "Some powder to mix with",
        client = {
            image = "aluminumoxide.png"
        }
    },

    ['iron'] = {
        label = "Iron",
        weight = 100,
        stack = true,
        close = false,
        description = "Handy piece of metal that you can probably use for something",
        client = {
            image = "iron.png"
        }
    },

    ['ironoxide'] = {
        label = "Iron Powder",
        weight = 100,
        stack = true,
        close = false,
        description = "Some powder to mix with.",
        client = {
            image = "ironoxide.png"
        }
    },

    ['steel'] = {
        label = "Steel",
        weight = 100,
        stack = true,
        close = false,
        description = "Nice piece of metal that you can probably use for something",
        client = {
            image = "steel.png"
        }
    },

    ['rubber'] = {
        label = "Rubber",
        weight = 100,
        stack = true,
        close = false,
        description = "Rubber, I believe you can make your own rubber ducky with it :D",
        client = {
            image = "rubber.png"
        }
    },

    ['glass'] = {
        label = "Glass",
        weight = 100,
        stack = true,
        close = false,
        description = "It is very fragile, watch out",
        client = {
            image = "glass.png"
        }
    },
     ['ls_pickaxe'] = {
    label = 'Pickaxe',
    weight = 100
    },

    ['ls_copper_pickaxe'] = {
    label = 'Copper Pickaxe',
    weight = 100
    },

    ['ls_iron_pickaxe'] = {
    label = 'Iron Pickaxe',
    weight = 100
    },

    ['ls_silver_pickaxe'] = {
    label = 'Silver Pickaxe',
    weight = 100
    },

    ['ls_gold_pickaxe'] = {
    label = 'Gold Pickaxe',
    weight = 100
    },

    ['ls_copper_ore'] = {
    label = 'Copper Ore',
    weight = 100
    },

    ['ls_coal_ore'] = {
    label = 'Coal Ore',
    weight = 100    
    },

    ['ls_iron_ore'] = {
    label = 'Iron Ore',
    weight = 100
    },

    ['ls_silver_ore'] = {
    label = 'Silver Ore',
    weight = 100
    },

    ['ls_gold_ore'] = {
    label = 'Gold Ore',
    weight = 100
    },

    ['ls_copper_ingot'] = {
    label = 'Copper Ingot',
    weight = 500
    },

    ['ls_iron_ingot'] = {
    label = 'Iron Ingot',
    weight = 500
    },

    ['ls_silver_ingot'] = {
    label = 'Silver Ingot',
    weight = 500
    },

    ['ls_gold_ingot'] = {
    label = 'Gold Ingot',
    weight = 500
    },
    -- Burgershot Items (OX Inventory Format)

['burgershot_bagbig'] = {
    label = 'Big Size Package',
    weight = 100,
    stack = false,
    close = true,
    description = '1x Big King, 1x Big Size Cola, 1x Big Size Patato',
    client = { image = 'burgershot_bagbig.png' }
},

['burgershot_bigking'] = {
    label = 'Big King Burger',
    weight = 100,
    stack = false,
    close = true,
    description = 'Big King',
    client = { image = 'burgershot_bigking.png' }
},

['burgershot_colab'] = {
    label = 'Big Size Cola',
    weight = 100,
    stack = false,
    close = true,
    description = 'Big Size Cola',
    client = { image = 'burgershot_colab.png' }
},

['burgershot_patatob'] = {
    label = 'Big Size Patato',
    weight = 100,
    stack = false,
    close = true,
    description = 'Big Size Patato',
    client = { image = 'burgershot_patatob.png' }
},

-- Small Size
['burgershot_bagsmall'] = {
    label = 'Small Size Package',
    weight = 100,
    stack = false,
    close = true,
    description = '1x Bleeder Burger, 1x Small Size Cola, 1x Small Size Patato',
    client = { image = 'burgershot_bagsmall.png' }
},

['burgershot_bleeder'] = {
    label = 'Bleeder Burger',
    weight = 100,
    stack = false,
    close = true,
    description = 'Bleeder Burger',
    client = { image = 'burgershot_bleeder.png' }
},

['burgershot_colas'] = {
    label = 'Small Size Cola',
    weight = 100,
    stack = false,
    close = true,
    description = 'Small Size Cola',
    client = { image = 'burgershot_colas.png' }
},

['burgershot_patatos'] = {
    label = 'Small Size Patato',
    weight = 100,
    stack = false,
    close = true,
    description = 'Small Size Patato',
    client = { image = 'burgershot_patatos.png' }
},

-- Goat Menu
['burgershot_baggoat'] = {
    label = 'Goat Menu Package',
    weight = 100,
    stack = false,
    close = true,
    description = '1x Goat Wrap, 1x Big Size Cola, 1x Shot Nuggets, 1x Shot Rings',
    client = { image = 'burgershot_baggoat.png' }
},

['burgershot_goatwrap'] = {
    label = 'Goat Wrap',
    weight = 100,
    stack = false,
    close = true,
    description = 'Goat Wrap',
    client = { image = 'burgershot_goatwrap.png' }
},

['burgershot_shotnuggets'] = {
    label = 'Shot Nuggets',
    weight = 100,
    stack = false,
    close = true,
    description = 'Shot Nuggets',
    client = { image = 'burgershot_shotnuggets.png' }
},

['burgershot_shotrings'] = {
    label = 'Shot Rings',
    weight = 100,
    stack = false,
    close = true,
    description = 'Shot Rings',
    client = { image = 'burgershot_shotrings.png' }
},

-- Coffee Menu
['burgershot_bagcoffe'] = {
    label = 'Coffee Package',
    weight = 100,
    stack = false,
    close = true,
    description = '1x Coffee, 1x Macaroon',
    client = { image = 'burgershot_bagcoffe.png' }
},

['burgershot_coffee'] = {
    label = 'Burger Shot Coffee',
    weight = 100,
    stack = false,
    close = true,
    description = 'Burger Shot Coffee',
    client = { image = 'burgershot_coffee.png' }
},

['burgershot_macaroon'] = {
    label = 'Macaroon',
    weight = 100,
    stack = false,
    close = true,
    description = 'Macaroon',
    client = { image = 'burgershot_macaroon.png' }
},

-- Toys
['burgershot_toy1'] = {
    label = 'Burger Shot Toy',
    weight = 100,
    stack = false,
    close = true,
    description = 'Burger Shot Toy',
    client = { image = 'burgershot_toy1.png' }
},

['burgershot_toy2'] = {
    label = 'Burger Shot Toy',
    weight = 100,
    stack = false,
    close = true,
    description = 'Burger Shot Toy',
    client = { image = 'burgershot_toy2.png' }
},

['burgershot_toy3'] = {
    label = 'Burger Shot Toy',
    weight = 100,
    stack = false,
    close = true,
    description = 'Burger Shot Toy',
    client = { image = 'burgershot_toy3.png' }
},

['burgershot_toy4'] = {
    label = 'Burger Shot Toy',
    weight = 100,
    stack = false,
    close = true,
    description = 'Burger Shot Toy',
    client = { image = 'burgershot_toy4.png' }
},

['burgershot_toy5'] = {
    label = 'Burger Shot Toy',
    weight = 100,
    stack = false,
    close = true,
    description = 'Burger Shot Toy',
    client = { image = 'burgershot_toy5.png' }
},

['burgershot_toy6'] = {
    label = 'Burger Shot Toy',
    weight = 100,
    stack = false,
    close = true,
    description = 'Burger Shot Toy',
    client = { image = 'burgershot_toy6.png' }
},

-- Fridge Items
['burgershot_tomato'] = {
    label = 'Tomato',
    weight = 100,
    stack = false,
    close = true,
    description = 'Tomato',
    client = { image = 'burgershot_tomato.png' }
},

['burgershot_cheddar'] = {
    label = 'Cheddar',
    weight = 100,
    stack = false,
    close = true,
    description = 'Cheddar',
    client = { image = 'burgershot_cheddar.png' }
},

['burgershot_curly'] = {
    label = 'Curly',
    weight = 100,
    stack = false,
    close = true,
    description = 'Curly',
    client = { image = 'burgershot_curly.png' }
},

['burgershot_sauce'] = {
    label = 'Sauce',
    weight = 100,
    stack = false,
    close = true,
    description = 'Sauce',
    client = { image = 'burgershot_sauce.png' }
},

['burgershot_bread'] = {
    label = 'Bread',
    weight = 100,
    stack = false,
    close = true,
    description = 'Bread',
    client = { image = 'burgershot_bread.png' }
},

['burgershot_lavash'] = {
    label = 'Lavash',
    weight = 100,
    stack = false,
    close = true,
    description = 'Lavash',
    client = { image = 'burgershot_lavash.png' }
},

['burgershot_bigcardboard'] = {
    label = 'Big Size Cardboard',
    weight = 100,
    stack = false,
    close = true,
    description = 'Big Size Cardboard',
    client = { image = 'burgershot_bigcardboard.png' }
},

['burgershot_smallcardboard'] = {
    label = 'Small Size Cardboard',
    weight = 100,
    stack = false,
    close = true,
    description = 'Small Size Cardboard',
    client = { image = 'burgershot_smallcardboard.png' }
},

['burgershot_smallemptyglass'] = {
    label = 'Small Size Empty Glass',
    weight = 100,
    stack = false,
    close = true,
    description = 'Small Size Empty Glass',
    client = { image = 'burgershot_smallemptyglass.png' }
},

['burgershot_bigemptyglass'] = {
    label = 'Big Size Empty Glass',
    weight = 100,
    stack = false,
    close = true,
    description = 'Big Size Empty Glass',
    client = { image = 'burgershot_bigemptyglass.png' }
},

['burgershot_coffeeemptyglass'] = {
    label = 'Coffee Empty Glass',
    weight = 100,
    stack = false,
    close = true,
    description = 'Coffee Empty Glass',
    client = { image = 'burgershot_coffeeemptyglass.png' }
},

['burgershot_frozenmeat'] = {
    label = 'Frozen Meat',
    weight = 100,
    stack = false,
    close = true,
    description = 'Frozen Meat',
    client = { image = 'burgershot_frozenmeat.png' }
},

['burgershot_frozenrings'] = {
    label = 'Frozen Rings',
    weight = 100,
    stack = false,
    close = true,
    description = 'Frozen Rings',
    client = { image = 'burgershot_frozenrings.png' }
},

['burgershot_frozennuggets'] = {
    label = 'Frozen Nuggets',
    weight = 100,
    stack = false,
    close = true,
    description = 'Frozen Nuggets',
    client = { image = 'burgershot_frozennuggets.png' }
},

['burgershot_smallfrozenpotato'] = {
    label = 'Small Size Frozen Potato',
    weight = 100,
    stack = false,
    close = true,
    description = 'Small Size Frozen Potato',
    client = { image = 'burgershot_smallfrozenpotato.png' }
},

['burgershot_bigfrozenpotato'] = {
    label = 'Big Size Frozen Potato',
    weight = 100,
    stack = false,
    close = true,
    description = 'Big Size Frozen Potato',
    client = { image = 'burgershot_bigfrozenpotato.png' }
},

['burgershot_meat'] = {
    label = 'Meat',
    weight = 100,
    stack = false,
    close = true,
    description = 'Meat',
    client = { image = 'burgershot_meat.png' }
},

-- Ice Cream
['burgershot_thesmurfsicecream'] = {
    label = 'The Smurfs Ice Cream',
    weight = 100,
    stack = false,
    close = true,
    description = 'The Smurfs Ice Cream',
    client = { image = 'burgershot_thesmurfsicecream.png' }
},

['burgershot_smurfetteicecream'] = {
    label = 'Smurfette Ice Cream',
    weight = 100,
    stack = false,
    close = true,
    description = 'Smurfette Ice Cream',
    client = { image = 'burgershot_smurfetteicecream.png' }
},

['burgershot_matchaicecream'] = {
    label = 'Matcha Ice Cream',
    weight = 100,
    stack = false,
    close = true,
    description = 'Matcha Ice Cream',
    client = { image = 'burgershot_matchaicecream.png' }
},

['burgershot_ubeicecream'] = {
    label = 'Ube Ice Cream',
    weight = 100,
    stack = false,
    close = true,
    description = 'Ube Ice Cream',
    client = { image = 'burgershot_ubeicecream.png' }
},

['burgershot_unicornicecream'] = {
    label = 'Unicorn Ice Cream',
    weight = 100,
    stack = false,
    close = true,
    description = 'Unicorn Ice Cream',
    client = { image = 'burgershot_unicornicecream.png' }
},

['burgershot_vanillaicecream'] = {
    label = 'Vanilla Ice Cream',
    weight = 100,
    stack = false,
    close = true,
    description = 'Vanilla Ice Cream',
    client = { image = 'burgershot_vanillaicecream.png' }
},

['burgershot_chocolateicecream'] = {
    label = 'Chocolate Ice Cream',
    weight = 100,
    stack = false,
    close = true,
    description = 'Chocolate Ice Cream',
    client = { image = 'burgershot_chocolateicecream.png' }
},

['burgershot_strawberryicecream'] = {
    label = 'Strawberry Ice Cream',
    weight = 100,
    stack = false,
    close = true,
    description = 'Strawberry Ice Cream',
    client = { image = 'burgershot_strawberryicecream.png' }
},

['burgershot_icecreamcone'] = {
    label = 'Empty Cone',
    weight = 100,
    stack = false,
    close = true,
    description = 'Cone',
    client = { image = 'burgershot_icecreamcone.png' 
        }
    },
    -- Mechanic Essentials
	mechanic_tools = {
		label = 'Mechanic Tools',
		weight = 0,
		stack = false,
		close = true,
		description = 'Needed for vehicle repairs',
		client = { usable = true },
	},

	toolbox = {
		label = 'Toolbox',
		weight = 0,
		stack = false,
		close = true,
		description = 'Needed for Performance part removal',
		client = { usable = true },
	},

	ducttape = {
		label = 'Duct Tape',
		weight = 0,
		stack = true,
		close = true,
		description = 'Good for quick fixes',
		client = { usable = true },
	},

	mechboard = {
		label = 'Mechanic Sheet',
		weight = 0,
		stack = false,
		close = true,
		description = '',
		client = { usable = true },
	},

	-- Performance
	turbo = {
		label = 'Supercharger Turbo',
		weight = 0,
		stack = true,
		close = true,
		description = "Who doesn't need a 65mm Turbo??",
		client = { usable = true },
	},

	car_armor = {
		label = 'Vehicle Armor',
		weight = 0,
		stack = false,
		close = true,
		description = '',
		client = { usable = true },
	},

	nos = {
		label = 'NOS Bottle',
		weight = 0,
		stack = false,
		close = true,
		description = 'A full bottle of NOS',
		client = { usable = true },
	},
    -- ['nos'] = {
    -- label = 'NOS Bottle',
    -- weight = 2000,
    -- stack = false,
    -- close = true,
    -- client = {
    --     disable = { move = true, car = true, combat = true },
    --     usetime = 3500,
    --     cancel = true,
    --     export = 'ND_Nitro.nos'
    --     }
    -- },

	noscan = {
		label = 'Empty NOS Bottle',
		weight = 0,
		stack = true,
		close = false,
		description = 'An Empty bottle of NOS',
		client = { usable = false },
	},

	noscolour = {
		label = 'NOS Colour Injector',
		weight = 0,
		stack = true,
		close = false,
		description = 'Make that purge spray',
		client = { usable = true },
	},

	engine1 = {
		label = 'Shonen Engine',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	engine2 = {
		label = 'V8 Engine',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	engine3 = {
		label = 'V10 Engine',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	engine4 = {
		label = 'V12 Engine',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	transmission1 = {
		label = 'Transmission Lvl 1',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	transmission2 = {
		label = 'Transmission Lvl 2',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	transmission3 = {
		label = 'Transmission Lvl 3',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	brakes1 = {
		label = 'Performance Brakes',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	brakes2 = {
		label = 'GT Big Brakes',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	brakes3 = {
		label = 'Competition Brakes',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	suspension1 = {
		label = 'Lowered Suspension',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	suspension2 = {
		label = 'Street Suspension',
		weight = 0,
		stack = false,
		close = true,
		description = 'Street Racing level Suspension',
		client = { usable = true },
	},

	suspension3 = {
		label = 'Racing Suspension',
		weight = 0,
		stack = false,
		close = true,
		description = 'Street Racing level Suspension',
		client = { usable = true },
	},

	suspension4 = {
		label = 'Rally Suspension',
		weight = 0,
		stack = false,
		close = true,
		description = 'Street Racing level Suspension',
		client = { usable = true },
	},

	bprooftires = {
		label = 'Bulletproof Tires',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	drifttires = {
		label = 'Drift Tires',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	-- Cosmetics
	underglow_controller = {
		label = 'Neon Controller',
		weight = 0,
		stack = true,
		close = true,
		description = 'RGB LED Vehicle Remote',
		client = { usable = true },
	},

	headlights = {
		label = 'Xenon Headlights',
		weight = 0,
		stack = false,
		close = true,
		description = '8k HID headlights',
		client = { usable = true },
	},

	tint_supplies = {
		label = 'Tint Supplies',
		weight = 0,
		stack = true,
		close = true,
		description = 'Supplies for window tinting',
		client = { usable = true },
	},

	customplate = {
		label = 'Customized Plates',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	hood = {
		label = 'Vehicle Hood',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	roof = {
		label = 'Vehicle Roof',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	spoiler = {
		label = 'Vehicle Spoiler',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	bumper = {
		label = 'Vehicle Bumper',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	skirts = {
		label = 'Vehicle Skirts',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	exhaust = {
		label = 'Vehicle Exhaust',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	seat = {
		label = 'Seat Cosmetics',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	rollcage = {
		label = 'Roll Cage',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	rims = {
		label = 'Custom Wheel Rims',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	livery = {
		label = 'Livery Roll',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	paintcan = {
		label = 'Vehicle Spray Can',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	tires = {
		label = 'Drift Smoke Tires',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	horn = {
		label = 'Custom Vehicle Horn',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	internals = {
		label = 'Internal Cosmetics',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},

	externals = {
		label = 'Exterior Cosmetics',
		weight = 0,
		stack = false,
		close = true,
		client = { usable = true },
	},
    -- License
    ['lisensi_memasak'] = {
        label = 'SIM 1',
        weight = 0,
        stack = true,
        close = true,
        description = 'Surat Izin Memasak 1',
        client = { image = 'simm1.png' }
    },

    ['lisensi_memasak2'] = {
        label = 'SIM 2',
        weight = 0,
        stack = true,
        close = true,
        description = 'Surat Izin Memasak 2',
        client = { image = 'simm2.png' }
    },

    -- 🍛 Food
    ['resto-rendang'] = {
        label = 'Rendang',
        weight = 250,
        stack = true,
        close = true,
        description = 'Rendang Sapi.',
        client = {
            image = 'rendang.png',
            usetime = 2500,
            export = 'qbx_consumables.eat'
        }
    },

    ['resto-ayampop'] = {
        label = 'Ayam Pop',
        weight = 300,
        stack = true,
        close = true,
        description = 'Ayam POP.',
        client = {
            image = 'ayampop.png',
            usetime = 2500,
            export = 'qbx_consumables.eat'
        }
    },

    ['resto-baso'] = {
        label = 'Baso',
        weight = 310,
        stack = true,
        close = true,
        description = 'Baso.',
        client = {
            image = 'baso.png',
            usetime = 2500,
            export = 'qbx_consumables.eat'
        }
    },

    ['resto-soto'] = {
        label = 'Soto',
        weight = 2500,
        stack = true,
        close = true,
        description = 'Soto.',
        client = {
            image = 'soto.png',
            usetime = 2500,
            export = 'qbx_consumables.eat'
        }
    },

    ['resto-seblak'] = {
        label = 'Seblak',
        weight = 125,
        stack = true,
        close = true,
        description = 'Seblak.',
        client = {
            image = 'seblak.png',
            usetime = 2500,
            export = 'qbx_consumables.eat'
        }
    },

    ['resto-nasgor'] = {
        label = 'Nasi Goreng',
        weight = 125,
        stack = true,
        close = true,
        description = 'Nasi Goreng.',
        client = {
            image = 'nasgor.png',
            usetime = 2500,
            export = 'qbx_consumables.eat'
        }
    },

    -- ☕ Drinks
    ['resto-escoklat'] = {
        label = 'Es Coklat',
        weight = 125,
        stack = true,
        close = true,
        description = 'Es Coklat.',
        client = {
            image = 'escoklat.png',
            usetime = 2500,
            export = 'qbx_consumables.drink'
        }
    },

    ['resto-kopi'] = {
        label = 'Kopi',
        weight = 125,
        stack = true,
        close = true,
        description = 'Kopi.',
        client = {
            image = 'kopi.png',
            usetime = 2500,
            export = 'qbx_consumables.drink'
        }
    },

    ['resto-esteh'] = {
        label = 'Es Teh',
        weight = 125,
        stack = true,
        close = true,
        description = 'Es Teh.',
        client = {
            image = 'esteh.png',
            usetime = 2500,
            export = 'qbx_consumables.drink'
        }
    },

    ['resto-jusjeruk'] = {
        label = 'Jus Jeruk',
        weight = 125,
        stack = true,
        close = true,
        description = 'Jus Jeruk.',
        client = {
            image = 'jusjeruk.png',
            usetime = 2500,
            export = 'qbx_consumables.drink'
        }
    },

    ['resto-jusapel'] = {
        label = 'Jus Apel',
        weight = 125,
        stack = true,
        close = true,
        description = 'Jus Apel.',
        client = {
            image = 'jusapel.png',
            usetime = 2500,
            export = 'qbx_consumables.drink'
        }
    },
    ['resto-susumochi'] = {
        label = 'Susu Mochi',
        weight = 125,
        stack = true,
        close = true,
        description = 'Susu Mochi.',
        client = {
            image = 'susumochi.png',
            usetime = 2500,
            export = 'qbx_consumables.drink'
        }
    },
    ['burgerxl'] = {
        label = 'Three Patty Burger',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'burgerxl.png' }
    },
    ['chickenburger'] = {
        label = 'Chicken Burger',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'chickenburger.png' }
    },
    ['chickenpotato'] = {
        label = 'Chicken Potato',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'chickenpotato.png' }
    },
    ['crispychicken'] = {
        label = 'Crispy Chicken',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'crispychicken.png' }
    },
    ['tenderloin'] = {
        label = 'Tenderloin',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'tenderloin.png' }
    },
    ['onionring'] = {
        label = 'Onion Ring',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'onionring.png' }
    },
    ['sandwich'] = {
        label = 'Sandwich',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice bread for your stomach',
        client = { image = 'sandwich.png' }
    },
    ['pizza'] = {
        label = 'Pizza',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice bread for your stomach',
        client = { image = 'pizza.png' }
    },

    ['cookie'] = {
        label = 'Cookie',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'cookie.png' }
    },
    ['donut'] = {
        label = 'Donut',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'donut.png' }
    },
    ['waffle'] = {
        label = 'Waffle',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'waffle.png' }
    },
    ['ricepudding'] = {
        label = 'Rice Pudding',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'ricepudding.png' }
    },
    ['magnolia'] = {
        label = 'Magnolia',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'magnolia.png' }
    },
    ['cupcake'] = {
        label = 'Cupcake',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'cupcake.png' }
    },
    ['fruitpancakes'] = {
        label = 'Fruit Pancakes',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'fruitpancakes.png' }
    },
    ['cheescake'] = {
        label = 'Cheescake',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'cheescake.png' }
    },

    ['kurkakola'] = {
        label = 'Coke',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'kurkakola.png' }
    },
    ['water_bottle'] = {
        label = 'Bottle of Water',
        weight = 500,
        stack = true,
        close = true,
        description = 'For all the thirsty out there',
        client = { image = 'water_bottle.png' }
    },
    ['coffee'] = {
        label = 'Coffee',
        weight = 200,
        stack = true,
        close = true,
        description = 'Pump 4 Caffeine',
        client = { image = 'coffee.png' }
    },
    ['icetea'] = {
        label = 'Ice Tea',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'icetea.png' }
    },
    ['milkshake'] = {
        label = 'Milkshake',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'milkshake.png' }
    },
    ['coollime'] = {
        label = 'Cool Lime',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'coollime.png' }
    },
    ['frappe']= {
        label = 'Frappe',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'frappe.png' }
    },
    ['cocowhite'] = {
        label = 'Cocowhite',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'cocowhite.png' }
    },

    ['banana'] = {
        label = 'Banana',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'banana.png' }
    },
    ['bread'] = {
        label = 'Bread',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'bread.png' }
    },
    ['burgerbun'] = {
        label = 'Burger Bun',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'burgerbun.png' }
    },
    ['cheddar'] = {
        label = 'Cheddar',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'cheddar.png' }
    },
    ['cheese'] = {
        label = 'Cheese',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'cheese.png' }
    },
    ['coffeebean'] = {
        label = 'Coffee Bean',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'coffeebean.png' }
    },
    ['dough'] = {
        label = 'Dough',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'dough.png' }
    },
    ['egg'] = {
        label = 'Egg',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'egg.png' }
    },
    ['ethylalcohol'] = {
        label = 'Ethyl Alcohol',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'ethylalcohol.png' }
    },
    ['flour'] = {
        label = 'Flour',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'flour.png' }
    },
    ['ice'] = {
        label = 'Ice',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'ice.png' }
    },
    ['icecream'] = {
        label = 'Ice Cream',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'icecream.png' }
    },
    ['lemon'] = {
        label = 'Lemon',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'lemon.png' }
    },
    ['lettuce'] = {
        label = 'Lettuce',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'lettuce.png' }
    },
    ['milk'] = {
        label = 'Milk',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'milk.png' }
    },
    ['mincedmeat'] = {
        label = 'Minced Meat',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'mincedmeat.png' }
    },
    ['onion']= {
        label = 'Onion',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'onion.png' }
    },
    ['packaged_chicken'] = {
        label = 'Packaged Chicken',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'packaged_chicken.png' }
    },
    ['pistachio'] = {
        label = 'Pistachio',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'pistachio.png' }
    },
    ['rice'] = {
        label = 'Rice',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'rice.png' }
    },
    ['salami'] = {
        label = 'Salami',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'salami.png' }
    },
    ['salt'] = {
        label = 'Salt',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'salt.png' }
    },
    ['strawberry'] = {
        label = 'Strawberry',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'strawberry.png' }
    },
    ['sugar'] = {
        label = 'Sugar',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'sugar.png' }
    },
    ['vealmeat'] = {
        label = 'Veal Meat',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'vealmeat.png' }
    },
    ['whitechocolate'] = {
        label = 'White Chocolate',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'whitechocolate.png' }
    },
    ['yeast'] = {
        label = 'Yeast',
        weight = 200,
        stack = true,
        close = true,
        description = 'Nice to eat',
        client = { image = 'yeast.png' }
    },
    nz_pancake = {
        label = 'Pancake',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_pancake.png' }
    },
    nz_waffle = {
        label = 'Waffle',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_waffle.png' }
    },
    nz_wafflebacon = {
        label = 'Waffle and Bacon',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_wafflebacon.png' }
    },
    nz_toast = {
        label = 'Toast',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_toast.png' }
    },
    nz_sandwitch = {
        label = 'Sandwich',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_sandwitch.png' }
    },
    nz_brakefastset = {
        label = 'Brakefast Set',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_brakefastset.png' }
    },
    nz_burger = {
        label = 'Burger',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_burger.png' }
    },
    nz_salad = {
        label = 'Salad',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_salad.png' }
    },

    -- Ingredients
    nz_pancakemix = {
        label = 'Pancake Mix',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_pancakemix.png' }
    },
    nz_milk = {
        label = 'Milk',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_milk.png' }
    },
    nz_syrup = {
        label = 'Syrup',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_syrup.png' }
    },
    nz_avocado = {
        label = 'Avocado',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_avocado.png' }
    },
    nz_lettuce = {
        label = 'Lettuce',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_lettuce.png' }
    },
    nz_egg = {
        label = 'Egg',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_egg.png' }
    },
    nz_butter = {
        label = 'Butter',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_butter.png' }
    },
    nz_tomato = {
        label = 'Tomato',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_tomato.png' }
    },
    nz_bread = {
        label = 'Bread👍',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_bread.png' }
    },
    nz_cucumber = {
        label = 'Cucumber',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_cucumber.png' }
    },
    nz_strawberry = {
        label = 'Strawberry',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_strawberry.png' }
    },
    nz_raw_bacon = {
        label = 'Raw Bacon',
        weight = 500,
        stack = true,
        close = true,
        description = '',
        client = { image = 'nz_raw_bacon.png' }
    },
    ['frenchfries'] = {
        label = 'French Fries',
        weight = 10,
        stack = true,
        close = true,
        description = 'A plate of crispy, golden-brown french fries.'
    },
    
    ['frenchfriesbag'] = {
        label = 'French Fries Bag',
        weight = 10,
        stack = true,
        close = true,
        description = 'Fresh french fries ready for frying.'
    },
    
    ['burntfrenchfries'] = {
        label = 'Burnt French Fries',
        weight = 10,
        stack = true,
        close = true,
        description = 'A plate of burnt, black french fries.'
    },
    
    ['rawburgerpatty'] = {
        label = 'Raw Burger Patty',
        weight = 10,
        stack = true,
        close = true,
        description = 'Fresh beef patty for grilling.'
    },
    
    ['cookedburgerpatty'] = {
        label = 'Cooked Burger Patty',
        weight = 10,
        stack = true,
        close = true,
        description = 'A cooked burger patty.'
    },
    
    ['restaurant_ticket'] = {
        label = 'Restaurant Ticket',
        weight = 0,
        stack = false,
        close = true,
        description = 'A receipt from a restaurant order.'
    },
    
    ['cheese'] = {
        label = 'Cheese',
        weight = 10,
        stack = true,
        close = true,
        description = 'Cheese slices for burgers.'
    },
    
    ['lettuce'] = {
        label = 'Lettuce',
        weight = 10,
        stack = true,
        close = true,
        description = 'Fresh lettuce leaves.'
    },
    
    ['tomato'] = {
        label = 'Tomato',
        weight = 10,
        stack = true,
        close = true,
        description = 'Fresh tomato slices.'
    },
    
    ['onion'] = {
        label = 'Onion',
        weight = 10,
        stack = true,
        close = true,
        description = 'Fresh onion slices.'
    },
    
    ['avocado'] = {
        label = 'Avocado',
        weight = 10,
        stack = true,
        close = true,
        description = 'Fresh avocado slices.'
    },
    
    ['texmex_sauce'] = {
        label = 'TexMex Sauce',
        weight = 10,
        stack = true,
        close = true,
        description = 'Spicy TexMex sauce.'
    },
    
    ['burgerbun'] = {
        label = 'Burger Bun',
        weight = 10,
        stack = true,
        close = true,
        description = 'Fresh burger buns.'
    },
    
    ['fish_filet'] = {
        label = 'Fish Filet',
        weight = 10,
        stack = true,
        close = true,
        description = 'Fresh fish filet.'
    },
    
    ['beaten_egg'] = {
        label = 'Beaten Egg',
        weight = 10,
        stack = true,
        close = true,
        description = 'Beaten egg for cooking.'
    },
    ['double_cheese_burger'] = {
        label = 'Double Cheese Burger',
        weight = 15,
        stack = true,
        close = true,
        description = 'A delicious double cheese burger.'
    },
    
    ['cheese_burger'] = {
        label = 'Cheese Burger',
        weight = 12,
        stack = true,
        close = true,
        description = 'A classic cheese burger.'
    },
    
    ['pizza_pepperoni'] = {
        label = 'Pepperoni Pizza',
        weight = 20,
        stack = true,
        close = true,
        description = 'Delicious pepperoni pizza.'
    },
    
    ['pizza_mushroom'] = {
        label = 'Mushroom Pizza',
        weight = 20,
        stack = true,
        close = true,
        description = 'Fresh mushroom pizza.'
    },
    ['mojito'] = {
        label = 'Mojito',
        weight = 8,
        stack = true,
        close = true,
        description = 'Refreshing mojito cocktail.'
    },
    
    ['cola'] = {
        label = 'Cola',
        weight = 8,
        stack = true,
        close = true,
        description = 'Classic cola drink.'
    },
    
    ['water'] = {
        label = 'Water',
        weight = 5,
        stack = true,
        close = true,
        description = 'Fresh drinking water.'
    },
    
    ['juice'] = {
        label = 'Juice',
        weight = 8,
        stack = true,
        close = true,
        description = 'Fresh fruit juice.'
    },
    
    ['sunday'] = {
        label = 'Sunday',
        weight = 10,
        stack = true,
        close = true,
        description = 'Delicious sunday dessert.'
    },
    
    ['sprite'] = {
        label = 'Sprite',
        weight = 8,
        stack = true,
        close = true,
        description = 'Refreshing sprite drink.'
    },
    
    ['coffee_cup'] = {
        label = 'Coffee Cup',
        weight = 8,
        stack = true,
        close = true,
        description = 'Hot coffee in a cup.'
    },
    ['mayonnaise'] = {
        label = 'Mayonnaise',
        weight = 5,
        stack = true,
        close = true,
        description = 'Creamy mayonnaise sauce.'
    },
    
    ['ketchup'] = {
        label = 'Ketchup',
        weight = 5,
        stack = true,
        close = true,
        description = 'Ketchup is a condiment made from tomatoes and vinegar.'
    },
    
    ['french_fries'] = {
        label = 'French Fries',
        weight = 8,
        stack = true,
        close = true,
        description = 'Crispy golden french fries, a classic side dish.'
    },
    
    ['cooking_oil'] = {
        label = 'Cooking Oil',
        weight = 15,
        stack = true,
        close = true,
        description = 'High-quality cooking oil for frying.'
    },
    ['chicken_nuggets_raw'] = {
        label = 'Chicken Nuggets Raw',
        weight = 10,
        stack = true,
        close = true,
        description = 'Crispy chicken nuggets.'
    },
    ['chicken_nuggets'] = {
        label = 'Chicken Nuggets',
        weight = 10,
        stack = true,
        close = true,
        description = 'Crispy chicken nuggets.'
    },
    ['cola_syrup'] = {
        label = 'Cola Syrup',
        weight = 10,
        stack = true,
        close = true,
        description = 'Cola Syrup'
    },
    ['sprite_syrup'] = {
        label = 'Sprite Syrup',
        weight = 10,
        stack = true,
        close = true,
        description = 'Sprite Syrup'
    },
    ['orange_concentrate'] = {
        label = 'Orange Concentrate',
        weight = 10,
        stack = true,
        close = true,
        description = 'Orange Concentrate'
    },
    ['carbonation'] = {
        label = 'Carbonation',
        weight = 10,
        stack = true,
        close = true,
        description = 'Carbonation'
    },
    ['orange_juice'] = {
        label = 'Orange Juice',
        weight = 10,
        stack = true,
        close = true,
        description = 'Orange Juice'
    },
    ['coffee_beans'] = {
        label = 'Coffee Beans',
        weight = 10,
        stack = true,
        close = true,
        description = 'Coffee Beans'
    },
    ['milk'] = {
        label = 'Milk',
        weight = 10,
        stack = true,
        close = true,
        description = 'Milk'
    },
    ['foam_powder'] = {
        label = 'Foam Powder',
        weight = 10,
        stack = true,
        close = true,
        description = 'Foam Powder'
    },
    ['coffee_black'] = {
        label = 'Coffee Black',
        weight = 10,
        stack = true,
        close = true,
        description = 'Coffee Black'
    },
    ['coffee_latte'] = {
        label = 'Coffee Latte',
        weight = 10,
        stack = true,
        close = true,
        description = 'Coffee Latte'
    },
    ['coffee_cappuccino'] = {
        label = 'Coffee Cappuccino',
        weight = 10,
        stack = true,
        close = true,
        description = 'Coffee Cappuccino'
    },
     -- Servicing Items
  ["engine_oil"] = {
    label = "Engine Oil",
    weight = 1000,
  },
  ["tyre_replacement"] = {
    label = "Tyre Replacement",
    weight = 1000,
  },
  ["clutch_replacement"] = {
    label = "Clutch Replacement",
    weight = 1000,
  },
  ["air_filter"] = {
    label = "Air Filter",
    weight = 100,
  },
  ["spark_plug"] = {
    label = "Spark Plug",
    weight = 1000,
  },
  ["brakepad_replacement"] = {
    label = "Brakepad Replacement",
    weight = 1000,
  },
  ["suspension_parts"] = {
    label = "Suspension Parts",
    weight = 1000,
  },
  -- Engine Items
  ["i4_engine"] = {
    label = "I4 Engine",
    weight = 1000,
  },
  ["v6_engine"] = {
    label = "V6 Engine",
    weight = 1000,
  },
  ["v8_engine"] = {
    label = "V8 Engine",
    weight = 1000,
  },
  ["v12_engine"] = {
    label = "V12 Engine",
    weight = 1000,
  },
  ["turbocharger"] = {
    label = "Turbocharger",
    weight = 1000,
  },
  -- Electric Engines
  ["ev_motor"] = {
    label = "EV Motor",
    weight = 1000,
  },
  ["ev_battery"] = {
    label = "EV Battery",
    weight = 1000,
  },
  ["ev_coolant"] = {
    label = "EV Coolant",
    weight = 1000,
  },
  -- Drivetrain Items
  ["awd_drivetrain"] = {
    label = "AWD Drivetrain",
    weight = 1000,
  },
  ["rwd_drivetrain"] = {
    label = "RWD Drivetrain",
    weight = 1000,
  },
  ["fwd_drivetrain"] = {
    label = "FWD Drivetrain",
    weight = 1000,
  },
  -- Tuning Items
  ["slick_tyres"] = {
    label = "Slick Tyres",
    weight = 1000,
  },
  ["semi_slick_tyres"] = {
    label = "Semi Slick Tyres",
    weight = 1000,
  },
  ["offroad_tyres"] = {
    label = "Offroad Tyres",
    weight = 1000,
  },
  ["drift_tuning_kit"] = {
    label = "Drift Tuning Kit",
    weight = 1000,
  },
  ["ceramic_brakes"] = {
    label = "Ceramic Brakes",
    weight = 1000,
  },
  -- Cosmetic Items
  ["lighting_controller"] = {
    label = "Lighting Controller",
    weight = 100,
    client = {
      event = "jg-mechanic:client:show-lighting-controller",
    }
  },
  ["stancing_kit"] = {
    label = "Stancer Kit",
    weight = 100,
    client = {
      event = "jg-mechanic:client:show-stancer-kit",
    }
  },
  ["cosmetic_part"] = {
    label = "Cosmetic Parts",
    weight = 100,
  },
  ["respray_kit"] = {
    label = "Respray Kit",
    weight = 1000,
  },
  ["vehicle_wheels"] = {
    label = "Vehicle Wheels Set",
    weight = 1000,
  },
  ["tyre_smoke_kit"] = {
    label = "Tyre Smoke Kit",
    weight = 1000,
  },
  ["bulletproof_tyres"] = {
    label = "Bulletproof Tyres",
    weight = 1000,
  },
  ["extras_kit"] = {
    label = "Extras Kit",
    weight = 1000,
  },
  -- Nitrous & Cleaning Items
  ["nitrous_bottle"] = {
    label = "Nitrous Bottle",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-nitrous-bottle",
    }
  },
  ["empty_nitrous_bottle"] = {
    label = "Empty Nitrous Bottle",
    weight = 1000,
  },
  ["nitrous_install_kit"] = {
    label = "Nitrous Install Kit",
    weight = 1000,
  },
  ["cleaning_kit"] = {
    label = "Cleaning Kit",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:clean-vehicle",
    }
  },
  ["repair_kit"] = {
    label = "Repair Kit",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:repair-vehicle",
    }
  },
  ["duct_tape"] = {
    label = "Duct Tape",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-duct-tape",
    }
  },
  -- Performance Item
  ["performance_part"] = {
    label = "Performance Parts",
    weight = 1000,
  },
  -- Mechanic Tablet Item
  ["mechanic_tablet"] = {
    label = "Mechanic Tablet",
    weight = 1000,
    client = {
      event = "jg-mechanic:client:use-tablet",
    }
  },
  -- Gearbox
  ["manual_gearbox"] = {
    label = "Manual Gearbox",
    weight = 1000,
  },
-- CATCAFE ITEMS FOR OX_INVENTORY
['bmochi'] = {
    name = 'bmochi',
    label = 'Blue Mochi',
    weight = 100,
    type = 'item',
    image = 'mochiblue.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'A delicious blue mochi treat',
    hunger = 45
},

['pmochi'] = {
    name = 'pmochi',
    label = 'Pink Mochi',
    weight = 100,
    type = 'item',
    image = 'mochipink.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'A sweet pink mochi dessert',
    hunger = 45
},

['gmochi'] = {
    name = 'gmochi',
    label = 'Green Mochi',
    weight = 100,
    type = 'item',
    image = 'mochigreen.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'A refreshing green mochi',
    hunger = 45
},

['omochi'] = {
    name = 'omochi',
    label = 'Orange Mochi',
    weight = 100,
    type = 'item',
    image = 'mochiorange.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'A citrusy orange mochi',
    hunger = 45
},

-- Drinks
['bobatea'] = {
    name = 'bobatea',
    label = 'Boba Tea',
    weight = 150,
    type = 'item',
    image = 'bubbletea.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Classic bubble tea with tapioca pearls',
    thirst = 45
},

['bbobatea'] = {
    name = 'bbobatea',
    label = 'Blue Boba Tea',
    weight = 150,
    type = 'item',
    image = 'bubbleteablue.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Refreshing blue bubble tea',
    thirst = 45
},

['gbobatea'] = {
    name = 'gbobatea',
    label = 'Green Boba Tea',
    weight = 150,
    type = 'item',
    image = 'bubbleteagreen.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Matcha flavored bubble tea',
    thirst = 45
},

['pbobatea'] = {
    name = 'pbobatea',
    label = 'Pink Boba Tea',
    weight = 150,
    type = 'item',
    image = 'bubbleteapink.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Sweet strawberry bubble tea',
    thirst = 45
},

['obobatea'] = {
    name = 'obobatea',
    label = 'Orange Boba Tea',
    weight = 150,
    type = 'item',
    image = 'bubbleteaorange.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Citrus orange flavored bubble tea',
    thirst = 45
},

['nekolatte'] = {
    name = 'nekolatte',
    label = 'Neko Latte',
    weight = 200,
    type = 'item',
    image = 'latte.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cat-themed latte with cute art',
    hunger = 25,
    thirst = 35
},

['sake'] = {
    name = 'sake',
    label = 'Sake',
    weight = 300,
    type = 'item',
    image = 'sake.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Traditional Japanese rice wine',
    thirst = 30
},

-- Food Items
['miso'] = {
    name = 'miso',
    label = 'Miso Soup',
    weight = 300,
    type = 'item',
    image = 'miso.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Traditional Japanese miso soup',
    hunger = 35,
    thirst = 20
},

['cake'] = {
    name = 'cake',
    label = 'Strawberry Cake',
    weight = 500,
    type = 'item',
    image = 'cake.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Delicious strawberry shortcake',
    hunger = 60
},

['bento'] = {
    name = 'bento',
    label = 'Bento Box',
    weight = 800,
    type = 'item',
    image = 'bento.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Complete Japanese meal in a box',
    hunger = 85
},

['riceball'] = {
    name = 'riceball',
    label = 'Neko Onigiri',
    weight = 250,
    type = 'item',
    image = 'catrice.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cat-shaped rice ball filled with delicious ingredients',
    hunger = 40
},

['nekocookie'] = {
    name = 'nekocookie',
    label = 'Neko Cookie',
    weight = 100,
    type = 'item',
    image = 'catcookie.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cute cat-shaped cookie',
    hunger = 25
},

['nekodonut'] = {
    name = 'nekodonut',
    label = 'Neko Donut',
    weight = 150,
    type = 'item',
    image = 'catdonut.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cat-themed donut with pink icing',
    hunger = 35
},

-- Ingredients
['boba'] = {
    name = 'boba',
    label = 'Boba Pearls',
    weight = 100,
    type = 'item',
    image = 'boba.png',
    unique = false,
    useable = false,
    shouldClose = true,
    combinable = nil,
    description = 'Tapioca pearls for bubble tea'
},

['flour'] = {
    name = 'flour',
    label = 'Flour',
    weight = 500,
    type = 'item',
    image = 'flour.png',
    unique = false,
    useable = false,
    shouldClose = true,
    combinable = nil,
    description = 'All-purpose flour for baking'
},

['rice'] = {
    name = 'rice',
    label = 'Bowl of Rice',
    weight = 300,
    type = 'item',
    image = 'rice.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Steamed Japanese rice',
    hunger = 30
},

['sugar'] = {
    name = 'sugar',
    label = 'Sugar',
    weight = 200,
    type = 'item',
    image = 'sugar.png',
    unique = false,
    useable = false,
    shouldClose = true,
    combinable = nil,
    description = 'Granulated sugar for sweetening'
},

['nori'] = {
    name = 'nori',
    label = 'Nori Seaweed',
    weight = 50,
    type = 'item',
    image = 'nori.png',
    unique = false,
    useable = false,
    shouldClose = true,
    combinable = nil,
    description = 'Dried seaweed sheets for sushi'
},

['blueberry'] = {
    name = 'blueberry',
    label = 'Blueberries',
    weight = 100,
    type = 'item',
    image = 'blueberry.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Fresh blueberries',
    hunger = 15
},

['strawberry'] = {
    name = 'strawberry',
    label = 'Strawberries',
    weight = 100,
    type = 'item',
    image = 'strawberry.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Fresh red strawberries',
    hunger = 15
},

['orange'] = {
    name = 'orange',
    label = 'Orange',
    weight = 200,
    type = 'item',
    image = 'orange.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Fresh orange',
    hunger = 20
},

['mint'] = {
    name = 'mint',
    label = 'Matcha Powder',
    weight = 100,
    type = 'item',
    image = 'matcha.png',
    unique = false,
    useable = false,
    shouldClose = true,
    combinable = nil,
    description = 'Green tea matcha powder'
},

['tofu'] = {
    name = 'tofu',
    label = 'Tofu',
    weight = 300,
    type = 'item',
    image = 'tofu.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Fresh soybean tofu',
    hunger = 25
},

['mocha'] = {
    name = 'mocha',
    label = 'Mocha Meow',
    weight = 200,
    type = 'item',
    image = 'mochameow.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cat-themed mocha coffee',
    thirst = 40
},

['cakepop'] = {
    name = 'cakepop',
    label = 'Cat Cake-Pop',
    weight = 100,
    type = 'item',
    image = 'cakepop.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cute cat-shaped cake pop',
    hunger = 30
},

['pancake'] = {
    name = 'pancake',
    label = 'PawCake',
    weight = 250,
    type = 'item',
    image = 'pawcakes.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Paw-shaped pancakes with syrup',
    hunger = 45
},

['pizza'] = {
    name = 'pizza',
    label = 'Kitty Pizza',
    weight = 600,
    type = 'item',
    image = 'catpizza.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cat-themed mini pizza',
    hunger = 65
},

['purrito'] = {
    name = 'purrito',
    label = 'Purrito',
    weight = 350,
    type = 'item',
    image = 'purrito.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Cat burrito filled with delicious ingredients',
    hunger = 50
},

['noodlebowl'] = {
    name = 'noodlebowl',
    label = 'Bowl of Noodles',
    weight = 400,
    type = 'item',
    image = 'noodlebowl.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Hearty bowl of Japanese noodles',
    hunger = 55
},

['noodles'] = {
    name = 'noodles',
    label = 'Instant Noodles',
    weight = 200,
    type = 'item',
    image = 'noodles.png',
    unique = false,
    useable = false,
    shouldClose = true,
    combinable = nil,
    description = 'Pack of instant noodles'
},

['ramen'] = {
    name = 'ramen',
    label = 'Bowl of Ramen',
    weight = 500,
    type = 'item',
    image = 'ramen.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Hot bowl of Japanese ramen',
    hunger = 70
},

['milk'] = {
    name = 'milk',
    label = 'Milk',
    weight = 300,
    type = 'item',
    image = 'burger-milk.png',
    unique = false,
    useable = true,
    shouldClose = true,
    combinable = nil,
    description = 'Carton of fresh milk',
    thirst = 45
},

['onion'] = {
    name = 'onion',
    label = 'Onion',
    weight = 500,
    type = 'item',
    image = 'burger-onion.png',
    unique = false,
    useable = false,
    shouldClose = false,
    combinable = nil,
    description = 'Fresh onion for cooking'
},
-- =============================================
-- BAHAN MENTAH (Raw Ingredients)
-- =============================================

['daging_sapi'] = {
    label = 'Daging Sapi',
    weight = 1000,
    stack = true,
    close = true,
    description = 'Daging sapi segar untuk memasak',
    client = {
        image = 'daging_sapi.png'
    }
},

['daging_ayam'] = {
    label = 'Daging Ayam',
    weight = 800,
    stack = true,
    close = true,
    description = 'Daging ayam segar',
    client = {
        image = 'daging_ayam.png'
    }
},

['tepung'] = {
    label = 'Tepung Terigu',
    weight = 500,
    stack = true,
    close = true,
    description = 'Tepung terigu berkualitas',
    client = {
        image = 'tepung.png'
    }
},

['nasi'] = {
    label = 'Beras',
    weight = 600,
    stack = true,
    close = true,
    description = 'Beras premium untuk nasi',
    client = {
        image = 'nasi.png'
    }
},

['mie'] = {
    label = 'Mie Kuning',
    weight = 400,
    stack = true,
    close = true,
    description = 'Mie kuning segar',
    client = {
        image = 'mie.png'
    }
},

['telur'] = {
    label = 'Telur Ayam',
    weight = 100,
    stack = true,
    close = true,
    description = 'Telur ayam segar',
    client = {
        image = 'telur.png'
    }
},

['sayur'] = {
    label = 'Sayuran Segar',
    weight = 300,
    stack = true,
    close = true,
    description = 'Campuran sayuran segar',
    client = {
        image = 'sayur.png'
    }
},

['bawang_putih'] = {
    label = 'Bawang Putih',
    weight = 50,
    stack = true,
    close = true,
    description = 'Bawang putih fresh',
    client = {
        image = 'bawang_putih.png'
    }
},

['bawang_merah'] = {
    label = 'Bawang Merah',
    weight = 50,
    stack = true,
    close = true,
    description = 'Bawang merah fresh',
    client = {
        image = 'bawang_merah.png'
    }
},

['cabe'] = {
    label = 'Cabe Merah',
    weight = 30,
    stack = true,
    close = true,
    description = 'Cabe merah segar',
    client = {
        image = 'cabe.png'
    }
},

['teh'] = {
    label = 'Daun Teh',
    weight = 200,
    stack = true,
    close = true,
    description = 'Daun teh pilihan',
    client = {
        image = 'teh.png'
    }
},

['jeruk'] = {
    label = 'Jeruk Segar',
    weight = 250,
    stack = true,
    close = true,
    description = 'Jeruk manis segar',
    client = {
        image = 'jeruk.png'
    }
},

['gula'] = {
    label = 'Gula Pasir',
    weight = 500,
    stack = true,
    close = true,
    description = 'Gula pasir putih',
    client = {
        image = 'gula.png'
    }
},

['es_batu'] = {
    label = 'Es Batu',
    weight = 100,
    stack = true,
    close = true,
    description = 'Es batu kristal',
    client = {
        image = 'es_batu.png'
    }
},

['susu'] = {
    label = 'Susu Segar',
    weight = 500,
    stack = true,
    close = true,
    description = 'Susu sapi segar',
    client = {
        image = 'susu.png'
    }
},

['coklat'] = {
    label = 'Bubuk Coklat',
    weight = 300,
    stack = true,
    close = true,
    description = 'Bubuk coklat premium',
    client = {
        image = 'coklat.png'
    }
},

['air'] = {
    label = 'Air Bersih',
    weight = 500,
    stack = true,
    close = true,
    description = 'Air bersih untuk memasak',
    client = {
        image = 'air.png'
    }
},

['minyak'] = {
    label = 'Minyak Goreng',
    weight = 500,
    stack = true,
    close = true,
    description = 'Minyak goreng untuk memasak',
    client = {
        image = 'minyak.png'
    }
},

['kelapa'] = {
    label = 'Kelapa Muda',
    weight = 800,
    stack = true,
    close = true,
    description = 'Kelapa muda segar',
    client = {
        image = 'kelapa.png'
    }
},

['alpukat'] = {
    label = 'Alpukat',
    weight = 400,
    stack = true,
    close = true,
    description = 'Alpukat matang',
    client = {
        image = 'alpukat.png'
    }
},

['bumbu_sate'] = {
    label = 'Bumbu Sate',
    weight = 200,
    stack = true,
    close = true,
    description = 'Bumbu sate special',
    client = {
        image = 'bumbu_sate.png'
    }
},

-- =============================================
-- BAHAN OLAHAN (Crafting Ingredients)
-- =============================================

['nasi_matang'] = {
    label = 'Nasi Matang',
    weight = 400,
    stack = true,
    close = true,
    description = 'Nasi yang sudah dimasak',
    client = {
        image = 'nasi_matang.png'
    }
},

['mie_rebus'] = {
    label = 'Mie Rebus',
    weight = 350,
    stack = true,
    close = true,
    description = 'Mie yang sudah direbus',
    client = {
        image = 'mie_rebus.png'
    }
},

['ayam_goreng'] = {
    label = 'Ayam goreng',
    weight = 600,
    stack = true,
    close = true,
    description = 'Daging ayam yang sudah DIgoreng',
    client = {
        image = 'ayam_rebus.png'
    }
},

['bawang_goreng'] = {
    label = 'Bawang Goreng',
    weight = 80,
    stack = true,
    close = true,
    description = 'Bawang merah yang digoreng renyah',
    client = {
        image = 'bawang_goreng.png'
    }
},

['sambal'] = {
    label = 'Sambal Pedas',
    weight = 150,
    stack = true,
    close = true,
    description = 'Sambal pedas homemade',
    client = {
        image = 'sambal.png'
    }
},

['kuah_kaldu'] = {
    label = 'Kuah Kaldu',
    weight = 600,
    stack = true,
    close = true,
    description = 'Kuah kaldu sapi spesial',
    client = {
        image = 'kuah_kaldu.png'
    }
},

['teh_seduh'] = {
    label = 'Teh Seduh',
    weight = 300,
    stack = true,
    close = true,
    description = 'Teh yang sudah diseduh',
    client = {
        image = 'teh_sedu.png'
    }
},

['air_panas'] = {
    label = 'Air Panas',
    weight = 500,
    stack = true,
    close = true,
    description = 'Air mendidih untuk memasak',
    client = {
        image = 'air_panas.png'
    }
},

-- =============================================
-- MAKANAN JADI (Finished Food)
-- =============================================

['baso'] = {
    label = 'Bakso',
    weight = 500,
    stack = true,
    close = true,
    description = 'Bakso daging sapi dengan kuah kaldu spesial',
    client = {
        status = { hunger = 400000 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.0) },
        usetime = 7500,
        image = 'baso.png'
    }
},

['mie_ayam'] = {
    label = 'Mie Ayam',
    weight = 450,
    stack = true,
    close = true,
    description = 'Mie ayam dengan pangsit dan jamur',
    client = {
        status = { hunger = 350000 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.0) },
        usetime = 7000,
        image = 'mie_ayam.png'
    }
},

['nasi_goreng'] = {
    label = 'Nasi Goreng',
    weight = 500,
    stack = true,
    close = true,
    description = 'Nasi goreng spesial dengan telur dan ayam',
    client = {
        status = { hunger = 380000 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.0) },
        usetime = 8000,
        image = 'nasi_goreng.png'
    }
},

['sate_ayam'] = {
    label = 'Sate Ayam',
    weight = 400,
    stack = true,
    close = true,
    description = 'Sate ayam dengan bumbu kacang',
    client = {
        status = { hunger = 320000 },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.0) },
        usetime = 6500,
        image = 'sate_ayam.png'
    }
},

-- =============================================
-- MINUMAN (Drinks)
-- =============================================

['es_teh'] = {
    label = 'Es Teh',
    weight = 300,
    stack = true,
    close = true,
    description = 'Es teh manis segar',
    client = {
        status = { thirst = 300000 },
        anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.0) },
        usetime = 5000,
        image = 'es_teh.png'
    }
},

['es_jeruk'] = {
    label = 'Es Jeruk',
    weight = 350,
    stack = true,
    close = true,
    description = 'Es jeruk segar',
    client = {
        status = { thirst = 350000 },
        anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
        prop = { model = `prop_cs_bs_cup`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.0) },
        usetime = 6000,
        image = 'es_jeruk.png'
    }
},

['es_kelapa'] = {
    label = 'Es Kelapa Muda',
    weight = 600,
    stack = true,
    close = true,
    description = 'Es kelapa muda segar',
    client = {
        status = { thirst = 400000 },
        anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.0) },
        usetime = 7000,
        image = 'es_kelapa.png'
    }
},

['jus_alpukat'] = {
    label = 'Jus Alpukat',
    weight = 500,
    stack = true,
    close = true,
    description = 'Jus alpukat dengan susu dan coklat',
    client = {
        status = { thirst = 450000 },
        anim = { dict = 'amb@world_human_drinking@coffee@male@idle_a', clip = 'idle_c' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.0) },
        usetime = 8000,
        image = 'jus_alpukat.png'
    }
},
['uwububbleteablueberry'] = {
    label = 'Berry Blue B-T',
    weight = 200,
    stack = true,
    close = true,
    description = 'Lavender Tea with Blueberry Boba.',
    client = {
        status = { thirst = math.random(40, 50) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['uwububbletearose'] = {
    label = 'Rosey B-T',
    weight = 200,
    stack = true,
    close = true,
    description = 'Sakura Rose Tea with Vanilla Boba.',
    client = {
        status = { thirst = math.random(40, 50) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['uwububbleteamint'] = {
    label = 'Minty B-T',
    weight = 200,
    stack = true,
    close = true,
    description = 'Matcha Tea with Mint Boba.',
    client = {
        status = { thirst = math.random(40, 50) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['uwupancake'] = {
    label = 'uWu Savory Pancake',
    weight = 200,
    stack = true,
    close = true,
    description = 'Korean savory pancake made with scallions.',
    client = {
        status = { hunger = math.random(40, 50) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['uwucupcake'] = {
    label = 'uWu Cupcake',
    weight = 200,
    stack = true,
    close = true,
    description = 'Sugar Kitty Cupcake!',
    client = {
        status = { hunger = math.random(30, 40) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['uwuvanillasandy'] = {
    label = 'uWu V-Icecream Sandy',
    weight = 200,
    stack = true,
    close = true,
    description = 'Sweet Vanilla Biscuit filled with Icecreamy!',
    client = {
        status = { hunger = math.random(25, 35) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['uwuchocsandy'] = {
    label = 'uWu C-Icecream Sandy',
    weight = 200,
    stack = true,
    close = true,
    description = 'Sweet Chocolate Biscuit filled with Icecreamy!',
    client = {
        status = { hunger = math.random(25, 35) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['uwubudhabowl'] = {
    label = 'uWu Budha Bowl',
    weight = 200,
    stack = true,
    close = true,
    description = 'Bowl of nourishment and balance.',
    client = {
        status = { hunger = math.random(45, 60) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.0, 0.0, 0.02), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
    }
},

['uwusushi'] = {
    label = 'uWu Sushi',
    weight = 200,
    stack = true,
    close = true,
    description = 'Designed as a window to your soul.',
    client = {
        status = { hunger = math.random(30, 45) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_sushi_roll`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['uwumisosoup'] = {
    label = 'uWu Miso Soup',
    weight = 200,
    stack = true,
    close = true,
    description = 'Fungus never tasted so good!',
    client = {
        status = { hunger = math.random(35, 45) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.0, 0.0, 0.02), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['uwubentobox'] = {
    label = 'uWu Bento Box',
    weight = 200,
    stack = true,
    close = true,
    description = 'An uWu Selection with a surprise!',
    client = {
        status = { hunger = math.random(50, 65) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3500,
    }
},

-- UwU Ingredients

['bb-flavoring'] = {
    label = 'Bluebuerry Flavoring',
    weight = 200,
    stack = true,
    close = true,
    description = 'Blueberry flavoring for Bubble Tea!'
},

['rose-flavoring'] = {
    label = 'Rose Flavoring',
    weight = 200,
    stack = true,
    close = true,
    description = 'Rose flavoring for Bubble Tea!'
},

['mint-flavoring'] = {
    label = 'Mint Flavoring',
    weight = 200,
    stack = true,
    close = true,
    description = 'Mint flavoring for Bubble Tea!'
},

['eggs'] = {
    label = 'Cooking Eggs',
    weight = 200,
    stack = true,
    close = true,
    description = 'Eggs...common cooking ingredient.'
},

['flour'] = {
    label = 'Flour',
    weight = 200,
    stack = true,
    close = true,
    description = 'Flour...common cooking ingredient.'
},

['milk'] = {
    label = 'Milk',
    weight = 200,
    stack = true,
    close = true,
    description = 'Milk...common cooking ingredient.'
},

['miso-paste'] = {
    label = 'Miso Paste',
    weight = 200,
    stack = true,
    close = true,
    description = 'Miso paste. Mix this with water to make a soup!'
},

['tapiokaballs'] = {
    label = 'Tapioka Balls',
    weight = 200,
    stack = true,
    close = true,
    description = 'Tapioka balls typically seen in making Bubble Tea!'
},

['tea'] = {
    label = 'Tea',
    weight = 200,
    stack = true,
    close = true,
    description = 'Its just tea...'
},

['tofu'] = {
    label = 'Tofu',
    weight = 200,
    stack = true,
    close = true,
    description = 'Tofu. Not quite as tasty as real meat but to each their own...'
},
-- UwU Cafe Ingredients (Non-consumable)
['shiny_wasabi'] = {
    label = 'Shiny wasabi',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['onion'] = {
    label = 'Onion',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['chicken_thighs'] = {
    label = 'Chicken thighs',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['virgin_olive_oil'] = {
    label = 'Virgin olive oil',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['rice'] = {
    label = 'Rice',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['soy_sauce'] = {
    label = 'Soy sauce',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['pullman_bread'] = {
    label = 'Pullman bread',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['egg'] = {
    label = 'Egg',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['chicken_breast'] = {
    label = 'Chicken breast',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['flour'] = {
    label = 'Flour',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['butter'] = {
    label = 'Butter',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['milk'] = {
    label = 'Milk',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['sea_moss'] = {
    label = 'Sea moss',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['matcha_powder'] = {
    label = 'Matcha powder',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['sugar'] = {
    label = 'Sugar',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['cocoa_powder'] = {
    label = 'Cocoa powder',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['dried_boba_tapioca_pearls'] = {
    label = 'Dried boba tapioca pearls',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['juice'] = {
    label = 'Juice',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['lemon'] = {
    label = 'Lemon',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['mint'] = {
    label = 'Mint',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['noodles'] = {
    label = 'Noodles',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['chicken'] = {
    label = 'Chicken',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['baking_powder'] = {
    label = 'Baking powder',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['rice_flour'] = {
    label = 'Rice flour',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

-- UwU Cafe Finished Products (Consumable)
['awwdorable_valentines_chocolate'] = {
    label = 'Awwdorable valentines chocolate',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(20, 30) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['booba_milk_tea_1'] = {
    label = 'Booba milk tea Brown',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { thirst = math.random(40, 50) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['booba_milk_tea_2'] = {
    label = 'Booba milk tea Orange',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { thirst = math.random(40, 50) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['brewed_coffe'] = {
    label = 'Brewed coffe',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { thirst = math.random(30, 40) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['doki_doki_pancakes'] = {
    label = 'Doki doki pancakes',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(35, 45) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['gingerkitty_cookie'] = {
    label = 'Gingerkitty cookie',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(15, 25) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['hamburg_stake'] = {
    label = 'Hamburg Steak',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(45, 60) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
    }
},

['hot_chocolate'] = {
    label = 'Hot chocolate',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { thirst = math.random(35, 45) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['jelly_beans'] = {
    label = 'Jelly beans',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(10, 20) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['lovely_hot_chocolate'] = {
    label = 'Lovely hot chocolate',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { thirst = math.random(35, 45) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['matcha_coffee'] = {
    label = 'Matcha coffee',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { thirst = math.random(30, 40) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['meowchi_mochi_ice_cream'] = {
    label = 'Meowchi mochi ice cream',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(20, 30) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['om_nom_omurice'] = {
    label = 'Om nom omurice',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(40, 55) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.0, 0.0, 0.02), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
    }
},

['rice_balls'] = {
    label = 'Rice balls',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(25, 35) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['strawberry_shortcake'] = {
    label = 'Strawberry shortcake',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(30, 40) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['sugoi_katsu_sando'] = {
    label = 'Sugoi katsu sando',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(35, 50) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['sweet_herbal_tea'] = {
    label = 'Sweet herbal tea',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { thirst = math.random(35, 45) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    }
},

['warm_chicken_noodle'] = {
    label = 'Warm chicken noodle',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(45, 60) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.0, 0.0, 0.02), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
    }
},

['oxygen_cake'] = {
    label = 'Oxygen cake',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(25, 35) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['dragos_fire_cupcake'] = {
    label = 'Dragos fire cupcake',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(20, 30) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['kira_kira_currye'] = {
    label = 'Kira kira curry',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(40, 55) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.0, 0.0, 0.02), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
    }
},

['purrfect_parfait_ballaberry'] = {
    label = 'Purrfect parfait ballaberry',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(30, 40) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.0, 0.0, 0.02), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['ballbarry_cupcake'] = {
    label = 'Ballbarry cupcake',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(20, 30) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['purrfect_parfait'] = {
    label = 'Purrfect parfait',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(30, 40) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.0, 0.0, 0.02), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['cat_macaroon_brown'] = {
    label = 'Cat macaroon brown',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(15, 25) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['cat_macaroon_green'] = {
    label = 'Cat macaroon green',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(15, 25) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['cat_macaroon_pink'] = {
    label = 'Cat macaroon pink',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(15, 25) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['cat_macaroon_turquoise'] = {
    label = 'Cat macaroon turquoise',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { hunger = math.random(15, 25) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 2500,
    }
},

['brown_dye'] = {
    label = 'Brown dye',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['pink_dye'] = {
    label = 'Pink dye',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['green_dye'] = {
    label = 'Green dye',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['turquoise_dye'] = {
    label = 'Turquoise dye',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['plate'] = {
    label = 'Plate',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['cup'] = {
    label = 'Cup',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['cup_dirty'] = {
    label = 'Cup dirty',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['plate_dirty'] = {
    label = 'Plate dirty',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['ice'] = {
    label = 'Ice',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['brewed_coffee'] = {
    label = 'Brewed Coffee',
    weight = 150,
    stack = true,
    close = true,
    description = '',
    client = {
        status = { thirst = math.random(30, 40) },
        anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
        prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
        usetime = 2500,
    },
},

['glass_tall_dirty'] = {
    label = 'Glass tall dirty',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['bar_bowl_dirty'] = {
    label = 'Bar bowl dirty',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['bar_bowl'] = {
    label = 'Bar bowl',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['steak'] = {
    label = 'Steak',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['nuts'] = {
    label = 'Nuts',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},

['strawberry'] = {
    label = 'Strawberry',
    weight = 150,
    stack = true,
    close = false,
    description = ''
},
    ['toy2'] = {
		label = 'Pink Teddy',
		weight = 50,
		stack = false,
		close = false,
		description = 'A Fluffy Pink Teddy from the Atic'
	},

	['toy1'] = {
		label = 'Action Figure',
		weight = 50,
		stack = false,
		close = false,
		description = 'An Action Figure From the late 90\'s'
	},

	['burger'] = {
		label = 'Burger',
		weight = 100,
		stack = true,
		close = true,
		description = 'A regular burger for boring people.'
	},

	['murdermeal'] = {
		label = 'Murder Meal',
		weight = 50,
		stack = true,
		close = true,
		description = 'An Amazing Murder Meal with a chance of a toy.'
	},

	['heartstopper'] = {
		label = 'Burger Heartstopper',
		weight = 500,
		stack = true,
		close = true,
		description = 'Sates Hunger.'
	},

	['torpedo'] = {
		label = 'Burger Torpedo',
		weight = 310,
		stack = true,
		close = true,
		description = 'Sates Hunger.'
	},

	['milkshake'] = {
		label = 'Milkshake',
		weight = 125,
		stack = true,
		close = true,
		description = 'Hand-scooped for you!'
	},

	['moneyshot'] = {
		label = 'Burger Moneyshot',
		weight = 300,
		stack = true,
		close = true,
		description = 'Sates Hunger.'
	},

	['bleeder'] = {
		label = 'Burger Bleeder',
		weight = 250,
		stack = true,
		close = true,
		description = 'Sates Hunger.'
	},

	['meatshake'] = {
		label = 'Meat Shake',
		weight = 125,
		stack = true,
		close = true,
		description = 'Nice\'N\'Chunky MeatShake remulsified just for you'
	},

	['meatfree'] = {
		label = 'Meat-free burger',
		weight = 125,
		stack = true,
		close = true,
		description = 'Sates Hunger.'
	},

	['fries'] = {
		label = 'Fries',
		weight = 125,
		stack = true,
		close = true,
		description = 'Sates Hunger.'
	},

	['lettuce'] = {
		label = 'Lettuce',
		weight = 125,
		stack = true,
		close = true,
		description = 'An Ingredient'
	},

	['bun'] = {
		label = 'Bun',
		weight = 125,
		stack = true,
		close = true,
		description = 'An Ingredient'
	},

	['steak'] = {
		label = 'Steak',
		weight = 125,
		stack = true,
		close = true,
		description = 'An Ingredient'
	},

	['tomato'] = {
		label = 'Tomato',
		weight = 125,
		stack = true,
		close = true,
		description = 'An Ingredient'
	},

	['mshakeformula'] = {
		label = 'Milkshake Formula',
		weight = 125,
		stack = true,
		close = true,
		description = 'An Ingredient'
	},

	['potato'] = {
		label = 'Potato',
		weight = 1500,
		stack = true,
		close = true,
		description = 'An Ingredient'
	},
    -- ['rawmeat'] = {
    -- label = 'Steak Cru',
    -- weight = 125,
    -- stack = true,
    -- close = true,
    -- description = 'An Ingredient'
    --     client = {
    --     status = { hunger = math.random(35, 50) },
    --     anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
    --     prop = { model = `prop_cs_burger_01`, pos = vec3(0.05, -0.02, -0.03), rot = vec3(0.0, 0.0, 0.0) },
    --     usetime = 2500,
    --     notification = 'You ate raw meat! GROSS!'
    --     },
    -- },
    ['rawmeat'] = {
    label = 'steak cru',
    weight = 125,
    stack = true,
    close = true,
    description = 'An Ingredient',
    client = {
        status = { hunger = math.random(40, 55) },
        anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
        prop = { model = `prop_cs_bowl_01`, pos = vec3(0.0, 0.0, 0.02), rot = vec3(0.0, 0.0, 0.0) },
        usetime = 3000,
        notification = 'You ate raw meat! GROSS!',
    }
},
    ['burger-sodasyrup'] = {
    label = 'Soda Syrup',
    weight = 125,
    stack = true,
    close = true,
    degrade = 5760,
    description = 'An Ingredient',
    client = {
        image = 'bs_ingredients_hfcs.png',
    }
},

['burger-tomato'] = {
    label = 'Tomato',
    weight = 125,
    stack = true,
    close = true,
    description = 'An Ingredient',
    client = {
        image = 'bs_tomato.png',
    }
},

['burger-bleeder'] = {
    label = 'Bleeder',
    weight = 250,
    stack = true,
    close = true,
    decay = true,
    degrade = 5760,
    description = 'It\'s a food item dude.',
    client = {
        image = 'bs_the-bleeder.png',
    },
    server = {
        export = 'randol_burgershot.burger-bleeder',
    }
},

['burger-moneyshot'] = {
    label = 'Moneyshot',
    weight = 300,
    stack = true,
    close = true,
    decay = true,
    degrade = 5760,
    description = 'It\'s a food item dude.',
    client = {
        image = 'bs_money-shot.png',
    },
    server = {
        export = 'randol_burgershot.burger-moneyshot',
    }
},

['burger-meatfree'] = {
    label = 'MeatFree',
    weight = 125,
    stack = true,
    close = true,
    decay = true,
    degrade = 5760,
    description = 'It\'s a food item dude.',
    client = {
        image = 'bs_meat-free.png',
    },
    server = {
        export = 'randol_burgershot.burger-meatfree',
    }
},

['burger-potato'] = {
    label = 'Bag of Potatoes',
    weight = 1500,
    stack = true,
    close = true,
    description = 'An Ingredient',
    client = {
        image = 'bs_potato.png',
    }
},

['burger-mshake'] = {
    label = 'Milkshake',
    weight = 125,
    stack = true,
    close = true,
    decay = true,
    degrade = 5760,
    description = 'Hand-scooped for you!',
    client = {
        image = 'bs_milkshake.png',
    },
    server = {
        export = 'randol_burgershot.burger-mshake',
    }
},

['burger-lettuce'] = {
    label = 'Lettuce',
    weight = 125,
    stack = true,
    close = true,
    description = 'An Ingredient',
    client = {
        image = 'bs_lettuce.png',
    }
},

['burger-raw'] = {
    label = 'Raw Patty',
    weight = 125,
    stack = true,
    close = true,
    description = 'An Ingredient',
    client = {
        image = 'bs_patty_raw.png',
    }
},

['burger-heartstopper'] = {
    label = 'Heartstopper',
    weight = 2500,
    stack = true,
    close = true,
    decay = true,
    degrade = 5760,
    description = 'It\'s a food item dude.',
    client = {
        image = 'bs_the-heart-stopper.png',
    },
    server = {
        export = 'randol_burgershot.burger-heartstopper',
    }
},

['burger-mshakeformula'] = {
    label = 'Milkshake Formula',
    weight = 125,
    stack = true,
    close = true,
    description = 'An Ingredient',
    client = {
        image = 'bs_ingredients_icecream.png',
    }
},

['burger-fries'] = {
    label = 'Fries',
    weight = 125,
    stack = true,
    close = true,
    decay = true,
    degrade = 5760,
    description = 'It\'s a food item dude.',
    client = {
        image = 'bs_fries.png',
    },
    server = {
        export = 'randol_burgershot.burger-fries',
    }
},

['burger-torpedo'] = {
    label = 'Torpedo',
    weight = 310,
    stack = true,
    close = true,
    decay = true,
    degrade = 5760,
    description = 'It\'s a food item dude.',
    client = {
        image = 'bs_torpedo.png',
    },
    server = {
        export = 'randol_burgershot.burger-torpedo',
    }
},

['burger-bun'] = {
    label = 'Bun',
    weight = 125,
    stack = true,
    close = true,
    description = 'An Ingredient',
    client = {
        image = 'bs_bun.png',
    }
},

['burger-softdrink'] = {
    label = 'Soft Drink',
    weight = 125,
    stack = true,
    close = true,
    decay = true,
    degrade = 5760,
    description = 'An Ice Cold Drink.',
    client = {
        image = 'bs_softdrink.png',
    },
    server = {
        export = 'randol_burgershot.burger-softdrink',
    }
    },
--     ["phone"] = {
--     label = "Phone",
--     weight = 100,
--     stack = false,
--     consume = 0,
--     client = {
--         export = "yseries.UsePhoneItem",
--         remove = function()
--             TriggerEvent("yseries:phone-item-removed")
--         end,
--         add = function()
--             TriggerEvent("yseries:phone-item-added")
--         end
--     }
-- },
["yphone_natural"] = {
    label = "YPhone Natural",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yphone_black"] = {
    label = "YPhone Black",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yphone_white"] = {
    label = "YPhone White",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yphone_blue"] = {
    label = "Phone",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yflip_mint"] = {
    label = "YFlip Mint",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yflip_gold"] = {
    label = "YFlip Gold",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yflip_graphite"] = {
    label = "YFlip Graphite",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yflip_lavender"] = {
    label = "YFlip Lavender",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["y24_black"] = {
    label = "Y24 Black",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["y24_silver"] = {
    label = "Y24 Silver",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["y24_violet"] = {
    label = "Y24 Violet",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["y24_yellow"] = {
    label = "Y24 Yellow",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yfold_black"] = {
    label = "YFold Black",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},
["yphone_fold_black"] = {
    label = "YPhone Fold Black",
    weight = 100,
    stack = false,
    consume = 0,
    client = {
        export = "yseries.UsePhoneItem",
        remove = function()
            TriggerEvent("yseries:phone-item-removed")
        end,
        add = function()
            TriggerEvent("yseries:phone-item-added")
        end
    }
},

['ys_sim_card'] = {
    label = 'Sim Card',
    stack = false,
    weight = 10,
    consume = 0,
},
['rawburgerpatty'] = {
	label = 'Burger patty',
	weight = 100,
	degrade = 120,
},

['cookedburgerpatty'] = {
	label = 'Cooked Burger patty',
	weight = 100,
	degrade = 30,
},

['veganburgerpatty'] = {
	label = 'Vegan Burger patty',
	weight = 100,
	degrade = 250,
},

['cookedveganburgerpatty'] = {
	label = 'Cooked Vegan Burger patty',
	weight = 100,
	degrade = 30,
},

['potato'] = {
	label = 'Potato',
	weight = 100,
},

['cutpotato'] = {
	label = 'Sliced Potato',
	weight = 100,
},

['onion'] = {
	label = 'Onion',
	weight = 60,
},

['cutonion'] = {
	label = 'Sliced Onion',
	weight = 60,
},

['tomato'] = {
	label = 'Tomato',
	weight = 40,
},

['cuttomato'] = {
	label = 'Sliced Tomato',
	weight = 40,
},

['burgerbun'] = {
	label = 'Burger bun',
	weight = 50,
},

['cheddar'] = {
	label = 'Cheddar cheese',
	weight = 20,
},

['lettuce'] = {
	label = 'Lettuce',
	weight = 40,
},

['cutlettuce'] = {
	label = 'Sliced Lettuce',
	weight = 40,
},

['nuggets'] = {
	label = 'Raw chicken nuggets',
	weight = 40,
	degrade = 120,
},

['struk'] = {
	label = 'struk',
	weight = 1,
},

['bleeder'] = {
	label = 'Bleeder burger',
	weight = 250,
	client = {
		status = { hunger = 40000 },
		anim = 'eating',
		prop = { model = `prop_cs_burger_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0) },
		usetime = 2500,
		notification = 'Pojeo si burger'
	},
	degrade = 60,
},

['meatfree'] = {
	label = 'Vegan burger',
	weight = 250,
	client = {
		status = { hunger = 40000 },
		anim = 'eating',
		prop = { model = `prop_cs_burger_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0) },
		usetime = 2500,
		notification = 'Pojeo si burger'
	},
	degrade = 60,
},

['torpedo'] = {
	label = 'Torpedo sandwich',
	weight = 250,
	client = {
		status = { hunger = 40000 },
		anim = 'eating',
		prop = { model = `prop_cs_burger_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0) },
		usetime = 2500,
		notification = 'Pojeo si burger'
	},
	degrade = 60,
},

['cookednuggets'] = {
	label = 'Chicken nuggets',
	weight = 250,
	client = {
		status = { hunger = 40000 },
		anim = 'eating',
		prop = { model = `prop_cs_burger_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0) },
		usetime = 2500,
		notification = 'You ate chicken nuggets'
	},
	degrade = 60,
},

['heartstopper'] = {
	label = 'Heartstopper burger',
	weight = 250,
	client = {
		status = { hunger = 40000 },
		anim = 'eating',
		prop = { model = `prop_cs_burger_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0) },
		usetime = 2500,
		notification = 'Pojeo si burger'
	},
	degrade = 60,
},

['moneyshot'] = {
	label = 'Money shot burger',
	weight = 250,
	client = {
		status = { hunger = 40000 },
		anim = 'eating',
		prop = { model = `prop_cs_burger_01`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0) },
		usetime = 2500,
		notification = 'Pojeo si burger'
	},
	degrade = 60,
},

['fries'] = {
	label = 'Fries',
	weight = 100,
	client = {
		status = { hunger = 30000 },
		anim = 'eating',
		prop = { model = `prop_food_bs_chips`, pos = vec3(0.13, 0.05, 0.02), rot = vec3(-50.0, 16.0, 60.0) },
		usetime = 2500,
		notification = 'Pojeo si pomfrit'
	},
	degrade = 60,
},

['bscoke'] = {
	label = 'Burgershot Coke',
	weight = 100,
	client = {
		status = { thirst = 120000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `prop_food_bs_juice01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
		usetime = 2500,
		notification = 'Popio si kole'
	},
},

['bscoffee'] = {
	label = 'Burgershot Coffee',
	weight = 100,
	client = {
		status = { thirst = 120000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `prop_food_bs_coffee`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
		usetime = 2500,
		notification = 'Popio si kafe'
	}
},

['milkshake'] = {
	label = 'Milkshake',
	weight = 100,
	client = {
		status = { thirst = 120000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = `prop_cs_bs_cup`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
		usetime = 2500,
		notification = 'Popio si milkshake'
	},
	degrade = 60,
},
    ['burgerbag'] = {
		label = 'To Go Bag',
		weight = 100,
		stack = false,
		description = 'To go bag from Burgershot container your food!'
	},

	['rawbeef'] = {
		label = 'Raw Beef',
		weight = 100,
		stack = true,
		description = 'Raw beef!!',
	},

	['rawchicken'] = {
		label = 'Raw Chicken',
		weight = 100,
		stack = true,
		description = 'Raw chicken breast!',
	},

	['rawpotato'] = {
		label = 'Raw Potato',
		weight = 100,
		stack = true,
		description = 'Uncooked Potato!',
	},

	['rawonion'] = {
		label = 'Raw Onion',
		weight = 100,
		stack = true,
		description = 'Uncooked Onion!',
	},

	['slicedonion'] = {
		label = 'Sliced Onion',
		weight = 100,
		stack = true,
		description = 'Onion Slices!',
	},

	['rawbacon'] = {
		label = 'Raw Bacon',
		weight = 100,
		stack = true,
		description = 'Raw BACON!!',
	},

	['cookedbacon'] = {
		label = 'Cooked Bacon',
		weight = 100,
		stack = true,
		description = 'Cooked Bacon!',
	},

	['burgerpatty'] = {
		label = 'Burger Patty',
		weight = 100,
		stack = true,
		description = 'Cooked Burger Patty!',
	},

	['salt'] = {
		label = 'Salt',
		weight = 100,
		stack = true,
		description = 'Salt!',
	},

	['breadcrumbs'] = {
		label = 'Breadcrumbs',
		weight = 100,
		stack = true,
	},

	['burger_shotnuggets'] = {
		label = 'Burgershot Chicken Nuggets',
		weight = 100,
		stack = true,
		description = 'Best nuggets in town!',
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
		},
	},

	['burger_fries'] = {
		label = 'Burgershot Fries',
		weight = 100,
		stack = true,
		description = 'Best fries in town!',
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
		},
	},

	['burger_shotrings'] = {
		label = 'Burgershot Onion Rings',
		weight = 100,
		stack = true,
		description = 'Best onion rings in town!',
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
		},
	},

	['bacon_cheeseburger'] = {
		label = 'Bacon Cheeseburger',
		weight = 100,
		stack = true,
		description = 'Burgershots finest!',
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
		},
	},

	['burger_bleeder'] = {
		label = 'Bleeder Burger',
		weight = 100,
		stack = true,
		description = 'Bleeder burger!',
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
		},
	},

	['burger_heartstopper'] = {
		label = 'Heartstopper Burger',
		weight = 100,
		stack = true,
		description = 'Heartstopper burger!',
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
		},
	},

	['burger_moneyshot'] = {
		label = 'Moneyshot Burger',
		weight = 100,
		stack = true,
		description = 'Moneyshot burger!',
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
		},
	},

	['burger_torpedo'] = {
		label = 'Torpedo Burger',
		weight = 100,
		stack = true,
		description = 'Torpedo burger!',
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
		},
	},

	['burgerbun'] = {
		label = 'Burger Buns',
		weight = 100,
		stack = true,
	},

	['cheese'] = {
		label = 'Cheese',
		weight = 100,
		stack = true,
	},

	['burger_softdrink'] = {
		label = 'Soft Drink',
		weight = 100,
		stack = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['burger_coffee'] = {
		label = 'Coffee',
		weight = 100,
		stack = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
		}
	},

	['cola'] = {
		label = 'Cola',
		weight = 100,
		stack = true,
	},

	['emptycup'] = {
		label = 'Empty Cup',
		weight = 100,
		stack = true,
	},

	['coffeebeans'] = {
		label = 'Coffee Beans',
		weight = 100,
		stack = true,
	},

	['creamer'] = {
		label = 'Creamer',
		weight = 100,
		stack = true,
	},

	['groundbeef'] = {
		label = 'Ground Beef',
		weight = 100,
		stack = true,
	},

	['groundchicken'] = {
		label = 'Ground Chicken',
		weight = 100,
		stack = true,
	},

	['slicedpotato'] = {
		label = 'Sliced Potatoes',
		weight = 100,
		stack = true,
	},
    ["cryptostick"] = {
    label = "Crypto Stick",
    weight = 50,
    stack = false,
},

["phone_dongle"] = {
    label = "Phone Dongle",
    weight = 50,
    stack = false,
},

["powerbank"] = {
    label = "Power Bank",
    weight = 50,
    stack = false,
},

-- ['phone'] = {
--     label = 'Classic Phone',
--     weight = 150,
--     stack = false,
--     consume = 0,
--     client = {
--         export = "qs-smartphone-pro.UsePhoneItem",
--         add = function(total)
--             TriggerServerEvent('phone:itemAdd')
--         end,

--         remove = function(total)
--             TriggerServerEvent('phone:itemDelete')
--         end
--     }
-- },

['black_phone'] = {
    label = 'Black Phone',
    weight = 150,
    stack = false,
    consume = 0,
    client = {
        export = "qs-smartphone-pro.UsePhoneItem",
        add = function(total)
            TriggerServerEvent('phone:itemAdd')
        end,

        remove = function(total)
            TriggerServerEvent('phone:itemDelete')
        end
    }
},

['yellow_phone'] = {
    label = 'Yellow Phone',
    weight = 150,
    stack = false,
    consume = 0,
    client = {
        export = "qs-smartphone-pro.UsePhoneItem",
        add = function(total)
            TriggerServerEvent('phone:itemAdd')
        end,

        remove = function(total)
            TriggerServerEvent('phone:itemDelete')
        end
    }
},

['red_phone'] = {
    label = 'Red Phone',
    weight = 150,
    stack = false,
    consume = 0,
    client = {
        export = "qs-smartphone-pro.UsePhoneItem",
        add = function(total)
            TriggerServerEvent('phone:itemAdd')
        end,

        remove = function(total)
            TriggerServerEvent('phone:itemDelete')
        end
    }
},

['green_phone'] = {
    label = 'Green Phone',
    weight = 150,
    stack = false,
    consume = 0,
    client = {
        export = "qs-smartphone-pro.UsePhoneItem",
        add = function(total)
            TriggerServerEvent('phone:itemAdd')
        end,

        remove = function(total)
            TriggerServerEvent('phone:itemDelete')
        end
    }
},

['white_phone'] = {
    label = 'White Phone',
    weight = 150,
    stack = false,
    consume = 0,
    client = {
        export = "qs-smartphone-pro.UsePhoneItem",
        add = function(total)
            TriggerServerEvent('phone:itemAdd')
        end,

        remove = function(total)
            TriggerServerEvent('phone:itemDelete')
        end
    }
},

    -- **Box Package**
    ['nasiayamkampus'] = {
        label = 'Nasi Ayam Kampus',
        weight = 220,
        degrade = 4320,
        decay = true,
        stack = true,
        client = {
            status = { hunger = 800000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = 'Kamu memakan Nasi Ayam Kampus yang Enak!'
        },
        description = 'Makanan dari Waroeng Podjok, Expired : 3 Hari',
    },

	['estt'] = {
        label = 'Es TT',
        weight = 220,
        degrade = 4320,
        decay = true,
        stack = true,
        client = {
            status = { thirst = 800000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
            notification = 'Kamu meminum Es TT yang Segar!'
        },
        description = 'Minuman dari Waroeng Podjok, Expired : 3 Hari',
    },

    ['satesususapi'] = {
        label = 'Sate Susu Sapi',
        weight = 220,
        degrade = 4320,
        decay = true,
        stack = true,
        client = {
            status = { hunger = 800000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = 'Kamu memakan Sate Susu Sapi yang Enak!'
        },
        description = 'Makanan dari Waroeng Podjok, Expired : 3 Hari',
    },

	['kopijandahangat'] = {
        label = 'Kopi Janda Hangat',
        weight = 220,
        degrade = 4320,
        decay = true,
        stack = true,
        client = {
            status = { thirst = 800000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
            notification = 'Kamu meminum Kopi Janda Hangat yang Segar!'
        },
        description = 'Minuman dari Waroeng Podjok, Expired : 3 Hari',
    },

	['miengocok'] = {
        label = 'Mie Ngocok',
        weight = 220,
        degrade = 4320,
        decay = true,
        stack = true,
        client = {
            status = { hunger = 800000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = 'Kamu memakan Mie Ngocok yang Enak!'
        },
        description = 'Makanan dari Waroeng Podjok, Expired : 3 Hari',
    },

    ['jerukperasbrondong'] = {
        label = 'Jeruk Peras Brondong',
        weight = 220,
        degrade = 4320,
        decay = true,
        stack = true,
        client = {
            status = { thirst = 800000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
            notification = 'Kamu meminum Jeruk Peras Brondong yang Segar!'
        },
        description = 'Minuman dari Waroeng Podjok, Expired : 3 Hari',
    },

['esgoyangandia'] = {
        label = 'Es Goyangan Dia',
        weight = 220,
        degrade = 4320,
        stack = true,
        decay = true,
        description = 'Ess Yang Enak, Expired : 3 Hari',
    },
    -- **RECIPES/INGREDIENTS**
    ['boxtomat'] = {
        label = 'Potongan Tomat',
        weight = 250,
        stack = true,
        description = 'Bahan bahan untuk Resto',
    },
 
    ['boxbrokoli'] = {
        label = 'Potongan Brokoli',
        weight = 250,
        stack = true,
        description = 'Bahan bahan untuk Resto',
    },
 
    ['boxwortel'] = {
        label = 'Potongan Wortel',
        weight = 250,
        stack = true,
        description = 'Bahan bahan untuk Resto',
    },
 
    ['boxkentang'] = {
        label = 'Potongan Kentang',
        weight = 250,
        stack = true,
        description = 'Bahan bahan untuk Resto',
    },
 
    ['boxtimun'] = {
        label = 'Potongan Timun',
        weight = 250,
        stack = true,
        description = 'Bahan bahan untuk Resto',
    },

    ['tomato'] = {
          label = 'Tomat',
          weight = 100,
          stack = true,
          close = true,
      },

    ['broccoli'] = {
          label = 'Brokoli',
          weight = 100,
          stack = true,
          close = true,
      },

    ['carrot'] = {
        label = 'Wortel',
        weight = 100,
        stack = true,
        close = true,
    },

  ['potato'] = {
        label = 'Kentang',
        weight = 100,
        stack = true,
        close = true,
    },

  ['pickle'] = {
        label = 'Timun',
        weight = 100,
        stack = true,
        close = true,
    },
  ['boxmakanan'] = {
        label = 'Boxmakanan',
        weight = 100,
        stack = true,
        close = true,
    },
    -- Bait
    ["bread"] = {
        label = "Bread",
        weight = 10,
        stack = true, -- assuming 'unique' is false means it should be stackable
        close = true,
        description = "Bread",
        client = {
            image = "bread.png",
        }
    },
    
    ["earthworm"] = {
        label = "Earthworm",
        weight = 10,
        stack = true,
        close = true,
        description = "Earthworm",
        client = {
            image = "earthworm.png",
        }
    },
    
    ["dough"] = {
        label = "Dough",
        weight = 10,
        stack = true,
        close = true,
        description = "Dough",
        client = {
            image = "dough.png",
        }
    },
    
    ["grub"] = {
        label = "Grub",
        weight = 10,
        stack = true,
        close = true,
        description = "Grub",
        client = {
            image = "grub.png",
        }
    },
    
    ["caddis_fly"] = {
        label = "Caddis Fly",
        weight = 10,
        stack = true,
        close = true,
        description = "Caddis Fly",
        client = {
            image = "caddis_fly.png",
        }
    },
    
    ["cheese"] = {
        label = "Cheese",
        weight = 10,
        stack = true,
        close = true,
        description = "Cheese",
        client = {
            image = "cheese.png",
        }
    },
    
    ["fly"] = {
        label = "Fly",
        weight = 10,
        stack = true,
        close = true,
        description = "Fly",
        client = {
            image = "fly.png",
        }
    },
    
    ["dragonfly"] = {
        label = "Dragonfly",
        weight = 10,
        stack = true,
        close = true,
        description = "Dragonfly",
        client = {
            image = "dragonfly.png",
        }
    },
    
    ["grasshoper"] = {
        label = "Grasshoper",
        weight = 10,
        stack = true,
        close = true,
        description = "Grasshoper",
        client = {
            image = "grasshoper.png",
        }
    },
    
    ["shrimp"] = {
        label = "Shrimp",
        weight = 10,
        stack = true,
        close = true,
        description = "Shrimp",
        client = {
            image = "shrimp.png",
        }
    },
    
    ["leech"] = {
        label = "Leech",
        weight = 10,
        stack = true,
        close = true,
        description = "Leech",
        client = {
            image = "leech.png",
        }
    },
    
    ["snail"] = {
        label = "Snail",
        weight = 10,
        stack = true,
        close = true,
        description = "Snail",
        client = {
            image = "snail.png",
        }
    },
    
    ["liver"] = {
        label = "Liver",
        weight = 10,
        stack = true,
        close = true,
        description = "Liver",
        client = {
            image = "liver.png",
        }
    },
    -- Lines
    ["express_fishing_super_line"] = {
        label = "Express Super Line 0.1mm",
        weight = 70,
        stack = true, -- assuming 'unique' is false means it should be stackable
        close = true,
        description = "Express Super Line 0.1mm",
        client = {
            image = "express_fishing_super_line.png",
        }
    },
    
    ["syberia_indiana_green"] = {
        label = "Indiana Green 0.14mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Indiana Green 0.14mm",
        client = {
            image = "syberia_indiana_green.png",
        }
    },
    
    ["syberia_indiana_white"] = {
        label = "Indiana White 0.18mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Indiana White 0.18mm",
        client = {
            image = "syberia_indiana_white.png",
        }
    },
    
    ["simmons_mono_original"] = {
        label = "Simmons Original 0.25mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Simmons Original 0.25mm",
        client = {
            image = "simmons_mono_original.png",
        }
    },
    
    ["simmons_mono_ss"] = {
        label = "Simmons SS 0.28mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Simmons SS 0.28mm",
        client = {
            image = "simmons_mono_ss.png",
        }
    },
    
    ["syberia_indiana_green_2"] = {
        label = "Indiana Green 0.32mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Indiana Green 0.32mm",
        client = {
            image = "syberia_indiana_green_2.png",
        }
    },
    
    ["syberia_indiana_white_2"] = {
        label = "Indiana White 0.36mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Indiana White 0.36mm",
        client = {
            image = "syberia_indiana_white_2.png",
        }
    },
    
    ["snake_power_line_clr"] = {
        label = "Snake Power Line 0.41mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Snake Power Line 0.41mm",
        client = {
            image = "snake_power_line_clr.png",
        }
    },
    
    ["simmons_mono_original_2"] = {
        label = "Simmons Original 0.48mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Simmons Original 0.48mm",
        client = {
            image = "simmons_mono_original_2.png",
        }
    },
    
    ["simmons_mono_ss_2"] = {
        label = "Simmons SS 0.52mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Simmons SS 0.52mm",
        client = {
            image = "simmons_mono_ss_2.png",
        }
    },
    
    ["snake_power_line_clr_2"] = {
        label = "Snake Power Line 0.65mm",
        weight = 70,
        stack = true,
        close = true,
        description = "Snake Power Line 0.65mm",
        client = {
            image = "snake_power_line_clr_2.png",
        }
    },
    
    ["solid_hipower_nylon"] = {
        label = "HiPower Nylon 0.8mm",
        weight = 70,
        stack = true,
        close = true,
        description = "HiPower Nylon 0.8mm",
        client = {
            image = "solid_hipower_nylon.png",
        }
    },
    
    ["solid_hipower_nylon_lime"] = {
        label = "HiPower Nylon L 0.85mm",
        weight = 70,
        stack = true,
        close = true,
        description = "HiPower Nylon L 0.85mm",
        client = {
            image = "solid_hipower_nylon_lime.png",
        }
    },
    
    ["solid_hipower_nylon_orange"] = {
        label = "HiPower Nylon O 0.9mm",
        weight = 70,
        stack = true,
        close = true,
        description = "HiPower Nylon O 0.9mm",
        client = {
            image = "solid_hipower_nylon_orange.png",
        }
    },
    
    ["solid_hipower_nylon_2"] = {
        label = "HiPower Nylon 1.05mm",
        weight = 70,
        stack = true,
        close = true,
        description = "HiPower Nylon 1.05mm",
        client = {
            image = "solid_hipower_nylon_2.png",
        }
    },
    
    ["solid_hipower_nylon_lime_2"] = {
        label = "HiPower Nylon L 1.15mm",
        weight = 70,
        stack = true,
        close = true,
        description = "HiPower Nylon L 1.15mm",
        client = {
            image = "solid_hipower_nylon_lime_2.png",
        }
    },
    
    ["solid_hipower_nylon_orange_2"] = {
        label = "HiPower Nylon O 1.25mm",
        weight = 70,
        stack = true,
        close = true,
        description = "HiPower Nylon O 1.25mm",
        client = {
            image = "solid_hipower_nylon_orange_2.png",
        }
    },
    -- Rods
    ["ufe_telerod_370"] = {
        label = "UFE Telerod 370",
        weight = 150,
        stack = false, -- assuming 'unique' is false means it should be stackable
        close = true,
        description = "UFE Telerod 370",
        client = {
            image = "ufe_telerod_370.png",
        }
    },
    
    ["carptack_feeder_master_250"] = {
        label = "Carptack Feeder Master 250",
        weight = 150,
        stack = false,
        close = true,
        description = "Carptack Feeder Master 250",
        client = {
            image = "carptack_feeder_master_250.png",
        }
    },
    
    ["sakura_tsubarea_tsa_552_xul"] = {
        label = "Sakura Tsubarea TSA 552 XUL",
        weight = 150,
        stack = false,
        close = true,
        description = "Sakura Tsubarea TSA 552 XUL",
        client = {
            image = "sakura_tsubarea_tsa_552_xul.png",
        }
    },
    
    ["carpex_hybid_carp_270"] = {
        label = "Carpex Hybid Carp 270",
        weight = 150,
        stack = false,
        close = true,
        description = "Carpex Hybid Carp 270",
        client = {
            image = "carpex_hybid_carp_270.png",
        }
    },
    
    ["ufe_float_x5_300"] = {
        label = "UFE Float X5 300",
        weight = 150,
        stack = false,
        close = true,
        description = "UFE Float X5 300",
        client = {
            image = "ufe_float_x5_300.png",
        }
    },
    
    ["predatek_fast_perch_210"] = {
        label = "Predatek Fast Perch 210",
        weight = 150,
        stack = false,
        close = true,
        description = "Predatek Fast Perch 210",
        client = {
            image = "predatek_fast_perch_210.png",
        }
    },
    
    ["sakura_ionizer_bass_insb_701_ml"] = {
        label = "Sakura Ionizer Bass INSB 701",
        weight = 150,
        stack = false,
        close = true,
        description = "Sakura Ionizer Bass INSB 701",
        client = {
            image = "sakura_ionizer_bass_insb_701_ml.png",
        }
    },
    
    ["sakura_redbird_rds_602_l"] = {
        label = "Sakura Redbird RDS 602 L",
        weight = 150,
        stack = false,
        close = true,
        description = "Sakura Redbird RDS 602 L",
        client = {
            image = "sakura_redbird_rds_602_l.png",
        }
    },
    
    ["carpex_cobalt_carp_360"] = {
        label = "Carpex Cobalt Carp 360",
        weight = 150,
        stack = false,
        close = true,
        description = "Carpex Cobalt Carp 360",
        client = {
            image = "carpex_cobalt_carp_360.png",
        }
    },
    
    ["sakura_salt_sniper_salss_611_mj1"] = {
        label = "Sakura Salt Sniper SALSS 611",
        weight = 150,
        stack = false,
        close = true,
        description = "Sakura Salt Sniper SALSS 611",
        client = {
            image = "sakura_salt_sniper_salss_611_mj1.png",
        }
    },
    
    ["sakura_speciz_spes_light_602_zander"] = {
        label = "Sakura Speciz Spes Light 602",
        weight = 150,
        stack = false,
        close = true,
        description = "Sakura Speciz Spes Light 602",
        client = {
            image = "sakura_speciz_spes_light_602_zander.png",
        }
    },
    
    ["sakura_redbird_rds_662"] = {
        label = "Sakura Redbird RDS 662",
        weight = 150,
        stack = false,
        close = true,
        description = "Sakura Redbird RDS 662",
        client = {
            image = "sakura_redbird_rds_662.png",
        }
    },
    
    ["sakura_salt_sniper_salss_902_h"] = {
        label = "Sakura Salt Sniper SALSS 902",
        weight = 150,
        stack = false,
        close = true,
        description = "Sakura Salt Sniper SALSS 902",
        client = {
            image = "sakura_salt_sniper_salss_902_h.png",
        }
    },
    
    ["predatek_seahunter_230"] = {
        label = "Predatek Seahunter 230",
        weight = 150,
        stack = false,
        close = true,
        description = "Predatek Seahunter 230",
        client = {
            image = "predatek_seahunter_230.png",
        }
    },
    
    ["sakura_shukan_shuc_661_lj"] = {
        label = "Sakura Shukan Shuc 661 LJ",
        weight = 150,
        stack = false,
        close = true,
        description = "Sakura Shukan Shuc 661 LJ",
        client = {
            image = "sakura_shukan_shuc_661_lj.png",
        }
    },
    
    ["ufe_powercatch_270"] = {
        label = "UFE Powercatch 270",
        weight = 150,
        stack = false,
        close = true,
        description = "UFE Powercatch 270",
        client = {
            image = "ufe_powercatch_270.png",
        }
    },
    
    ["predatek_pilk_200"] = {
        label = "Predatek Pilk 200",
        weight = 150,
        stack = false,
        close = true,
        description = "Predatek Pilk 200",
        client = {
            image = "predatek_pilk_200.png",
        }
    },
    
    ["robinson_carbonic_nordic_pilk_300"] = {
        label = "Robinson Carbonic Nordic Pilk",
        weight = 150,
        stack = false,
        close = true,
        description = "Robinson Carbonic Nordic Pilk",
        client = {
            image = "robinson_carbonic_nordic_pilk_300.png",
        }
    },
    
    ["carptack_bottom_cast_360"] = {
        label = "Carptack Bottom Cast 360",
        weight = 150,
        stack = false,
        close = true,
        description = "Carptack Bottom Cast 360",
        client = {
            image = "carptack_bottom_cast_360.png",
        }
    },
    
    ["seax_salfighter_170"] = {
        label = "Seax Salfighter 170",
        weight = 150,
        stack = false,
        close = true,
        description = "Seax Salfighter 170",
        client = {
            image = "seax_salfighter_170.png",
        }
    },
    -- Reels
    ["ufe_canta_1000"] = {
        label = "UFE Canta 1000",
        weight = 100,
        stack = false,
        close = true,
        description = "UFE Canta 1000",
        client = {
            image = "ufe_canta_1000.png",
        }
    },
    
    ["ufe_barracuda_2000bt"] = {
        label = "UFE Barracuda 2000BT",
        weight = 100,
        stack = false,
        close = true,
        description = "UFE Barracuda 2000BT",
        client = {
            image = "ufe_barracuda_2000bt.png",
        }
    },
    
    ["sakura_alpax_4508"] = {
        label = "Sakura Alpax 4508",
        weight = 100,
        stack = false,
        close = true,
        description = "Sakura Alpax 4508",
        client = {
            image = "sakura_alpax_4508.png",
        }
    },
    
    ["sakura_alpax_8508"] = {
        label = "Sakura Alpax 8508",
        weight = 100,
        stack = false,
        close = true,
        description = "Sakura Alpax 8508",
        client = {
            image = "sakura_alpax_8508.png",
        }
    },
    
    ["ufe_belona_4000"] = {
        label = "UFE Belona 4000",
        weight = 100,
        stack = false,
        close = true,
        description = "UFE Belona 4000",
        client = {
            image = "ufe_belona_4000.png",
        }
    },
    
    ["ufe_bigspin_8000b"] = {
        label = "UFE Bigspin 8000B",
        weight = 100,
        stack = false,
        close = true,
        description = "UFE Bigspin 8000B",
        client = {
            image = "ufe_bigspin_8000b.png",
        }
    },
    
    ["ufe_batara_8000g"] = {
        label = "UFE Batara 8000G",
        weight = 100,
        stack = false,
        close = true,
        description = "UFE Batara 8000G",
        client = {
            image = "ufe_batara_8000g.png",
        }
    },
    
    ["ufe_batara_1000r"] = {
        label = "UFE Batara 1000R",
        weight = 100,
        stack = false,
        close = true,
        description = "UFE Batara 1000R",
        client = {
            image = "ufe_batara_1000r.png",
        }
    },
    
    ["robinson_big_runner_807qd"] = {
        label = "Robinson Big Runner 807QD",
        weight = 100,
        stack = false,
        close = true,
        description = "Robinson Big Runner 807QD",
        client = {
            image = "robinson_big_runner_807qd.png",
        }
    },
    
    ["spooler_catchpro_4000fd"] = {
        label = "Spooler Catchpro 4000FD",
        weight = 100,
        stack = false,
        close = true,
        description = "Spooler Catchpro 4000FD",
        client = {
            image = "spooler_catchpro_4000fd.png",
        }
    },
    
    ["ufe_opensea_8000_x"] = {
        label = "UFE Opensea 8000-X",
        weight = 100,
        stack = false,
        close = true,
        description = "UFE Opensea 8000-X",
        client = {
            image = "ufe_opensea_8000-x.png",
        }
    },
    
    ["spooler_catchpro_8000fd"] = {
        label = "Spooler Catchpro 8000FD",
        weight = 100,
        stack = false,
        close = true,
        description = "Spooler Catchpro 8000FD",
        client = {
            image = "spooler_catchpro_8000fd.png",
        }
    },
    
    ["spooler_catchpro_14000fd"] = {
        label = "Spooler Catchpro 14000FD",
        weight = 100,
        stack = false,
        close = true,
        description = "Spooler Catchpro 14000FD",
        client = {
            image = "spooler_catchpro_14000fd.png",
        }
    },
    -- Hooks
    ["ufa_bait_hook"] = {
        label = "UFA Bait",
        weight = 40,
        stack = true,
        close = true,
        description = "UFA Bait",
        client = {
            image = "ufa_bait_hook.png",
        }
    },
    
    ["ufa_sproat_hook"] = {
        label = "UFA Sproat",
        weight = 40,
        stack = true,
        close = true,
        description = "UFA Sproat",
        client = {
            image = "ufa_sproat_hook.png",
        }
    },
    
    ["captack_claw_xl_hook"] = {
        label = "Captack Claw XL",
        weight = 40,
        stack = true,
        close = true,
        description = "Captack Claw XL",
        client = {
            image = "captack_claw_xl_hook.png",
        }
    },
    
    ["ufa_sproat_g_hook"] = {
        label = "UFA Sproat-G",
        weight = 40,
        stack = true,
        close = true,
        description = "UFA Sproat-G",
        client = {
            image = "ufa_sproat_g_hook.png",
        }
    },
    
    ["carptack_carp_ss_hook"] = {
        label = "Carptack Carp S&S",
        weight = 40,
        stack = true,
        close = true,
        description = "Carptack Carp S&S",
        client = {
            image = "carptack_carp_ss_hook.png",
        }
    },
    
    ["ufa_wide_gap_bl_hook"] = {
        label = "UFA Wide Gap BL",
        weight = 40,
        stack = true,
        close = true,
        description = "UFA Wide Gap BL",
        client = {
            image = "ufa_wide_gap_bl_hook.png",
        }
    },
    
    ["ufa_aberdeen_hook"] = {
        label = "UFA Aberdeen",
        weight = 40,
        stack = true,
        close = true,
        description = "UFA Aberdeen",
        client = {
            image = "ufa_aberdeen_hook.png",
        }
    },
    
    ["ufa_octopus_bl_hook"] = {
        label = "UFA Octopus BL",
        weight = 40,
        stack = true,
        close = true,
        description = "UFA Octopus BL",
        client = {
            image = "ufa_octopus_bl_hook.png",
        }
    },
    
    ["ufa_livebait_hook"] = {
        label = "UFA Livebait",
        weight = 40,
        stack = true,
        close = true,
        description = "UFA Livebait",
        client = {
            image = "ufa_livebait_hook.png",
        }
    },
    
    ["carptack_micro_barb_hook"] = {
        label = "Carptack Micro Barb",
        weight = 40,
        stack = true,
        close = true,
        description = "Carptack Micro Barb",
        client = {
            image = "carptack_micro_barb_hook.png",
        }
    },
    
    ["carptack_carp_hook"] = {
        label = "Carptack Carp",
        weight = 40,
        stack = true,
        close = true,
        description = "Carptack Carp",
        client = {
            image = "carptack_carp_hook.png",
        }
    },
    
    ["ufa_fusion_bl_hook"] = {
        label = "UFA Fusion BL",
        weight = 40,
        stack = true,
        close = true,
        description = "UFA Fusion BL",
        client = {
            image = "ufa_fusion_bl_hook.png",
        }
    },
    
    ["predatek_octopus_hook"] = {
        label = "Predatek Octopus",
        weight = 40,
        stack = true,
        close = true,
        description = "Predatek Octopus",
        client = {
            image = "predatek_octopus_hook.png",
        }
    },
    
    ["predatek_fusion_hook"] = {
        label = "Predatek Fusion",
        weight = 40,
        stack = true,
        close = true,
        description = "Predatek Fusion",
        client = {
            image = "predatek_fusion_hook.png",
        }
    },
    -- Scuba Shit
    ["scuba"] = {
        label = "Scuba gear",
        weight = 300,
        stack = false,
        close = true,
        description = "Scuba gear",
        client = {
            image = "scuba.png",
        }
    },
    -- Fish
    
    ["alligator_gar"] = {
        label = "Alligator Gar",
        weight = 550,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "An alligator gar fish.",
        client = {
            image = "alligator_gar.png",
        }
    },
    
    ["amur_pike"] = {
        label = "Amur Pike",
        weight = 750,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "An Amur Pike fish.",
        client = {
            image = "amur_pike.png",
        }
    },
    
    ["atlantic_cod"] = {
        label = "Atlantic Cod",
        weight = 300,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "An Atlantic Cod fish.",
        client = {
            image = "atlantic_cod.png",
        }
    },
    
    ["fishing_gear"] = {
        label = "Fishing Gear",
        weight = 30,  -- Dropped a 0 from the weight
        stack = false,  -- Made non-stackable (unique item)
        close = true,  -- Equivalent to shouldClose
        description = "Essential gear for fishing.",
        client = {
            image = "fishing_gear.png",
        }
    },
    
    ["aquarium_pass"] = {
        label = "Aquarium Pass",
        weight = 30,  -- Dropped a 0 from the weight
        stack = false,  -- Made non-stackable
        close = true,  -- Equivalent to shouldClose
        description = "Pass for entry to the aquarium.",
        client = {
            image = "aquarium_pass.png",
        }
    },
    
    ["research_kit"] = {
        label = "Research Kit",
        weight = 30,  -- Dropped a 0 from the weight
        stack = false,  -- Made non-stackable
        close = true,  -- Equivalent to shouldClose
        description = "A kit useful for conducting field research.",
        client = {
            image = "research_kit.png",
        }
    },
    ["special_boots"] = {
        label = "Special Boots",
        weight = 30,  -- Dropped a 0 from the weight
        stack = false,  -- Made non-stackable
        close = true,  -- Equivalent to shouldClose
        description = "Specially designed boots for rugged terrain.",
        client = {
            image = "special_boots.png",
        }
    },
    
    ["museum_ticket"] = {
        label = "Museum Ticket",
        weight = 30,  -- Dropped a 0 from the weight
        stack = false,  -- Made non-stackable
        close = true,  -- Equivalent to shouldClose
        description = "Ticket for entry to the museum.",
        client = {
            image = "museum_ticket.png",
        }
    },
    
    ["atlantic_salmon"] = {
        label = "Atlantic Salmon",
        weight = 500,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "An Atlantic Salmon fish.",
        client = {
            image = "atlantic_salmon.png",
        }
    },
    
    ["barbel"] = {
        label = "Barbel",
        weight = 600,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Barbel fish.",
        client = {
            image = "barbel.png",
        }
    },
    
    ["beluga_sturgeon"] = {
        label = "Beluga Sturgeon",
        weight = 264,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Beluga Sturgeon fish.",
        client = {
            image = "beluga_sturgeon.png",
        }
    },
    
    ["black_grayling"] = {
        label = "Black Grayling",
        weight = 120,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Black Grayling fish.",
        client = {
            image = "black_grayling.png",
        }
    },
    
    ["blacktip_reef_shark"] = {
        label = "Blacktip Reef Shark",
        weight = 1500,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Blacktip Reef Shark.",
        client = {
            image = "blacktip_reef_shark.png",
        }
    },
    
    ["blue_marlin"] = {
        label = "Blue Marlin",
        weight = 200,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Blue Marlin fish.",
        client = {
            image = "blue_marlin.png",
        }
    },
    
    ["bluefin_tuna"] = {
        label = "Bluefin Tuna",
        weight = 270,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Bluefin Tuna fish.",
        client = {
            image = "bluefin_tuna.png",
        }
    },
    
    ["bluegill"] = {
        label = "Bluegill",
        weight = 120,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Bluegill fish.",
        client = {
            image = "bluegill.png",
        }
    },
    
    ["brook_trout"] = {
        label = "Brook Trout",
        weight = 700,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Brook Trout fish.",
        client = {
            image = "brook_trout.png",
        }
    },
    
    ["brown_trout"] = {
        label = "Brown Trout",
        weight = 230,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Brown Trout fish.",
        client = {
            image = "brown_trout.png",
        }
    },
    
    ["bull_trout"] = {
        label = "Bull Trout",
        weight = 200,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Bull Trout fish.",
        client = {
            image = "bull_trout.png",
        }
    },
    
    ["chub"] = {
        label = "Chub",
        weight = 150,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Chub fish.",
        client = {
            image = "chub.png",
        }
    },
    
    ["chum_salmon"] = {
        label = "Chum Salmon",
        weight = 600,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Chum Salmon fish.",
        client = {
            image = "chum_salmon.png",
        }
    },
    
    ["coho_salmon"] = {
        label = "Coho Salmon",
        weight = 500,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Coho Salmon fish.",
        client = {
            image = "coho_salmon.png",
        }
    },
    
    ["common_bleak"] = {
        label = "Common Bleak",
        weight = 10,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Common Bleak fish.",
        client = {
            image = "common_bleak.png",
        }
    },
    
    ["common_bream"] = {
        label = "Common Bream",
        weight = 400,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Common Bream fish.",
        client = {
            image = "common_bream.png",
        }
    },
    
    ["common_carp"] = {
        label = "Common Carp",
        weight = 700,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Common Carp fish.",
        client = {
            image = "common_carp.png",
        }
    },
    ["crucian_carp"] = {
        label = "Crucian Carp",
        weight = 140,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Crucian Carp fish.",
        client = {
            image = "crucian_carp.png",
        }
    },
    
    ["european_bass"] = {
        label = "European Bass",
        weight = 250,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A European Bass fish.",
        client = {
            image = "european_bass.png",
        }
    },
    
    ["european_eel"] = {
        label = "European Eel",
        weight = 300,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A European Eel fish.",
        client = {
            image = "european_eel.png",
        }
    },
    
    ["european_flounder"] = {
        label = "European Flounder",
        weight = 170,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A European Flounder fish.",
        client = {
            image = "european_flounder.png",
        }
    },
    
    ["european_perch"] = {
        label = "European Perch",
        weight = 500,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A European Perch fish.",
        client = {
            image = "european_perch.png",
        }
    },
    
    ["european_sea_sturgeon"] = {
        label = "European Sea Sturgeon",
        weight = 2000,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A European Sea Sturgeon.",
        client = {
            image = "european_sea_sturgeon.png",
        }
    },
    
    ["electric_eel"] = {
        label = "Electric Eel",
        weight = 1500,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "An Electric Eel.",
        client = {
            image = "electric_eel.png",
        }
    },
    
    ["garfish"] = {
        label = "Garfish",
        weight = 50,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Garfish.",
        client = {
            image = "garfish.png",
        }
    },
    
    ["giant_freshwater_stingray"] = {
        label = "Giant Freshwater Stingray",
        weight = 350,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Giant Freshwater Stingray.",
        client = {
            image = "giant_freshwater_stingray.png",
        }
    },
    
    ["giant_grouper"] = {
        label = "Giant Grouper",
        weight = 260,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Giant Grouper fish.",
        client = {
            image = "giant_grouper.png",
        }
    },
    
    ["giant_squid"] = {
        label = "Giant Squid",
        weight = 2000,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Giant Squid.",
        client = {
            image = "giant_squid.png",
        }
    },
    
    ["giant_trevally"] = {
        label = "Giant Trevally",
        weight = 200,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Giant Trevally fish.",
        client = {
            image = "giant_trevally.png",
        }
    },
    
    ["golden_trout"] = {
        label = "Golden Trout",
        weight = 40,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Golden Trout fish.",
        client = {
            image = "golden_trout.png",
        }
    },
    
    ["grass_carp"] = {
        label = "Grass Carp",
        weight = 120,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Grass Carp fish.",
        client = {
            image = "grass_carp.png",
        }
    },
    
    ["grass_pickerel"] = {
        label = "Grass Pickerel",
        weight = 90,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Grass Pickerel fish.",
        client = {
            image = "grass_pickerel.png",
        }
    },
    
    ["grayling"] = {
        label = "Grayling",
        weight = 80,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Grayling fish.",
        client = {
            image = "grayling.png",
        }
    },
    
    ["great_barracuda"] = {
        label = "Great Barracuda",
        weight = 900,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Great Barracuda fish.",
        client = {
            image = "great_barracuda.png",
        }
    },
    
    ["grey_snapper"] = {
        label = "Grey Snapper",
        weight = 400,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Grey Snapper fish.",
        client = {
            image = "grey_snapper.png",
        }
    },
    
    ["huchen"] = {
        label = "Huchen",
        weight = 1500,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Huchen fish.",
        client = {
            image = "huchen.png",
        }
    },
    
    ["ide"] = {
        label = "Ide",
        weight = 100,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "An Ide fish.",
        client = {
            image = "ide.png",
        }
    },
    
    ["indian_threadfish"] = {
        label = "Indian Threadfish",
        weight = 250,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "An Indian Threadfish.",
        client = {
            image = "indian_threadfish.png",
        }
    },
    
    ["lake_sturgeon"] = {
        label = "Lake Sturgeon",
        weight = 1600,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Lake Sturgeon fish.",
        client = {
            image = "lake_sturgeon.png",
        }
    },
    
    ["largemouth_bass"] = {
        label = "Largemouth Bass",
        weight = 100,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Largemouth Bass fish.",
        client = {
            image = "largemouth_bass.png",
        }
    },
    
    ["mahi_mahi"] = {
        label = "Mahi-Mahi",
        weight = 1000,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Mahi-Mahi fish.",
        client = {
            image = "mahi_mahi.png",
        }
    },
    
    ["malabar_grouper"] = {
        label = "Malabar Grouper",
        weight = 1500,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Malabar Grouper fish.",
        client = {
            image = "malabar_grouper.png",
        }
    },
    
    ["mirror_carp"] = {
        label = "Mirror Carp",
        weight = 700,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Mirror Carp fish.",
        client = {
            image = "mirror_carp.png",
        }
    },
    
    ["northern_pike"] = {
        label = "Northern Pike",
        weight = 500,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Northern Pike fish.",
        client = {
            image = "northern_pike.png",
        }
    },
    
    ["pink_river_dolphin"] = {
        label = "Pink River Dolphin",
        weight = 1550,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Pink River Dolphin.",
        client = {
            image = "pink_river_dolphin.png",
        }
    },
    
    ["pink_salmon"] = {
        label = "Pink Salmon",
        weight = 200,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Pink Salmon fish.",
        client = {
            image = "pink_salmon.png",
        }
    },
    
    ["prussian_carp"] = {
        label = "Prussian Carp",
        weight = 90,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Prussian Carp fish.",
        client = {
            image = "prussian_carp.png",
        }
    },
    
    ["pufferfish"] = {
        label = "Pufferfish",
        weight = 150,  -- Dropped a 0 from the weight
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Pufferfish.",
        client = {
            image = "pufferfish.png",
        }
    },
    
    ["pumpkinseed"] = {
        label = "Pumpkinseed",
        weight = 40,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Pumpkinseed fish.",
        client = {
            image = "pumpkinseed.png",
        }
    },
    
    ["rainbow_trout"] = {
        label = "Rainbow Trout",
        weight = 100,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Rainbow Trout fish.",
        client = {
            image = "rainbow_trout.png",
        }
    },
    
    ["red_lionfish"] = {
        label = "Red Lionfish",
        weight = 100,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Red Lionfish.",
        client = {
            image = "red_lionfish.png",
        }
    },
    
    ["redeye_piranha"] = {
        label = "Redeye Piranha",
        weight = 120,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Redeye Piranha.",
        client = {
            image = "redeye_piranha.png",
        }
    },
    
    ["redfin_pickerel"] = {
        label = "Redfin Pickerel",
        weight = 40,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Redfin Pickerel fish.",
        client = {
            image = "redfin_pickerel.png",
        }
    },
    
    ["roach"] = {
        label = "Roach",
        weight = 50,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Roach fish.",
        client = {
            image = "roach.png",
        }
    },
    
    ["sea_trout"] = {
        label = "Sea Trout",
        weight = 200,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Sea Trout fish.",
        client = {
            image = "sea_trout.png",
        }
    },
    
    ["silver_carp"] = {
        label = "Silver Carp",
        weight = 1000,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Silver Carp fish.",
        client = {
            image = "silver_carp.png",
        }
    },
    
    ["skeleton"] = {
        label = "Skeleton",
        weight = 10,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Skeleton.",
        client = {
            image = "skeleton.png",
        }
    },
    
    ["smallmouth_bass"] = {
        label = "Smallmouth Bass",
        weight = 150,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Smallmouth Bass fish.",
        client = {
            image = "smallmouth_bass.png",
        }
    },
    
    ["sockeye_salmon"] = {
        label = "Sockeye Salmon",
        weight = 300,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Sockeye Salmon fish.",
        client = {
            image = "sockeye_salmon.png",
        }
    },
    
    ["south_sea_pearl_oyster"] = {
        label = "South Sea Pearl Oyster",
        weight = 10,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A South Sea Pearl Oyster.",
        client = {
            image = "south_sea_pearl_oyster.png",
        }
    },
    
    ["tench"] = {
        label = "Tench",
        weight = 250,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Tench fish.",
        client = {
            image = "tench.png",
        }
    },
    
    ["tiger_shark"] = {
        label = "Tiger Shark",
        weight = 5500,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Tiger Shark.",
        client = {
            image = "tiger_shark.png",
        }
    },
    
    ["wels_catfish"] = {
        label = "Wels Catfish",
        weight = 400,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Wels Catfish fish.",
        client = {
            image = "wels_catfish.png",
        }
    },
    
    ["white_sturgeon"] = {
        label = "White Sturgeon",
        weight = 800,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A White Sturgeon fish.",
        client = {
            image = "white_sturgeon.png",
        }
    },
    
    ["yellow_perch"] = {
        label = "Yellow Perch",
        weight = 40,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Yellow Perch fish.",
        client = {
            image = "yellow_perch.png",
        }
    },
    
    ["yellowfin_tuna"] = {
        label = "Yellowfin Tuna",
        weight = 900,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Yellowfin Tuna fish.",
        client = {
            image = "yellowfin_tuna.png",
        }
    },
    
    ["yellowtail_barracuda"] = {
        label = "Yellowtail Barracuda",
        weight = 110,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Yellowtail Barracuda.",
        client = {
            image = "yellowtail_barracuda.png",
        }
    },
    
    ["zander"] = {
        label = "Zander",
        weight = 200,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A Zander fish.",
        client = {
            image = "zander.png",
        }
    },
    
    ["paddlefish"] = {
        label = "Paddle Fish",
        weight = 1000,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A rare and illegal Paddle Fish.",
        client = {
            image = "paddlefish.png",
        }
    },
    
    ["sawfish"] = {
        label = "Saw Fish",
        weight = 1000,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A rare and illegal Saw Fish.",
        client = {
            image = "sawfish.png",
        }
    },
    
    ["eel"] = {
        label = "Eel",
        weight = 1000,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A rare and illegal Eel.",
        client = {
            image = "eel.png",
        }
    },
    
    ["hammerheadshark"] = {
        label = "Hammer Head Shark",
        weight = 2500,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A rare and illegal Hammer Head Shark.",
        client = {
            image = "hammerheadshark.png",
        }
    },
    
    ["seaturtle"] = {
        label = "Sea Turtle",
        weight = 2500,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A rare and illegal Sea Turtle.",
        client = {
            image = "seaturtle.png",
        }
    },
    
    ["leopardshark"] = {
        label = "Leopard Shark",
        weight = 2500,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A rare and illegal Leopard Shark.",
        client = {
            image = "leopardshark.png",
        }
    },
    
    ["blueshark"] = {
        label = "Blue Shark",
        weight = 4000,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A legendary and illegal Blue Shark.",
        client = {
            image = "blueshark.png",
        }
    },
    
    ["greatwhiteshark"] = {
        label = "Great White Shark",
        weight = 10000,  -- Converted weight to OxInventory format
        stack = true,  -- Made stackable
        close = true,  -- Equivalent to shouldClose
        description = "A mythic and illegal Great White Shark.",
        client = {
            image = "greatwhiteshark.png",
        }
    },
    
    -- Diving Items
    ["ancient_artifact"] = {
        label = "Ancient Artifact",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "An Ancient Artifact!",
        client = {
            image = "ancient_artifact.png",
        }
    },
    ["antique_compass"] = {
        label = "Antique Compass",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "An Antique Compass.",
        client = {
            image = "antique_compass.png",
        }
    },
    ["enchanted_jewel"] = {
        label = "Enchanted Jewel",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "An Enchanted Jewel.",
        client = {
            image = "enchanted_jewel.png",
        }
    },
    ["luxury_watch"] = {
        label = "Luxury Watch",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "An Expensive Watch.",
        client = {
            image = "luxury_watch.png",
        }
    },
    ["meteorite_ore"] = {
        label = "Meteorite Ore",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "Meteorite Ore.",
        client = {
            image = "meteorite_ore.png",
        }
    },
    ["mystic_crystal"] = {
        label = "Mystic Crystal",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "A Mystic Crystal.",
        client = {
            image = "mystic_crystal.png",
        }
    },
    ["phantom_amulet"] = {
        label = "Phantom Amulet",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "A Phantom Amulet.",
        client = {
            image = "phantom_amulet.png",
        }
    },
    ["precious_pearls"] = {
        label = "Precious Pearls",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "Handfull of Precious Pearls.",
        client = {
            image = "precious_pearls.png",
        }
    },
    ["rare_spices"] = {
        label = "Rare Spices",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "Collection of Rare Spices.",
        client = {
            image = "rare_spices.png",
        }
    },
    ["spy_gadget"] = {
        label = "Spy Gadget",
        weight = 1000,  
        stack = true,  
        close = true,  
        description = "A Spy Gadget.",
        client = {
            image = "spy_gadget.png",
        }
    },
    -- ============================================================================
-- PAKET RESTO — prefix export HARUS sama dengan name di fxmanifest: qb-resto
-- ============================================================================

	['paket_hemat'] = {
		label = 'Paket Hemat',
		weight = 220,
		degrade = 4320,
		decay = true,
		stack = true,
		close = true,
		client = {
			export = 'qb-resto.usePacket',
			usetime = 2500,
		},
		description = 'Paket Hemat dari Waroeng Podjok, Expired : 3 Hari',
	},

	['paket_jumbo'] = {
		label = 'Paket Jumbo',
		weight = 220,
		degrade = 4320,
		decay = true,
		stack = true,
		close = true,
		client = {
			export = 'qb-resto.usePacket',
			usetime = 2500,
		},
		description = 'Paket Jumbo dari Waroeng Podjok, Expired : 3 Hari',
	},

	['paket_special'] = {
		label = 'Paket Special',
		weight = 220,
		degrade = 4320,
		decay = true,
		stack = true,
		close = true,
		client = {
			export = 'qb-resto.usePacket',
			usetime = 2500,
		},
		description = 'Paket Special dari Waroeng Podjok, Expired : 3 Hari',
	},
	['tvremote'] = {
		label = 'TV Remote',
		weight = 50,
		stack = true,
		close = true,
		client = {
			export = 'ptelevision.useTvRemote'
		}
	},
     ['okokphone'] = {
        label = 'Phone',
        weight = 190,
        stack = false,
        consume = 0,
        server = {
                export = "okokPhone.oxOpenPhone"
        }
    },
    -- ['simcard'] = {
    --             label = 'Sim Card',
    --             weight = 1,
    --             stack = false,
    --             consume = 0,
    --             server = {
    --                 export = "okokPhone.oxUseSimCard"
    --             }
    --     },
    ['flametune'] = {
        label = 'Flame tune',
        weight = 1,
        stack = true,
        consume = 0,
        close = true,
        description = "ECU flame tuning.",
        server = {
            export = '88-flametune.flametune'
        }
    },
["pos_tablet"] = {
		label = "Order Tablet",
		weight = 1200,
		stack = false,
		close = true,
},
["pos_receipt"] = {
		label = "Receipt",
		weight = 20,
		stack = false,
		close = true,
},
-- ['phone'] = {
--         label = 'Phone',
--         weight = 190,
--         stack = false,
--         consume = 0,
--         client = {
--             export = "gksphone.OpenPhone"
--         }
-- },
['powerbank'] = {
    label = 'Power Bank',
    weight = 500,
    stack = false,
    close = true,
    description = 'You can use it to charge your phone',
    client = {
        image = 'powerbank.png',
    }
},
['phone'] = {
    label = 'Phone',
    weight = 700,
    stack = false,
    close = false,
    description = 'Phone',
    client = {
        image = 'phone.png',
    }
},

['simcard'] = {
    label = 'SIM Card',
    weight = 1,
    stack = false,
    close = false,
    description = 'Use to install in your phone',
    client = {
        image = 'simcard.png',
    }
},

['broken_phone'] = {
    label = 'Broken Phone',
    weight = 700,
    stack = false,
    close = false,
    description = 'Broken Phone',
    client = {
        image = 'broken_phone.png',
    }
},
['ktp'] = {
     name = 'ktp',
     label = 'Kartu Tanda Penduduk',
     weight = 10,
     type = 'item',
     image = 'ktp.png', -- Pastikan kamu punya gambar ini di qb-inventory/html/images/
     unique = true,
     useable = true,
     shouldClose = true,
     combinable = nil,
     description = 'Kartu identitas resmi sebagai warga negara.'
    },
["engine_s"] = {
	label = "Engine S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_a"] = {
	label = "Engine A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_b"] = {
	label = "Engine B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_c"] = {
	label = "Engine C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_d"] = {
	label = "Engine D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_s"] = {
	label = "Transmission S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_a"] = {
	label = "Transmission A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_b"] = {
	label = "Transmission B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_c"] = {
	label = "Transmission C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["transmission_d"] = {
	label = "Transmission D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_s"] = {
	label = "Suspension S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_a"] = {
	label = "Suspension A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_b"] = {
	label = "Suspension B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_c"] = {
	label = "Suspension C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["suspension_d"] = {
	label = "Suspension D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_s"] = {
	label = "Brake S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_a"] = {
	label = "Brake A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_b"] = {
	label = "Brake B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_c"] = {
	label = "Brake C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["brake_d"] = {
	label = "Brake D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_s"] = {
	label = "Turbo S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_a"] = {
	label = "Turbo A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_b"] = {
	label = "Turbo B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_c"] = {
	label = "Turbo C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["turbo_d"] = {
	label = "Turbo D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_s"] = {
	label = "Armour S",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_a"] = {
	label = "Armour A",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_b"] = {
	label = "Armour B",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_c"] = {
	label = "Armour C",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["armour_d"] = {
	label = "Armour D",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["engine_repair_kit"] = {
	label = "Engine repair kit",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["body_repair_kit"] = {
	label = "Body repair kit",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["cosmetics"] = {
	label = "Cosmetics",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
},
["mechanic_toolbox"] = {
	label = "Mechanics toolbox",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
	client = {
		export = 'mt_workshops.openToolboxMenu'
	}
},
["neons_controller"] = {
	label = "Neons controller",
	weight = 1000,
	stack = true,
	close = true,
	description = "",
	client = {
		export = 'mt_workshops.openLightsController'
	}
},
["mods_list"] = {
	label = "Vehicle mods list",
	weight = 0,
	stack = true,
	close = true,
	description = "",
	client = {
		export = 'mt_workshops.openCosmeticsMenu'
	}
},
["extras_controller"] = {
	label = "Vehicle extras",
	weight = 0,
	stack = true,
	close = true,
	description = "",
	client = {
		export = 'mt_workshops.openExtrasMenu'
	}
},
	['crutch'] = {
		label = 'Crutch',
		weight = 100,
		stack = false,
		close = true,
	},

	['wheelchair'] = {
		label = 'Wheelchair',
		weight = 100,
		stack = false,
		close = true,
	},

	['stretcher'] = {
		label = 'Stretcher',
		weight = 100,
		stack = false,
		close = true,
	},

	['medical_kit'] = {
		label = 'Medical Kit',
		weight = 200,
		stack = false,
		close = false,
		description = 'A basic medical kit containing essential supplies for treating minor injuries and illnesses.',
	},

	['advanced_medical_kit'] = {
		label = 'Advanced Medical Kit',
		weight = 200,
		stack = false,
		close = false,
		description = 'A more advanced medical kit containing additional supplies and equipment for treating injuries and illnesses.',
	},

	['blood_bag_250'] = {
		label = 'Blood Bag 250ml',
		weight = 250,
		stack = true,
		close = false,
		description = 'A 250ml bag of blood used for blood transfusions.',
	},

	['blood_bag_500'] = {
		label = 'Blood Bag 500ml',
		weight = 500,
		stack = true,
		close = false,
		description = 'A 500ml bag of blood used for blood transfusions.',
	},

	['painkillers'] = {
		label = 'Painkillers',
		weight = 50,
		stack = true,
		close = false,
		description = 'A medication used to relieve pain and reduce fever.',
	},

	['adrenaline'] = {
		label = 'Adrenaline',
		weight = 50,
		stack = true,
		close = false,
	},

	['morphine'] = {
		label = 'Morphine',
		weight = 50,
		stack = true,
		close = false,
		description = 'A medication used to relieve pain and reduce fever.',
	},

	['suture_kit'] = {
		label = 'Suture Kit',
		weight = 100,
		stack = true,
		close = false,
		description = 'A medical device used to close wounds or surgical incisions.',
	},

	['icepack'] = {
		label = 'Ice Pack',
		weight = 100,
		stack = true,
		close = false,
		description = 'A bag of ice used to reduce swelling and numb pain.',
	},

	['splint'] = {
		label = 'Splint',
		weight = 100,
		stack = true,
		close = false,
		description = 'A device that is used to apply pressure to a limb.',
	},

	['defibrilator'] = {
		label = 'Defibrillator',
		weight = 500,
		stack = false,
		close = true,
	},

	['bodybag'] = {
		label = 'Body Bag',
		weight = 500,
		stack = true,
		close = false,
	},

	['gauze'] = {
		label = 'Gauze',
		weight = 20,
		stack = true,
		close = true,
		description = 'A thin, transparent fabric with a loose open weave, used for dressings, bandages, and surgical sponges.',
	},

	['bandage'] = {
		label = 'Bandage',
		description = 'Very good for stopping bleeding and small injuries',
		weight = 115,
		stack = true,
		close = true
	},

	['ointment'] = {
		label = 'Ointment',
		weight = 50,
		stack = true,
		close = true,
		description = 'A medical cream used to promote healing and prevent infection in minor cuts, scrapes, and burns.',
	},

	['disinfectant'] = {
		label = 'Disinfectant',
		weight = 50,
		stack = true,
		close = true,
		description = 'A liquid that kills bacteria and other microorganisms on surfaces.',
	},

	['cyclonamine'] = {
		label = 'Cyclonamine',
		weight = 50,
		stack = true,
		close = true,
	},

	['tourniquet'] = {
		label = 'Tourniquet',
		weight = 100,
		stack = true,
		close = true,
		description = 'A device that is used to apply pressure to a limb.',
	},

	['medicbag'] = {
		label = 'Medic Bag',
		weight = 500,
		stack = false,
		close = true,
		description = 'A bag containing medical supplies and equipment.',
	},

	['antipyretics'] = {
		label = 'Antipyretics',
		weight = 50,
		stack = true,
		close = true,
		description = 'A medication that reduces fever.',
	},

	['ambulance_gps'] = {
		label = 'Ambulance GPS',
		weight = 100,
		stack = false,
		close = true,
	},
	['police_rappel'] = {
		label = 'Police Rappel',
		weight = 100,
		stack = false,
		close = true,
		consume = 0,
		client = {
			event = 'p_policejob/client/heli/usePoliceRappel'
		}
	},
	
	['fingerprint_scanner'] = {
		label = 'Fingerprint Scanner',
		weight = 500,
		stack = false,
		close = true,
		client = {
			export = 'p_policejob.useScanner'
		}
	},

    ['spike_strip'] = {
		label = 'Spike strip',
		weight = 50,
		stack = true,
		consume = 1,
		client = {
			export = 'p_policejob.spike_strip'
		}
	},

	['road_cone'] = {
		label = 'Road cone',
		weight = 50,
		stack = true,
	},

	['consign'] = {
		label = 'Road sign',
		weight = 50,
		stack = true,
	},

	['barrier'] = {
		label = 'Road barrier',
		weight = 50,
		stack = true,
	},

	['roadcone_light'] = {
		label = 'Road cone light',
		weight = 50,
		stack = true,
	},

	['headbag'] = {
		label = 'Head bag',
		weight = 50,
		stack = false,
		close = false
	},

	['police_diving_suit'] = {
		label = 'Police Diving Suit',
		weight = 2000,
		consume = 0,
		stack = false,
		server = {
			export = 'p_policejob.police_diving_suit'
		}
	},

	['player_clothes'] = {
		label = 'Your clothes',
		weight = 250,
		consume = 0,
		stack = false,
		server = {
			export = 'p_policejob.player_clothes'
		}
	},

	['fingerprint'] = {
		label = 'Fingerprint Sample',
		weight = 5,
		stack = false,
		consume = 0,
	},

	['bullet'] = {
		label = 'Bullet Sample',
		weight = 5,
		stack = false,
		consume = 0
	},

	['blood'] = {
		label = 'Blood Sample',
		weight = 5,
		stack = false,
		consume = 0
	},

	['tracking_band'] = {
		label = 'GPS Band',
		weight = 300,
		stack = false,
		close = false,
		consume = 0
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['vest_normal'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		consume = 1,
		client = {
			export = 'p_policejob.vest_normal'
		}
	},

	['vest_strong'] = {
		label = 'Strong Bulletproof Vest',
		weight = 3000,
		stack = false,
		consume = 1,
		client = {
			export = 'p_policejob.vest_strong'
		}
	},

	['body_cam'] = {
		label = 'Police Bodycam',
		weight = 200,
		consume = 0,
		stack = false,
		server = {
			export = 'p_policejob.body_cam'
		}
	},

	['gps'] = {
		label = 'GPS',
		weight = 100,
		stack = false,
		consume = 0,
		allowArmed = true,
		client = {
			export = 'p_policejob.gps',
			remove = function(total)
				if total < 1 then
					local activeGPS = exports['p_policejob']:isGpsActive()
					if activeGPS then
						exports['p_policejob']:gps()
					end
				end
			end
		}
	},

	['camera'] = {
		label = 'Camera',
		stack = false,
		close = true,
		consume = 0,
		weight = 1000,
		client = {
			export = 'p_policejob.camera'
		}
	},

	['photo'] = {
		label = 'Photo',
		stack = false,
		close = true,
		weight = 10,
		consume = 0,
		server = {
			export = 'p_policejob.photo'
		},
		buttons = {
			{
				label = 'Copy URL',
				action = function(slot)
					TriggerServerEvent('p_policejob/server_camera/CopyPhoto', slot)
				end
			},
		},
	},

	['handcuffs'] = {
		label = 'Handcuffs',
		weight = 100,
		stack = false,
		close = false,
		consume = 0,
		client = {
			export = 'p_policejob.handcuffs'
		}
	},

	['cable_ties'] = {
		label = 'Cable ties',
		weight = 100,
		stack = false,
		close = false,
		consume = 0
	},

	['mouthtape'] = {
		label = 'Mouth Tape',
		weight = 100,
		stack = false,
		close = false,
		consume = 0
	},

	['police_shield'] = {
		label = 'Police Shield',
		weight = 250,
		stack = false,
		close = false,
		consume = 0,
		client = {
			event = 'p_policejob/client/objects/togglePoliceShield'
		}
	},

	['evidence_camera'] = {
		label = 'Evidence Camera',
		weight = 100,
		stack = false,
		close = true,
		client = {
			export = 'p_policejob.evidence_camera'
		}
	},

	['megaphone'] = {
		label = 'Megaphone',
		weight = 100,
		stack = false,
		close = false,
		consume = 0,
		client = {
			export = 'p_policejob.useMegaphone'
		}
	},

	['traffic_ticket'] = {
		label = 'Traffic Ticket',
		weight = 50,
		stack = false,
		close = false,
		consume = 0,
	},

	['breathalyzer'] = {
		label = 'Breathalyzer',
		weight = 150,
		stack = false,
		close = true,
		consume = 0,
		client = {
			export = 'p_policejob.useBreathalyzer'
		}
	},

	['cuffs_key'] = {
		label = 'Handcuffs key',
	  	weight = 50,
		stack = false,
	  	close = false,
		consume = 0
	},

	['wheel_clamp'] = {
		label = 'Wheel Clamp',
		weight = 250,
		stack = false,
	  	close = false,
		consume = 0
	},
	-- SERVICE PARTS
	['mech_engine_oil'] = {
		label = 'Engine Oil',
		weight = 4500,
		stack = true,
		close = true,
		description = '5L of fully synthetic engine oil.'
	},
	['mech_oil_filter'] = {
		label = 'Oil Filter',
		weight = 400,
		stack = true,
		close = true,
		description = 'Replace together with engine oil.'
	},
	['mech_air_filter'] = {
		label = 'Air Filter',
		weight = 500,
		stack = true,
		close = true,
		description = 'Clean air for full engine power.'
	},
	['mech_fuel_filter'] = {
		label = 'Fuel Filter',
		weight = 400,
		stack = true,
		close = true,
		description = 'Protects the fuel pump from dirt.'
	},
	['mech_spark_plugs'] = {
		label = 'Spark Plugs',
		weight = 300,
		stack = true,
		close = true,
		description = 'Set of spark plugs.'
	},
	['mech_coolant'] = {
		label = 'Coolant',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Keeps the engine at working temperature.'
	},
	['mech_brake_fluid'] = {
		label = 'Brake Fluid',
		weight = 1000,
		stack = true,
		close = true,
		description = 'DOT 4 brake fluid.'
	},
	['mech_transmission_fluid'] = {
		label = 'Transmission Fluid',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Gearbox and clutch lubrication.'
	},
	['mech_brake_pads'] = {
		label = 'Brake Pads',
		weight = 1500,
		stack = true,
		close = true,
		description = 'Brake pads for one axle.'
	},
	['mech_tyre'] = {
		label = 'Tyre',
		weight = 9000,
		stack = true,
		close = true,
		consume = 0,
		description = 'All-season tyre.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_timing_belt'] = {
		label = 'Timing Belt',
		weight = 800,
		stack = true,
		close = true,
		description = 'If it snaps, the engine is gone.'
	},

	-- CORE PARTS
	['mech_engine_parts'] = {
		label = 'Engine Rebuild Kit',
		weight = 25000,
		stack = true,
		close = true,
		description = 'Pistons, rings, gaskets and bearings for an engine rebuild.'
	},
	['mech_transmission_parts'] = {
		label = 'Transmission Rebuild Kit',
		weight = 18000,
		stack = true,
		close = true,
		description = 'Gears, synchros and seals for a gearbox rebuild.'
	},
	['mech_clutch_kit'] = {
		label = 'Clutch Kit',
		weight = 7000,
		stack = true,
		close = true,
		description = 'Clutch disc, pressure plate and release bearing.'
	},
	['mech_radiator'] = {
		label = 'Radiator',
		weight = 6000,
		stack = true,
		close = true,
		description = 'Engine cooling radiator.'
	},
	['mech_alternator'] = {
		label = 'Alternator',
		weight = 5000,
		stack = true,
		close = true,
		description = 'Charges the battery while driving.'
	},
	['mech_car_battery'] = {
		label = 'Car Battery',
		weight = 15000,
		stack = true,
		close = true,
		consume = 0,
		description = '12V 70Ah car battery.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_fuel_pump'] = {
		label = 'Fuel Pump',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Electric fuel pump.'
	},
	['mech_brake_discs'] = {
		label = 'Brake Discs',
		weight = 10000,
		stack = true,
		close = true,
		description = 'Brake discs for one axle.'
	},
	['mech_shock_absorber'] = {
		label = 'Shock Absorber',
		weight = 3000,
		stack = true,
		close = true,
		description = 'Gas-filled shock absorber.'
	},
	['mech_turbocharger'] = {
		label = 'Turbocharger',
		weight = 8000,
		stack = true,
		close = true,
		description = 'Replacement turbocharger.'
	},

	-- ELECTRIC VEHICLES
	['mech_ev_battery_module'] = {
		label = 'EV Battery Module',
		weight = 20000,
		stack = true,
		close = true,
		description = 'Traction battery module for electric vehicles.'
	},
	['mech_ev_motor'] = {
		label = 'Electric Motor',
		weight = 30000,
		stack = true,
		close = true,
		description = 'Drive motor for electric vehicles.'
	},
	['mech_ev_coolant'] = {
		label = 'EV Battery Coolant',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Coolant for the traction battery.'
	},

	-- BODY
	['mech_car_door'] = {
		label = 'Car Door',
		weight = 15000,
		stack = true,
		close = true,
		description = 'Universal car door.'
	},
	['mech_car_hood'] = {
		label = 'Car Hood',
		weight = 12000,
		stack = true,
		close = true,
		description = 'Universal hood.'
	},
	['mech_car_trunk'] = {
		label = 'Trunk Lid',
		weight = 10000,
		stack = true,
		close = true,
		description = 'Universal trunk lid.'
	},
	['mech_car_bumper'] = {
		label = 'Bumper',
		weight = 6000,
		stack = true,
		close = true,
		description = 'Front or rear bumper.'
	},
	['mech_car_glass'] = {
		label = 'Car Glass',
		weight = 8000,
		stack = true,
		close = true,
		description = 'Windshield or side window.'
	},
	['mech_car_headlight'] = {
		label = 'Headlight',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Headlight assembly.'
	},
	['mech_car_wheel'] = {
		label = 'Wheel',
		weight = 15000,
		stack = true,
		close = true,
		consume = 0,
		description = 'Complete wheel with rim and tyre.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_body_panel'] = {
		label = 'Body Panel',
		weight = 10000,
		stack = true,
		close = true,
		description = 'Sheet metal for bodywork repairs.'
	},

	-- TOOLS
	['mech_obd_scanner'] = {
		label = 'OBD Scanner',
		weight = 800,
		stack = false,
		close = true,
		consume = 0,
		description = 'Reads fault codes and part condition.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_toolbox'] = {
		label = 'Toolbox',
		weight = 6000,
		stack = false,
		close = true,
		consume = 0,
		description = 'Basic mechanic tools. Can be placed on the ground.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_impact_wrench'] = {
		label = 'Impact Wrench',
		weight = 3000,
		stack = false,
		close = true,
		description = 'Needed for wheel and suspension work.'
	},
	['mech_car_jack'] = {
		label = 'Car Jack',
		weight = 8000,
		stack = false,
		close = true,
		consume = 0,
		description = 'Lifts one corner of the vehicle.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_jump_starter'] = {
		label = 'Jump Starter',
		weight = 4000,
		stack = false,
		close = true,
		consume = 0,
		description = 'Starts a vehicle with a dead battery.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_slim_jim'] = {
		label = 'Slim Jim',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		description = 'Opens locked vehicles.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_tuning_laptop'] = {
		label = 'Tuning Laptop',
		weight = 2500,
		stack = false,
		close = true,
		description = 'Calibrates engine, transmission and turbo upgrades.'
	},
	['mech_spray_gun'] = {
		label = 'Spray Gun',
		weight = 1500,
		stack = false,
		close = true,
		description = 'Needed for painting.'
	},
	['mech_service_book'] = {
		label = 'Service Book',
		weight = 200,
		stack = false,
		close = true,
		consume = 0,
		description = 'Service history of the vehicle.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},

	-- REPAIR KITS
	['mech_repair_kit'] = {
		label = 'Repair Kit',
		weight = 3000,
		stack = true,
		close = true,
		consume = 0,
		description = 'Quick fix that gets the engine running again.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_advanced_repair_kit'] = {
		label = 'Advanced Repair Kit',
		weight = 5000,
		stack = true,
		close = true,
		consume = 0,
		description = 'Full engine and body repair. Mechanics only.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_patch_kit'] = {
		label = 'Emergency Patch Kit',
		weight = 1500,
		stack = true,
		close = true,
		consume = 0,
		description = 'Temporary fix of a failed part, enough to reach a workshop.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_cleaning_kit'] = {
		label = 'Cleaning Kit',
		weight = 1000,
		stack = true,
		close = true,
		consume = 0,
		description = 'Washes dirt off the vehicle.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},

	-- MATERIALS
	['mech_scrap_metal'] = {
		label = 'Scrap Metal',
		weight = 1000,
		stack = true,
		close = true,
		description = 'Salvaged from old parts.'
	},
	['mech_aluminium'] = {
		label = 'Aluminium',
		weight = 500,
		stack = true,
		close = true,
		description = 'Salvaged from old parts.'
	},
	['mech_rubber'] = {
		label = 'Rubber',
		weight = 500,
		stack = true,
		close = true,
		description = 'Salvaged from old tyres and seals.'
	},
	['mech_plastic'] = {
		label = 'Plastic',
		weight = 300,
		stack = true,
		close = true,
		description = 'Salvaged from old parts.'
	},
	['mech_electronics'] = {
		label = 'Electronics',
		weight = 200,
		stack = true,
		close = true,
		description = 'Salvaged from electrical parts.'
	},
	['mech_used_oil'] = {
		label = 'Used Oil',
		weight = 4500,
		stack = true,
		close = true,
		description = 'Must be disposed of properly.'
	},

	-- PROPS
	['mech_traffic_cone'] = {
		label = 'Traffic Cone',
		weight = 1500,
		stack = true,
		close = true,
		consume = 0,
		description = 'Place it on the road.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_road_barrier'] = {
		label = 'Road Barrier',
		weight = 8000,
		stack = true,
		close = true,
		consume = 0,
		description = 'Place it on the road.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},
	['mech_work_sign'] = {
		label = 'Work Sign',
		weight = 3000,
		stack = true,
		close = true,
		consume = 0,
		description = 'Place it on the road.',
		client = {
			export = 'pls_mechanic.useItem'
		}
	},

	-- PERFORMANCE TUNING
	['mech_engine_stage1'] = {
		label = 'Engine Upgrade Stage 1',
		weight = 8000,
		stack = true,
		close = true,
		description = 'EMS upgrade, level 1.'
	},
	['mech_engine_stage2'] = {
		label = 'Engine Upgrade Stage 2',
		weight = 9000,
		stack = true,
		close = true,
		description = 'EMS upgrade, level 2.'
	},
	['mech_engine_stage3'] = {
		label = 'Engine Upgrade Stage 3',
		weight = 10000,
		stack = true,
		close = true,
		description = 'EMS upgrade, level 3.'
	},
	['mech_engine_stage4'] = {
		label = 'Engine Upgrade Stage 4',
		weight = 12000,
		stack = true,
		close = true,
		description = 'EMS upgrade, level 4.'
	},
	['mech_brakes_stage1'] = {
		label = 'Street Brakes',
		weight = 8000,
		stack = true,
		close = true,
		description = 'Brake upgrade, level 1.'
	},
	['mech_brakes_stage2'] = {
		label = 'Sport Brakes',
		weight = 9000,
		stack = true,
		close = true,
		description = 'Brake upgrade, level 2.'
	},
	['mech_brakes_stage3'] = {
		label = 'Race Brakes',
		weight = 10000,
		stack = true,
		close = true,
		description = 'Brake upgrade, level 3.'
	},
	['mech_transmission_stage1'] = {
		label = 'Street Transmission',
		weight = 15000,
		stack = true,
		close = true,
		description = 'Transmission upgrade, level 1.'
	},
	['mech_transmission_stage2'] = {
		label = 'Sport Transmission',
		weight = 16000,
		stack = true,
		close = true,
		description = 'Transmission upgrade, level 2.'
	},
	['mech_transmission_stage3'] = {
		label = 'Race Transmission',
		weight = 17000,
		stack = true,
		close = true,
		description = 'Transmission upgrade, level 3.'
	},
	['mech_suspension_stage1'] = {
		label = 'Lowered Suspension',
		weight = 10000,
		stack = true,
		close = true,
		description = 'Suspension upgrade, level 1.'
	},
	['mech_suspension_stage2'] = {
		label = 'Street Suspension',
		weight = 11000,
		stack = true,
		close = true,
		description = 'Suspension upgrade, level 2.'
	},
	['mech_suspension_stage3'] = {
		label = 'Sport Suspension',
		weight = 12000,
		stack = true,
		close = true,
		description = 'Suspension upgrade, level 3.'
	},
	['mech_suspension_stage4'] = {
		label = 'Competition Suspension',
		weight = 13000,
		stack = true,
		close = true,
		description = 'Suspension upgrade, level 4.'
	},
	['mech_armor_stage1'] = {
		label = 'Armor Upgrade 20%',
		weight = 15000,
		stack = true,
		close = true,
		description = 'Armor upgrade, level 1.'
	},
	['mech_armor_stage2'] = {
		label = 'Armor Upgrade 40%',
		weight = 20000,
		stack = true,
		close = true,
		description = 'Armor upgrade, level 2.'
	},
	['mech_armor_stage3'] = {
		label = 'Armor Upgrade 60%',
		weight = 25000,
		stack = true,
		close = true,
		description = 'Armor upgrade, level 3.'
	},
	['mech_armor_stage4'] = {
		label = 'Armor Upgrade 80%',
		weight = 30000,
		stack = true,
		close = true,
		description = 'Armor upgrade, level 4.'
	},
	['mech_armor_stage5'] = {
		label = 'Armor Upgrade 100%',
		weight = 35000,
		stack = true,
		close = true,
		description = 'Armor upgrade, level 5.'
	},
	['mech_turbo_kit'] = {
		label = 'Turbo Kit',
		weight = 12000,
		stack = true,
		close = true,
		description = 'Turbo tuning kit.'
	},

	-- VISUAL TUNING
	['mech_paint_can'] = {
		label = 'Car Paint',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Paint for one layer. Needs a spray gun.'
	},
	['mech_bodykit_parts'] = {
		label = 'Body Kit Parts',
		weight = 10000,
		stack = true,
		close = true,
		description = 'Spoilers, bumpers, skirts, hoods and more.'
	},
	['mech_rims'] = {
		label = 'Rims',
		weight = 20000,
		stack = true,
		close = true,
		description = 'Set of custom rims.'
	},
	['mech_tyre_smoke_kit'] = {
		label = 'Tyre Smoke Kit',
		weight = 1000,
		stack = true,
		close = true,
		description = 'Colored tyre smoke.'
	},
	['mech_xenon_kit'] = {
		label = 'Xenon Kit',
		weight = 1500,
		stack = true,
		close = true,
		description = 'Xenon headlights.'
	},
	['mech_neon_kit'] = {
		label = 'Neon Kit',
		weight = 2000,
		stack = true,
		close = true,
		description = 'Underglow neon lights.'
	},
	['mech_window_tint'] = {
		label = 'Window Tint',
		weight = 500,
		stack = true,
		close = true,
		description = 'Tint film for all windows.'
	},
	['mech_vinyl'] = {
		label = 'Vinyl Wrap',
		weight = 1000,
		stack = true,
		close = true,
		description = 'Livery wrap.'
	},
	['mech_interior_parts'] = {
		label = 'Interior Parts',
		weight = 5000,
		stack = true,
		close = true,
		description = 'Seats, steering wheels, dashboards and more.'
	},
	['mech_horn'] = {
		label = 'Horn',
		weight = 500,
		stack = true,
		close = true,
		description = 'Custom horn.'
	},
	['mech_plate_kit'] = {
		label = 'Plate Kit',
		weight = 500,
		stack = true,
		close = true,
		description = 'Custom plate style.'
	},

	-- SUPPLY
	['mech_supply_crate'] = {
		label = 'Parts Delivery',
		weight = 20000,
		stack = false,
		close = true,
		description = 'Deliver it to the workshop supply point.'
	},
	['mech_catalytic_converter'] = {
    label = 'Catalytic Converter',
    weight = 6000,
    stack = true,
    close = true,
    description = 'Full of precious metals. Scrap dealers ask no questions.'
	},

	['mech_ecu_chip'] = {
		label = 'ECU Chip',
		weight = 200,
		stack = true,
		close = true,
		description = 'Modified engine control software. Not road legal.'
	},

	['mech_gps_jammer'] = {
		label = 'GPS Jammer',
		weight = 800,
		stack = true,
		close = true,
		consume = 0,
		description = 'Blocks the tracker of a vehicle.',
		client = {
			export = 'pls_mechanic_illegal.useItem'
		}
	},

	['mech_nitro_kit'] = {
		label = 'Nitro Kit',
		weight = 12000,
		stack = true,
		close = true,
		description = 'Nitrous oxide injection system. Not road legal.'
	},

	['mech_nitro_bottle'] = {
		label = 'Nitro Bottle',
		weight = 5000,
		stack = true,
		close = true,
		consume = 0,
		description = 'Refills the nitro system of a vehicle.',
		client = {
			export = 'pls_mechanic_illegal.useItem'
		}
	},	
	
}