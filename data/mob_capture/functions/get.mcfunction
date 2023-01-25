playsound entity.item.pickup player @a[distance=..15] ~ ~ ~ 0.7 0.8 1
playsound minecraft:ui.toast.out player @a[distance=..15] ~ ~ ~ 1 2 0
particle minecraft:enchant ~ ~1 ~ 0 0 0 0.5 50

#何かに乗ってた時、誰か乗ってた時はおろす
ride @s dismount
execute on passengers run ride @s dismount

#アイテム召喚
summon item ~ ~ ~ {Motion:[0d,0.25d,0d],PickupDelay:20s,Tags:["mob_capture"],Item:{id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:'[{"text":"mob egg","color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" (収納済み)","color":"reset","bold":false}]'},mob_capture:not_empty,EntityTag:{id:"minecraft:area_effect_cloud",CustomName:null}}}}

#元のnbt代入
data modify entity @e[type=item,nbt={Item:{tag:{mob_capture:not_empty}}},distance=..0.1,limit=1,sort=nearest] Item.tag.EntityTag merge from entity @s
#データ弄り
execute as @e[type=item,nbt={Item:{tag:{mob_capture:not_empty}}},distance=..0.1,limit=1,sort=nearest] at @s run function mob_capture:datamodify




#飼いならした動物の死亡メッセージ無効
data modify entity @s Owner set value null
#ルートテーブル無効
data modify entity @s DeathLootTable set value "minecraft:empty"

#中身の表示
function mob_capture:set_lore

function mob_capture:idset
tp @s ~ ~-10000 ~
kill @s