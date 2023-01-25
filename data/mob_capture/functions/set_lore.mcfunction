#CustomNameとdisplay.Nameが共存していた場合はdisplay.Nameを優先
execute if data entity @s CustomName unless data entity @s Item.tag.display.Name run loot spawn ~ ~ ~ loot mob_capture:set_lore_named_c
execute if data entity @s Item.tag.display.Name run loot spawn ~ ~ ~ loot mob_capture:set_lore_named_item
execute unless data entity @s CustomName unless data entity @s Item.tag.display.Name run loot spawn ~ ~ ~ loot mob_capture:set_lore_nameless

data modify entity @e[type=item,nbt={Item:{tag:{mob_capture:not_empty}}},distance=..0.1,limit=1,sort=nearest] Item.tag.display.Lore set from entity @e[type=item,nbt={Item:{tag:{name:"setting"}}},limit=1,sort=nearest] Item.tag.display.Lore
kill @e[type=item,nbt={Item:{tag:{name:"setting"}}}]