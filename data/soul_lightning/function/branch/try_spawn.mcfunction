# Try to spawn one sparse branch from the current lightning trunk.
# Branching is rare in stage 9 because the main visual should be long sky-reaching trunks.

execute if score @s slc.depth matches 1.. run return 0
execute if score #chain_count slc.state >= #max_chain_count slc.state run return 0
execute store result score #branch_roll slc.tmp run random value 0..99
execute if score #branch_roll slc.tmp <= #branch_chance slc.state run function soul_lightning:branch/summon_branch
