# Trigger one burst from the current core marker.
# Execution context: as and at one marker tagged slc.core.

scoreboard players set @s slc.timer 0
function soul_lightning:particle/core_pulse
function soul_lightning:chain/summon_12_main
