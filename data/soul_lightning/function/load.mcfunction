# Soul Lightning Chain Datapack
# Stage 9 load hook: dispersed long upward lightning trunks.

scoreboard objectives add slc.timer dummy
scoreboard objectives add slc.state dummy
scoreboard objectives add slc.core_id dummy
scoreboard objectives add slc.chain_id dummy
scoreboard objectives add slc.age dummy
scoreboard objectives add slc.max_age dummy
scoreboard objectives add slc.depth dummy
scoreboard objectives add slc.tmp dummy
scoreboard players set #loaded slc.state 9
scoreboard players set #pulse_interval slc.state 24
scoreboard players set #max_chain_count slc.state 30
scoreboard players set #branch_chance slc.state 1
scoreboard players add #next_core_id slc.state 0
scoreboard players add #next_chain_id slc.state 0
scoreboard players set #core_count slc.state 0
scoreboard players set #chain_count slc.state 0

say [Soul Lightning Chain] Loaded stage 9 long upward lightning trunk system.
