summon minecraft:area_effect_cloud ~ ~ ~ {Age: 0, Duration: 0, WaitTime: 0, Tags: ["mob_capture_idset"]}
ride @s mount @e[type=area_effect_cloud,tag=mob_capture_idset,limit=1,sort=nearest]
execute on vehicle run data modify entity @e[type=item,nbt={Item:{tag:{mob_capture:not_empty}}},distance=..0.1,limit=1,sort=nearest] Item.tag.EntityTag.id set from entity @s Passengers[0].id

execute on vehicle run tp @s ~ ~-10000 ~
