# Soul Lightning Chain Datapack
# Stage 1 load hook: initialize only the minimum shared state.

scoreboard objectives add slc.timer dummy
scoreboard objectives add slc.state dummy
scoreboard players set #loaded slc.state 1

say [Soul Lightning Chain] Loaded stage 1 skeleton.
