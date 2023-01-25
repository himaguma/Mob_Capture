#scoreboard objectives add mob_c_setting trigger "Mob_C_setting"

#execute as @a unless score @s mob_c_setting matches 0..2 run scoreboard players set @s mob_c_setting 0
#execute unless score #mob_c_setting mob_c_UUID matches 0..2 run scoreboard players set #mob_c_setting mob_c_UUID 0
#execute unless score #mob_c_setting mob_c_uninstall matches 0..2 run scoreboard players set #mob_c_setting mob_c_uninstall 0
