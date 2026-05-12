execute run give @s stick[item_name={\
                                    "text": "权杖",\
                                    "color": "#ffae00",\
                                    "bold": true\
                                },\
                                rarity="epic",\
                                damage_resistant={types:"#ab:all_damage"},\
                                damage_type="out_of_world",\
                                attribute_modifiers=[\
                                    {\
                                        "type": "attack_damage",\
                                        "id": "base_attack_damage",\
                                        "amount": 9,\
                                        "operation": "add_value"\
                                    },\
                                    {\
                                        "type": "attack_speed",\
                                        "id": "base_attack_speed",\
                                        "amount": -1,\
                                        "operation": "add_value"\
                                    },\
                                    {\
                                        "type": "attack_damage",\
                                        "id": "minecraft_attack_damage",\
                                        "amount": 2147483647,\
                                        "operation": "add_value"\
                                    }\
                                ],\
                                item_model="ab:rod",\
                                custom_data={\
                                    "final":true,\
                                    "block":{\
                                        id:"minecraft:firework_star",\
                                        "components":{\
                                                        item_name:{\
                                                "text": "我 的 世 界",\
                                                "color": "#ffffff",\
                                                "bold": true\
                                            },\
                                            attribute_modifiers:[\
                                                {\
                                                    "type": "attack_damage",\
                                                    "id": "base_attack_damage",\
                                                    "amount": 999,\
                                                    "operation": "add_value"\
                                                },\
                                                {\
                                                    "type": "attack_speed",\
                                                    "id": "base_attack_speed",\
                                                    "amount": -1,\
                                                    "operation": "add_value"\
                                                }\
                                            ],\
                                            item_model:"ab:minecraft",\
                                            "minecraft:custom_data":{\
                                                type:minecraft\
                                            },\
                                            consumable: {\
                                                "animation": "spear",\
                                                "consume_seconds": 100000,\
                                                "sound":"music.nether.warped_forest"\
                                            },\
                                            use_cooldown:{\
                                                "seconds": 1\
                                            },\
                                            piercing_weapon:{\
                                                sound:{sound_id:"minecraft:entity.experience_orb.pickup"}\
                                            },\
                                            enchantments:{\
                                                "ab:minecraft": 1\
                                            },\
                                            max_stack_size:1,\
                                            enchantment_glint_override:false,\
                                            minimum_attack_charge:1\
                                        }\
                                    },\
                                    "type":"rod",\
                                    him:false,\
                                    grindstone:1,\
                                    command:{\
                                        select:0,\
                                        dialog:{\
                                            "type": "minecraft:multi_action",\
                                            "title": "切换指令",\
                                            "actions": [\
                                                {\
                                                    "label": "打开自定义指令栏",\
                                                    "action": {\
                                                        "type": "run_command",\
                                                        "command": "trigger ab.command_selected set 0"\
                                                    },\
                                                    "width": 200\
                                                },\
                                                {\
                                                    "label": "tp前方最近生物",\
                                                    "action": {\
                                                        "type": "run_command",\
                                                        "command": "trigger ab.command_selected set 1"\
                                                    },\
                                                    "width": 200\
                                                },\
                                                {\
                                                    "label": "kill前方最近生物",\
                                                    "action": {\
                                                        "type": "run_command",\
                                                        "command": "trigger ab.command_selected set 2"\
                                                    },\
                                                    "width": 200\
                                                }\
                                            ]\
                                        },\
                                        commands:[\
                                            {command:"function ab:rod/block/command_input_bar"},\
                                            {command:"execute positioned ^ ^ ^3 run tp @n[distance=..2.5] ~ ~ ~"},\
                                            {command:"execute positioned ^ ^ ^3 run kill @n[distance=..2.5]"}\
                                        ]\
                                    }\
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
                                    sound:{sound_id:"entity.armor_stand.place"}\
                                },\
                                enchantments={\
                                    "ab:rod": 1\
                                },\
                                max_stack_size=1,\
                                enchantment_glint_override=false,\
                                minimum_attack_charge=1\
                                ] 1