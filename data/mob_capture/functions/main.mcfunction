#エンティティが居なかった場合
execute as @e[type=area_effect_cloud,tag=mob_capture] at @s unless entity @e[type=!player,distance=..1,tag=!mob_capture,limit=1,sort=nearest,nbt=!{Item:{tag:{mob_capture:"not_empty"}}}] run summon item ~ ~ ~ {Motion:[0d,0.25d,0d],PickupDelay:20s,Tags:["mob_capture"],Item:{id:"minecraft:polar_bear_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"mob egg","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['[{"text":"mobを収納するための","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false},{"text":"タメイゴォ","italic":true}]']},mob_capture:empty,EntityTag:{id:"minecraft:area_effect_cloud",ReapplicationDelay:1,Radius:0f,Duration:0,WaitTime:1,Tags:["mob_capture"]}}}}
#居た場合
execute as @e[type=area_effect_cloud,tag=mob_capture] at @s as @e[type=!player,distance=..1,tag=!mob_capture,limit=1,sort=nearest] unless data entity @s {Item:{tag:{mob_capture:"not_empty"}}} at @s run function mob_capture:get
execute as @e[nbt={CustomName: '{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"aqua","extra":[{"bold":false,"text":" (収納済み)"}],"text":"mob egg"}'}] run data modify entity @s CustomName set value null


#setting関連(機能凍結中)
#scoreboard players enable @a mob_c_setting
#execute as @a if score @s mob_c_setting matches 1 run function mob_capture:setting/setting_ent