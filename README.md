# Soul Lightning Chain Datapack

A Minecraft Java Edition 1.21.11 datapack project for a random soul-fire lightning chain effect.

## Current stage

Stage 2: datapack skeleton plus core marker management.

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

No particles, lightning chains, or gameplay effects are implemented yet.

## Test steps

1. Put this repository folder into your world's `datapacks` folder.
2. Run:

```mcfunction
/reload
```

3. Expected chat output:

```text
[Soul Lightning Chain] Loaded stage 2 core skeleton.
```

4. Place a core marker at your current position:

```mcfunction
/function soul_lightning:core/place
```

5. Count current core markers:

```mcfunction
/function soul_lightning:core/list
```

The command should print the current value of `#core_count` in the `slc.state` scoreboard.

6. Remove the nearest core marker:

```mcfunction
/function soul_lightning:core/remove_nearest
```

7. Remove all core markers:

```mcfunction
/function soul_lightning:core/remove_all
```

8. Optional cleanup test:

```mcfunction
/function soul_lightning:uninstall
```

If you run `/reload` again after uninstalling, the skeleton objectives should be recreated.

## Target design

Later stages will add:

1. 6-tick burst timer, equal to about 0.3 seconds.
2. Random direction main chain markers.
3. Chain movement with soul fire particles.
4. Random jitter and branching.
5. Performance protection and configuration functions.
