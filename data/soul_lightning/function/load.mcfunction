# Soul Lightning Chain Datapack
# Stage 2 load hook: initialize shared state and core management objectives.

scoreboard objectives add slc.timer dummy
scoreboard objectives add slc.state dummy
scoreboard objectives add slc.core_id dummy
scoreboard players set #loaded slc.state 2
scoreboard players add #next_core_id slc.state 0
scoreboard players set #core_count slc.state 0

say [Soul Lightning Chain] Loaded stage 2 core skeleton.
