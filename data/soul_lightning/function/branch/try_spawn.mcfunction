# Try to spawn one branch from the current chain marker.
# Execution context: as and at one marker tagged slc.chain.
# Branch chance uses a 0..99 roll; default threshold is #branch_chance = 14, about 15%.
# Maximum branch depth is 2.

execute if score @s slc.depth matches 2.. run return 0
execute if score #chain_count slc.state >= #max_chain_count slc.state run return 0
execute store result score #branch_roll slc.tmp run random value 0..99
execute if score #branch_roll slc.tmp <= #branch_chance slc.state run function soul_lightning:branch/summon_branch
