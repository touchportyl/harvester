gamerule commandBlockOutput false


# initialize successful
scoreboard players set @a H_init 1

tellraw @a[scores={H_init=1}] [{"text":"<"},{"text":" PRTL ","color":"red","bold":"true"},{"text":">"},{"text":" Loaded the "},{"text":"[Harvester]","color":"aqua","hoverEvent":{"action":"show_text","value":"Created by touchportal!"}},{"text":" datapack successfully!"}]

execute as @a[scores={H_init=1}] run scoreboard objectives remove H_init

# add variables
execute in minecraft:overworld as @a at @s if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:diamond_hoe"}]}] run tag @s add diamond_hoe
execute in minecraft:overworld as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:wheat_seeds"}]}] run tag @s add wheat_seeds
execute in minecraft:overworld as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:potato"}]}] run tag @s add potato
execute in minecraft:overworld as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:carrot"}]}] run tag @s add carrot
execute in minecraft:overworld as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:beetroot_seeds"}]}] run tag @s add beetroot_seeds


# randomizer
scoreboard players add @a[tag=diamond_hoe] H_rand_2 1
scoreboard players set @a[tag=diamond_hoe,scores={H_rand_2=5..}] H_rand_2 1


# wheat module
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run tag @s add harvested

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds,scores={H_rand_2=1..3}] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run clear @s minecraft:wheat_seeds 2
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds,scores={H_rand_2=4}] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run clear @s minecraft:wheat_seeds 3

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~ minecraft:wheat[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~ minecraft:wheat[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~1 ~ ~1 minecraft:farmland if block ~1 ~1 ~1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~1 minecraft:wheat[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~ ~ ~1 minecraft:farmland if block ~ ~1 ~1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~1 minecraft:wheat[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~-1 ~ ~1 minecraft:farmland if block ~-1 ~1 ~1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~1 minecraft:wheat[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~ minecraft:wheat[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~-1 ~ ~-1 minecraft:farmland if block ~-1 ~1 ~-1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~-1 minecraft:wheat[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~ ~ ~-1 minecraft:farmland if block ~ ~1 ~-1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~-1 minecraft:wheat[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=wheat_seeds] at @s if block ~1 ~ ~-1 minecraft:farmland if block ~1 ~1 ~-1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~-1 minecraft:wheat[age=0] destroy

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~1 ~ ~1 minecraft:farmland if block ~1 ~1 ~1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~ ~ ~1 minecraft:farmland if block ~ ~1 ~1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~-1 ~ ~1 minecraft:farmland if block ~-1 ~1 ~1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~-1 ~ ~-1 minecraft:farmland if block ~-1 ~1 ~-1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~-1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~ ~ ~-1 minecraft:farmland if block ~ ~1 ~-1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~-1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!wheat_seeds] at @s if block ~1 ~ ~-1 minecraft:farmland if block ~1 ~1 ~-1 minecraft:wheat[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~-1 minecraft:air destroy


# potato module
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run tag @s add harvested

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato,scores={H_rand_2=1..3}] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run clear @s minecraft:potato 2
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato,scores={H_rand_2=4}] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run clear @s minecraft:potato 3

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~ minecraft:potatoes[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~ minecraft:potatoes[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~1 ~ ~1 minecraft:farmland if block ~1 ~1 ~1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~1 minecraft:potatoes[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~ ~ ~1 minecraft:farmland if block ~ ~1 ~1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~1 minecraft:potatoes[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~-1 ~ ~1 minecraft:farmland if block ~-1 ~1 ~1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~1 minecraft:potatoes[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~ minecraft:potatoes[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~-1 ~ ~-1 minecraft:farmland if block ~-1 ~1 ~-1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~-1 minecraft:potatoes[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~ ~ ~-1 minecraft:farmland if block ~ ~1 ~-1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~-1 minecraft:potatoes[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=potato] at @s if block ~1 ~ ~-1 minecraft:farmland if block ~1 ~1 ~-1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~-1 minecraft:potatoes[age=0] destroy

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~1 ~ ~1 minecraft:farmland if block ~1 ~1 ~1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~ ~ ~1 minecraft:farmland if block ~ ~1 ~1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~-1 ~ ~1 minecraft:farmland if block ~-1 ~1 ~1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~-1 ~ ~-1 minecraft:farmland if block ~-1 ~1 ~-1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~-1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~ ~ ~-1 minecraft:farmland if block ~ ~1 ~-1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~-1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!potato] at @s if block ~1 ~ ~-1 minecraft:farmland if block ~1 ~1 ~-1 minecraft:potatoes[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~-1 minecraft:air destroy


# carrot module
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run tag @s add harvested

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot,scores={H_rand_2=1..3}] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run clear @s minecraft:carrot 2
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot,scores={H_rand_2=4}] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run clear @s minecraft:carrot 3

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~ minecraft:carrots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~ minecraft:carrots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~1 ~ ~1 minecraft:farmland if block ~1 ~1 ~1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~1 minecraft:carrots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~ ~ ~1 minecraft:farmland if block ~ ~1 ~1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~1 minecraft:carrots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~-1 ~ ~1 minecraft:farmland if block ~-1 ~1 ~1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~1 minecraft:carrots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~ minecraft:carrots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~-1 ~ ~-1 minecraft:farmland if block ~-1 ~1 ~-1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~-1 minecraft:carrots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~ ~ ~-1 minecraft:farmland if block ~ ~1 ~-1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~-1 minecraft:carrots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=carrot] at @s if block ~1 ~ ~-1 minecraft:farmland if block ~1 ~1 ~-1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~-1 minecraft:carrots[age=0] destroy

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~1 ~ ~1 minecraft:farmland if block ~1 ~1 ~1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~ ~ ~1 minecraft:farmland if block ~ ~1 ~1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~-1 ~ ~1 minecraft:farmland if block ~-1 ~1 ~1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~-1 ~ ~-1 minecraft:farmland if block ~-1 ~1 ~-1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~-1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~ ~ ~-1 minecraft:farmland if block ~ ~1 ~-1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~-1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!carrot] at @s if block ~1 ~ ~-1 minecraft:farmland if block ~1 ~1 ~-1 minecraft:carrots[age=7] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~-1 minecraft:air destroy


# beetroot module
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run tag @s add harvested

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds,scores={H_rand_2=1..3}] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run clear @s minecraft:beetroot_seeds 2
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds,scores={H_rand_2=4}] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run clear @s minecraft:beetroot_seeds 3

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~ minecraft:beetroots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~ minecraft:beetroots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~1 ~ ~1 minecraft:farmland if block ~1 ~1 ~1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~1 minecraft:beetroots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~ ~ ~1 minecraft:farmland if block ~ ~1 ~1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~1 minecraft:beetroots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~-1 ~ ~1 minecraft:farmland if block ~-1 ~1 ~1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~1 minecraft:beetroots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~ minecraft:beetroots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~-1 ~ ~-1 minecraft:farmland if block ~-1 ~1 ~-1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~-1 minecraft:beetroots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~ ~ ~-1 minecraft:farmland if block ~ ~1 ~-1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~-1 minecraft:beetroots[age=0] destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=beetroot_seeds] at @s if block ~1 ~ ~-1 minecraft:farmland if block ~1 ~1 ~-1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~-1 minecraft:beetroots[age=0] destroy

execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~ ~ ~ minecraft:farmland if block ~ ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~1 ~ ~ minecraft:farmland if block ~1 ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~1 ~ ~1 minecraft:farmland if block ~1 ~1 ~1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~ ~ ~1 minecraft:farmland if block ~ ~1 ~1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~-1 ~ ~1 minecraft:farmland if block ~-1 ~1 ~1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~-1 ~ ~ minecraft:farmland if block ~-1 ~1 ~ minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~ minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~-1 ~ ~-1 minecraft:farmland if block ~-1 ~1 ~-1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~-1 ~1 ~-1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~ ~ ~-1 minecraft:farmland if block ~ ~1 ~-1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~ ~1 ~-1 minecraft:air destroy
execute in minecraft:overworld as @a[tag=diamond_hoe,tag=!beetroot_seeds] at @s if block ~1 ~ ~-1 minecraft:farmland if block ~1 ~1 ~-1 minecraft:beetroots[age=3] if entity @s[scores={H_sneak_time=1..}] run setblock ~1 ~1 ~-1 minecraft:air destroy


# harvest success feedback
execute in minecraft:overworld as @a[tag=harvested] at @s run playsound minecraft:entity.player.attack.sweep block @a ~ ~ ~ 0.7 1.6 0
execute in minecraft:overworld as @a[tag=harvested] at @s run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 1 1.6 0
execute in minecraft:overworld as @a[tag=harvested] at @s run particle minecraft:sweep_attack ~ ~0.5 ~ 0 0 0 0.1 3


# clear cache
execute in minecraft:overworld as @a at @s run tag @s remove diamond_hoe
execute in minecraft:overworld as @a at @s run tag @s remove wheat_seeds
execute in minecraft:overworld as @a at @s run tag @s remove potato
execute in minecraft:overworld as @a at @s run tag @s remove carrot
execute in minecraft:overworld as @a at @s run tag @s remove beetroot_seeds
execute in minecraft:overworld as @a at @s run tag @s remove harvested
execute in minecraft:overworld as @a[scores={H_sneak_time=1..}] run scoreboard players reset @s H_sneak_time


gamerule commandBlockOutput true