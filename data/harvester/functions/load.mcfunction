gamerule commandBlockOutput false


# initialize
scoreboard objectives remove H_init
scoreboard objectives add H_init dummy [{"text":"Initialize Checker for Harvester","color":"green"}]

scoreboard objectives add H_sneak_time minecraft.custom:minecraft.sneak_time [{"text":"sneak_time","color":"green"}]
scoreboard objectives add H_rand_2 dummy [{"text":"Randomizer (2)","color":"green"}]


# loading

tellraw @a [{"text":"<"},{"text":" PRTL ","color":"red","bold":"true"},{"text":">"},{"text":" Loading the "},{"text":"[Harvester]","color":"aqua","hoverEvent":{"action":"show_text","value":"v1.1"}},{"text":" datapack..."}]


gamerule commandBlockOutput true