# Update one temporary chain marker.
# Stage 4 behavior: chain markers do not move yet; they only age and then self-delete.

scoreboard players add @s slc.age 1
execute if score @s slc.age >= @s slc.max_age run kill @s
