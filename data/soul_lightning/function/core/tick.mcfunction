# Update one Soul Lightning core marker.
# Execution context: as and at one marker tagged slc.core.

scoreboard players add @s slc.timer 1
execute if score @s slc.timer >= #pulse_interval slc.state run function soul_lightning:core/burst
