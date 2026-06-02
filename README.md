# Soul Lightning Chain Datapack

A Minecraft Java Edition 1.21.11 datapack project for a random soul-fire lightning chain effect.

## Current stage

Stage 3: core marker management plus a 6-tick soul fire pulse.

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

Current behavior:

- Each `slc.core` marker has its own `slc.timer` score.
- Every tick, `soul_lightning:tick` updates all core markers.
- Each core triggers once every 6 ticks, which is about 0.3 seconds.
- The current burst effect is only a simple `minecraft:soul_fire_flame` pulse.
- No lightning chains, random directions, movement, or branching are implemented yet.

## Test steps

1. Put this repository folder into your world's `datapacks` folder.
2. Run:

```mcfunction
/reload
```

3. Expected chat output:

```text
[Soul Lightning Chain] Loaded stage 3 core pulse skeleton.
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

The command should print the current value of `#core_count` in the `slc.state` scoreboard.

7. Remove the nearest core marker:

```mcfunction
/function soul_lightning:core/remove_nearest
```

8. Remove all core markers:

```mcfunction
/function soul_lightning:core/remove_all
```

9. Optional cleanup test:

```mcfunction
/function soul_lightning:uninstall
```

If you run `/reload` again after uninstalling, the objectives should be recreated.

## Target design

Later stages will add:

1. Random direction main chain markers.
2. Chain movement with soul fire particles.
3. Random jitter and branching.
4. Performance protection and configuration functions.
