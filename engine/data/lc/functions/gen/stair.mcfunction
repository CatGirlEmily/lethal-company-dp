execute at @e[tag=stair] run place template lc:stair ~3 ~-5 ~ 180
execute at @e[tag=stair-] run place template lc:stair ~-3 ~-5 ~
execute at @e[tag=upstair] run place template lc:stair ~3 ~-1 ~ 180
execute at @e[tag=upstair-] run place template lc:stair ~-3 ~-1 ~

execute at @e[tag=upstair] run fill ~ ~4 ~ ~ ~5 ~ stone_bricks
execute at @e[tag=upstair-] run fill ~ ~4 ~ ~ ~5 ~ stone_bricks

tag @e[tag=gen] add old


tag @e[tag=stair,tag=old,limit=1] add chosen
execute if entity @e[tag=chosen] run execute store result score $d1 random run loot spawn 0 -65 0 loot lc:1in4
execute if entity @e[tag=chosen] run execute store result score $d2 random run loot spawn 0 -65 0 loot lc:1in4
execute if entity @e[tag=chosen] run execute store result score $d3 random run loot spawn 0 -65 0 loot lc:1in4

execute if score $d1 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~-4 ~ ~ ~-3 ~ stone_bricks
execute if score $d2 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~-4 ~-7 ~ ~-3 ~-7 stone_bricks
execute if score $d3 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~ ~-7 ~ ~1 ~-7 stone_bricks


execute if score $d1 random matches 1..2 run execute at @e[tag=chosen] run summon marker ~ ~-4 ~ {Tags:["stair-","gen"]}
execute if score $d2 random matches 1 run execute at @e[tag=chosen] run summon marker ~ ~ ~7 {Tags:["stair","gen"]}
execute if score $d2 random matches 2 run execute at @e[tag=chosen] run summon marker ~ ~ ~7 {Tags:["upstair","gen"]}
execute if score $d3 random matches 1 run execute unless score $d2 random matches 1 run execute at @e[tag=chosen] run summon marker ~ ~-4 ~-7 {Tags:["stair","gen"]}
execute if score $d3 random matches 2 run execute unless score $d2 random matches 1..2 run execute at @e[tag=chosen] run summon marker ~ ~-4 ~-7 {Tags:["upstair","gen"]}
kill @e[tag=chosen]
tag @e[tag=upstair,tag=old,limit=1] add chosen
execute if entity @e[tag=chosen] run execute store result score $d1 random run loot spawn 0 -65 0 loot lc:1in4
execute if entity @e[tag=chosen] run execute store result score $d2 random run loot spawn 0 -65 0 loot lc:1in4

execute if score $d1 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~4 ~-7 ~ ~5 ~-7 stone_bricks
execute if score $d2 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~ ~-7 ~ ~ ~-7 stone_bricks


execute if score $d1 random matches 1 run execute at @e[tag=chosen] run summon marker ~ ~4 ~-7 {Tags:["stair","gen"]}
execute if score $d1 random matches 2 run execute at @e[tag=chosen] run summon marker ~ ~4 ~-7 {Tags:["upstair","gen"]}
execute if score $d2 random matches 1 run execute unless score $d1 random matches 1 run execute at @e[tag=chosen] run summon marker ~ ~ ~-7 {Tags:["stair","gen"]}
execute if score $d2 random matches 2 run execute unless score $d1 random matches 1..2 run execute at @e[tag=chosen] run summon marker ~ ~ ~-7 {Tags:["upstair","gen"]}
kill @e[tag=chosen]
tag @e[tag=stair-,tag=old,limit=1] add chosen
execute if entity @e[tag=chosen] run execute store result score $d1 random run loot spawn 0 -65 0 loot lc:1in4
execute if entity @e[tag=chosen] run execute store result score $d2 random run loot spawn 0 -65 0 loot lc:1in4
execute if entity @e[tag=chosen] run execute store result score $d3 random run loot spawn 0 -65 0 loot lc:1in4

execute if score $d1 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~-4 ~ ~ ~-3 ~ stone_bricks
execute if score $d2 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~-4 ~7 ~ ~-3 ~7 stone_bricks
execute if score $d3 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~ ~7 ~ ~1 ~7 stone_bricks


execute if score $d1 random matches 1..2 run execute at @e[tag=chosen] run summon marker ~ ~-4 ~ {Tags:["stair","gen"]}
execute if score $d2 random matches 1 run execute at @e[tag=chosen] run summon marker ~ ~ ~7 {Tags:["stair-","gen"]}
execute if score $d2 random matches 2 run execute at @e[tag=chosen] run summon marker ~ ~ ~7 {Tags:["upstair-","gen"]}
execute if score $d3 random matches 1 run execute unless score $d2 random matches 1 run execute at @e[tag=chosen] run summon marker ~ ~-4 ~7 {Tags:["stair-","gen"]}
execute if score $d3 random matches 2 run execute unless score $d2 random matches 1..2 run execute at @e[tag=chosen] run summon marker ~ ~-4 ~7 {Tags:["upstair-","gen"]}
kill @e[tag=chosen]
tag @e[tag=upstair-,tag=old,limit=1] add chosen
execute if entity @e[tag=chosen] run execute store result score $d1 random run loot spawn 0 -65 0 loot lc:1in4
execute if entity @e[tag=chosen] run execute store result score $d2 random run loot spawn 0 -65 0 loot lc:1in4

execute if score $d1 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~4 ~7 ~ ~5 ~7 stone_bricks
execute if score $d2 random matches 3..4 run execute at @e[tag=chosen] run fill ~ ~ ~7 ~ ~ ~7 stone_bricks


execute if score $d1 random matches 1 run execute at @e[tag=chosen] run summon marker ~ ~4 ~7 {Tags:["stair-","gen"]}
execute if score $d1 random matches 2 run execute at @e[tag=chosen] run summon marker ~ ~4 ~7 {Tags:["upstair-","gen"]}
execute if score $d2 random matches 1 run execute unless score $d1 random matches 1 run execute at @e[tag=chosen] run summon marker ~ ~ ~7 {Tags:["stair-","gen"]}
execute if score $d2 random matches 2 run execute unless score $d1 random matches 1..2 run execute at @e[tag=chosen] run summon marker ~ ~ ~7 {Tags:["upstair-","gen"]}
kill @e[tag=chosen]