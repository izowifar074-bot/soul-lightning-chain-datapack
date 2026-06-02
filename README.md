# Soul Lightning Chain Datapack

A Minecraft Java Edition 1.21.11 datapack project for a random soul-fire lightning chain effect.

## Current stage

Stage 4: core marker management, 6-tick pulse, and random-direction main chain markers.

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
- `soul_lightning:chain/summon_12_main`
- `soul_lightning:chain/summon_main`
- `soul_lightning:chain/init_random_direction`
- `soul_lightning:chain/tick`
- `soul_lightning:chain/list`

Current behavior:

- Each `slc.core` marker has its own `slc.timer` score.
- Every tick, `soul_lightning:tick` updates all core markers and temporary chain markers.
- Each core triggers once every 6 ticks, which is about 0.3 seconds.
- Each burst still shows the simple `minecraft:soul_fire_flame` core pulse.
- Each burst also spawns 12 temporary `slc.chain` marker entities.
- Every chain marker receives a random yaw from 0 to 359 degrees and a random pitch from -25 to 25 degrees.
- Stage 4 chain markers do not move and do not draw chain particles yet; they only age for 6 ticks and then self-delete.
- No chain movement, jitter, or branching is implemented yet.

## Test steps

1. Put this repository folder into your world's `datapacks` folder.
2. Run:

```mcfunction
/reload
```

3. Expected chat output:

```text
[Soul Lightning Chain] Loaded stage 4 random chain skeleton.
```

4. Place a core marker at your current position:

```mcfunction
/function soul_lightning:core/place
```

5. After placement, you should see a small soul fire flame pulse at the core roughly every 0.3 seconds.

6. Count current core markers:

```mcfunction
/function soul_lightning:core/list
```

7. Count current temporary chain markers:

```mcfunction
/function soul_lightning:chain/list
```

Because chain markers currently live for only 6 ticks, the count may be `0` if you run the command between bursts. If you catch the burst window, you may see up to about `12` per active core.

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

1. Chain movement with soul fire particles.
2. Random jitter and branching.
3. Performance protection and configuration functions.
