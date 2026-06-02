# Soul Lightning Chain Datapack

A Minecraft Java Edition 1.21.11 datapack project for a random soul-fire lightning chain effect.

## Current stage

Stage 6: core marker management, 6-tick pulse, and jagged moving random-direction main chains.

This stage includes:

- `pack.mcmeta`
- `minecraft:load` function tag
- `minecraft:tick` function tag
- `soul_lightning:load`
- `soul_lightning:tick`
- `soul_lightning:uninstall`
- `soul_lightning:core/place`
- `soul_lightning:core/remove_nearest`
- `soul_lightning:core/remove_all`
- `soul_lightning:core/list`
- `soul_lightning:core/tick`
- `soul_lightning:core/burst`
- `soul_lightning:particle/core_pulse`
- `soul_lightning:particle/chain_node`
- `soul_lightning:chain/summon_12_main`
- `soul_lightning:chain/summon_main`
- `soul_lightning:chain/init_random_direction`
- `soul_lightning:chain/tick`
- `soul_lightning:chain/move`
- `soul_lightning:chain/jitter`
- `soul_lightning:chain/list`

Current behavior:

- Each `slc.core` marker has its own `slc.timer` score.
- Every tick, `soul_lightning:tick` updates all core markers and temporary chain markers.
- Each core triggers once every 6 ticks, which is about 0.3 seconds.
- Each burst still shows the simple `minecraft:soul_fire_flame` core pulse.
- Each burst also spawns 12 temporary `slc.chain` marker entities.
- Every chain marker receives a random yaw from 0 to 359 degrees and a random pitch from -25 to 25 degrees.
- Each chain marker draws a small `minecraft:soul_fire_flame` particle node every tick.
- Before each movement step, each chain marker randomly bends its current direction.
- Yaw jitter is `-18..18` degrees per step.
- Pitch jitter is `-7..7` degrees per step and clamped to `-35..35` degrees.
- Each chain marker moves forward 0.55 blocks per tick along its updated local direction.
- Stage 6 chain markers live for 10 ticks and then self-delete.
- No branching is implemented yet.

## Test steps

1. Put this repository folder into your world's `datapacks` folder.
2. Run:

```mcfunction
/reload
```

3. Expected chat output:

```text
[Soul Lightning Chain] Loaded stage 6 jagged chain skeleton.
```

4. Place a core marker at your current position:

```mcfunction
/function soul_lightning:core/place
```

5. After placement, you should see small soul fire flame chains shooting outward from the core roughly every 0.3 seconds. They should now look less like straight rays and more like jagged, randomly bending lightning paths.

6. Count current core markers:

```mcfunction
/function soul_lightning:core/list
```

7. Count current temporary chain markers:

```mcfunction
/function soul_lightning:chain/list
```

Because chain markers live for 10 ticks and a new burst happens every 6 ticks, the count may be around 12 to 24 per active core depending on timing.

8. Remove the nearest core marker:

```mcfunction
/function soul_lightning:core/remove_nearest
```

9. Remove all core markers:

```mcfunction
/function soul_lightning:core/remove_all
```

10. Optional cleanup test:

```mcfunction
/function soul_lightning:uninstall
```

If you run `/reload` again after uninstalling, the objectives should be recreated.

## Target design

Later stages will add:

1. Random branching.
2. Performance protection and configuration functions.
