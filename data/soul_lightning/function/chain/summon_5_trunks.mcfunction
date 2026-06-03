# Spawn 5 dispersed long upward lightning trunks around the current core.
# Execution context: at one core marker.

execute positioned ~0.7 ~0.2 ~0.1 run function soul_lightning:chain/summon_main
execute positioned ~-0.6 ~0.2 ~0.4 run function soul_lightning:chain/summon_main
execute positioned ~0.2 ~0.2 ~-0.7 run function soul_lightning:chain/summon_main
execute positioned ~-0.3 ~0.2 ~-0.4 run function soul_lightning:chain/summon_main
execute positioned ~0.0 ~0.2 ~0.0 run function soul_lightning:chain/summon_main
