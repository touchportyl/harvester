gamerule commandBlockOutput false


# initialise
scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time [{"text":"sneak_time","color":"light_purple"}]
scoreboard objectives add rand_2 dummy [{"text":"Randomizer (2)","color":"light_purple"}]


# initialise successful
tellraw @a [{"text":"<"},{"text":" PRTL ","color":"red","bold":"true"},{"text":">"},{"text":" Loaded the "},{"text":"[Harvester]","color":"aqua","hoverEvent":{"action":"show_text","value":"Created by touchportal!"}},{"text":" datapack successfully!"}]


gamerule commandBlockOutput true