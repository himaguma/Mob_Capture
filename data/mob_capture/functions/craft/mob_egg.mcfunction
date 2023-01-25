give @s minecraft:polar_bear_spawn_egg{EntityTag: {ReapplicationDelay:1,Radius:0f,Duration:0,WaitTime:1, id: "minecraft:area_effect_cloud", Tags: ["mob_capture"]}, mob_capture: "empty", display: {Lore: ['[{"text":"mobを収納するための","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false},{"text":"タメイゴォ","italic":true}]'], Name: '{"text":"mob egg","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}} 2

recipe take @s mob_capture:mob_egg

clear @s egg 1

advancement revoke @s only mob_capture:crafting/mob_egg