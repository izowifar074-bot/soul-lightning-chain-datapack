# Soul Lightning Chain Datapack

A Minecraft Java Edition 1.21.11 datapack project for a random soul-fire lightning chain effect.

## Current stage

Stage 7: branching jagged soul-fire lightning chains with basic performance protection.

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
- `soul_lightning:branch/try_spawn`
- `soul_lightning:branch/summon_branch`
- `soul_lightning:branch/init_from_parent`
- `soul_lightning:branch/randomize_branch_direction`
- `soul_lightning:branch/randomize_left`
- `soul_lightning:branch/randomize_right`
- `soul_lightning:perf/count_chains`
- `soul_lightning:perf/kill_excess_chains`

Current behavior:

- Each `slc.core` marker has its own `slc.timer` score.
- Every tick, `soul_lightning:tick` updates temporary chain markers.
- Core markers only tick when at least one player is within 64 blocks.
- Each active core triggers once every 6 ticks, which is about 0.3 seconds.
- Each burst still shows the simple `minecraft:soul_fire_flame` core pulse.
- Each burst tries to spawn 12 temporary `slc.chain` marker entities, but refuses new spawns above the global chain cap.
- Every main chain marker receives a random yaw from 0 to 359 degrees and a random pitch from -25 to 25 degrees.
- Each chain marker draws a small `minecraft:soul_fire_flame` particle node every tick.
- Before each movement step, each chain marker randomly bends its current direction.
- Yaw jitter is `-18..18` degrees per step.
- Pitch jitter is `-7..7` degrees per step and clamped to `-35..35` degrees.
- Each chain marker moves forward 0.55 blocks per tick along its updated local direction.
- Main chains live for 10 ticks.
- Branch chains live for 5 ticks.
- Chains can randomly branch with about a 15 percent per-tick chance.
- Branch depth is capped at 2.
- The global active chain cap is `144`.

## Test steps

1. Put this repository folder into your world's `datapacks` folder.
2. Run:

```mcfunction
/reload
```

3. Expected chat output:

```text
[Soul Lightning Chain] Loaded stage 7 branching chain system.
```

4. Place a core marker at your current position:

```mcfunction
/function soul_lightning:core/place
```

5. After placement, you should see jagged soul fire flame chains shooting outward from the core roughly every 0.3 seconds. Some chains should now split into shorter branches.

6. Count current core markers:

```mcfunction
/function soul_lightning:core/list
```

7. Count current temporary chain markers:

```mcfunction
/function soul_lightning:chain/list
```

With one active core, the count should normally stay well below the global cap. If something looks wrong, you can clear temporary chains manually:

```mcfunction
/function soul_lightning:perf/kill_excess_chains
```

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

Later stages can add:

1. Configuration functions for density, range, and intensity.
2. Sound effects.
3. Visual tuning and optional stronger particles.
