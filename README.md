# Soul Lightning Chain Datapack

A Minecraft Java Edition 1.21.11 datapack project for a random soul-fire lightning chain effect.

## Current stage

Stage 1: datapack skeleton only.

This stage includes:

- `pack.mcmeta`
- `minecraft:load` function tag
- `minecraft:tick` function tag
- `soul_lightning:load`
- `soul_lightning:tick`
- `soul_lightning:uninstall`

No particles, markers, lightning chains, or gameplay effects are implemented yet.

## Test steps

1. Put this repository folder into your world's `datapacks` folder.
2. Run:

```mcfunction
/reload
```

3. Expected chat output:

```text
[Soul Lightning Chain] Loaded stage 1 skeleton.
```

4. Optional cleanup test:

```mcfunction
/function soul_lightning:uninstall
```

5. If you run `/reload` again after uninstalling, the skeleton objectives should be recreated.

## Target design

Later stages will add:

1. Core marker placement and removal.
2. 6-tick burst timer, equal to about 0.3 seconds.
3. Random direction main chain markers.
4. Chain movement with soul fire particles.
5. Random jitter and branching.
6. Performance protection and configuration functions.
