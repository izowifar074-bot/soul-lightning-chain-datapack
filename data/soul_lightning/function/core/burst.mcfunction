# Trigger one long upward lightning trunk burst from the current core marker.
# Execution context: as and at one marker tagged slc.core.

scoreboard players set @s slc.timer 0
function soul_lightning:particle/core_pulse
function soul_lightning:perf/count_chains
execute if score #chain_count slc.state < #max_chain_count slc.state run function soul_lightning:chain/summon_5_trunks
