# Soul Lightning Chain Datapack
# Stage 11 load hook: faster, wider, sky-filling lightning bolts.

scoreboard objectives add slc.timer dummy
scoreboard objectives add slc.state dummy
scoreboard objectives add slc.core_id dummy
scoreboard objectives add slc.chain_id dummy
scoreboard objectives add slc.age dummy
scoreboard objectives add slc.max_age dummy
scoreboard objectives add slc.depth dummy
scoreboard objectives add slc.tmp dummy
kill @e[type=minecraft:marker,tag=slc.chain]
scoreboard players set #loaded slc.state 11
scoreboard players set #pulse_interval slc.state 8
scoreboard players set #max_chain_count slc.state 260
scoreboard players set #branch_chance slc.state 5
scoreboard players add #next_core_id slc.state 0
scoreboard players add #next_chain_id slc.state 0
scoreboard players set #core_count slc.state 0
scoreboard players set #chain_count slc.state 0

say [Soul Lightning Chain] Loaded stage 11 wide storm lightning system. Use /function soul_lightning:place
