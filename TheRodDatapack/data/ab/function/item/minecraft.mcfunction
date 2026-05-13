execute run give @s firework_star[item_name={\
                                    "text": "我 的 世 界",\
                                    "color": "#ffffff",\
                                    "bold": true\
                                },\
                                rarity="epic",\
                                damage_resistant={types:"#ab:all_damage"},\
                                attribute_modifiers=[\
                                    {\
                                        "type": "attack_damage",\
                                        "id": "base_attack_damage",\
                                        "amount": 998,\
                                        "operation": "add_value"\
                                    },\
                                    {\
                                        "type": "attack_speed",\
                                        "id": "base_attack_speed",\
                                        "amount": -1,\
                                        "operation": "add_value"\
                                    },\
                                    {\
                                        "type": "movement_speed",\
                                        "id": "minecraft_movement_speed",\
                                        "amount": 0.1,\
                                        "operation": "add_value"\
                                    }\
                                ],\
                                item_model="ab:minecraft",\
                                custom_data={\
                                    type:minecraft\
                                },\
                                consumable= {\
                                    "animation": "spear",\
                                    "consume_seconds": 100000,\
                                    "sound":"music.nether.warped_forest"\
                                },\
                                use_cooldown={\
                                    "seconds": 1\
                                },\
                                piercing_weapon={\
                                    sound:{sound_id:"music.nether.warped_forest"}\
                                },\
                                enchantments={\
                                    "ab:minecraft": 1\
                                },\
                                max_stack_size=1,\
                                enchantment_glint_override=false,\
                                minimum_attack_charge=1\
                                ] 1