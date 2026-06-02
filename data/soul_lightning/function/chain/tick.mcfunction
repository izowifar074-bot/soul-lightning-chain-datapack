# Update one jagged moving chain marker.
# Stage 6 behavior: draw a soul fire node, randomly bend, move forward, age, and self-delete.

function soul_lightning:particle/chain_node
function soul_lightning:chain/jitter
function soul_lightning:chain/move
scoreboard players add @s slc.age 1
execute if score @s slc.age >= @s slc.max_age run kill @s
