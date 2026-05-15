$data modify storage ab command.temp set value {\
                                                    "label": "$(title)",\
                                                    "action": {\
                                                        "type": "run_command",\
                                                        "command": "trigger ab.command_selected set $(len)"\
                                                    },\
                                                    "width": 200\
                                                }