gamemode spectator @s
kill @e[tag=entrance]

fill ~ ~ ~ ~5 ~5 ~5 stone
fill ~ ~1 ~ ~4 ~5 ~5 air
fill ~5 ~1 ~2 ~5 ~2 ~3 black_concrete
setblock ~4 ~1 ~2 iron_door[facing=west,half=lower,hinge=right,open=false]
setblock ~4 ~2 ~2 iron_door[facing=west,half=upper,hinge=right,open=false]
setblock ~4 ~1 ~3 iron_door[facing=west,half=lower,hinge=left,open=false]
setblock ~4 ~2 ~3 iron_door[facing=west,half=upper,hinge=left,open=false]
fill ~3 ~ ~ ~8 ~-5 ~5 stone outline
setblock ~4 ~-4 ~2 iron_door[facing=east,half=lower,hinge=left,open=false]
setblock ~4 ~-3 ~2 iron_door[facing=east,half=upper,hinge=left,open=false]
setblock ~4 ~-4 ~3 iron_door[facing=east,half=lower,hinge=right,open=false]
setblock ~4 ~-3 ~3 iron_door[facing=east,half=upper,hinge=right,open=false]
fill ~3 ~-4 ~3 ~3 ~-3 ~2 black_concrete

summon marker ~4.7 ~1.3 ~2 {Tags:["entrance"]}
summon marker ~4.7 ~1.3 ~2.5 {Tags:["entrance"]}
summon marker ~4.7 ~1.3 ~3 {Tags:["entrance"]}
summon marker ~4.7 ~1.3 ~3.5 {Tags:["entrance"]}


execute store result score $d1 random run loot spawn 0 -65 0 loot lc:1in4
execute store result score $d2 random run loot spawn 0 -65 0 loot lc:1in4

execute if score $d1 random matches 1 run summon marker ~6 ~-4 ~ {Tags:["stair","gen"]}
execute if score $d2 random matches 1 run summon marker ~6 ~-4 ~5 {Tags:["stair-","gen"]}
execute if score $d1 random matches 2 run summon marker ~6 ~-4 ~ {Tags:["upstair","gen"]}
execute if score $d2 random matches 2 run summon marker ~6 ~-4 ~5 {Tags:["upstair-","gen"]}

execute if score $d1 random matches 3..4 run fill ~6 ~-4 ~ ~6 ~-3 ~ stone_bricks
execute if score $d2 random matches 3..4 run fill ~6 ~-4 ~5 ~6 ~-3 ~5 stone_bricks



gamemode creative @s
tp @s ~ ~1 ~