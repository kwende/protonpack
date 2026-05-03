# Build Guide

Started: 2026-05-03  
Target: event-ready by 2026-10-01, polish and repairs through October

## North Star

Build a wearable classic proton pack that feels real at arm's length and survives actual use. The pack should be serviceable, fused, modular, comfortable enough for a multi-hour event, and convincing under ordinary indoor lighting.

This is a prop build, not an energy device or weapon. "Real" means weight, materials, finish, interaction, sound, light, vibration, and wear patterns.

## Definition Of Event-Ready

- Mounted securely to the LC-2 ALICE frame with no sharp edges against the body.
- Wearable for at least 2 hours with manageable shoulder/hip load.
- Battery removable without disassembling the pack.
- Main power fused near the battery.
- Pack and wand can boot, idle, fire, overheat/vent, and shut down repeatably.
- Power cell, cyclotron, wand bargraph, status lights, and sound all work.
- Wand hose/cable strain goes into the frame or motherboard, not the cosmetic shell.
- Paint, labels, hoses, and visible fasteners are complete enough for close photos.
- A field repair kit exists for event day.

## Build Strategy

Use Stefan Otto as the layout map, Sean Bishop as the screen-used dimensional cross-check, and your own measurements as the authority once a part is physically made.

The recommended build is hybrid:

- Aluminum motherboard/backing plate mounted to the LC-2 frame.
- 3D printed or formed shell modules with metal reinforcement where stress enters the pack.
- Real metal for cosmetic plates, brackets, bumper hardware, wand structure, and mounting interfaces.
- Printed greeblies, found parts, labels, hoses, and careful weathering to sell the realism.
- Modular electronics harness with connectors at the pack/wand boundary and at removable service panels.

Avoid a full steel shell. It would be impressive on the bench and miserable on your spine. Put metal where it makes the pack more believable or more durable.

## Architecture

### Mechanical Backbone

The pack is built around the LC-2 frame and motherboard.

1. Fit the LC-2 frame to your body.
2. Make a full-size cardboard/foamcore silhouette from the pack overview.
3. Mount the silhouette to the frame and do a comfort check.
4. Cut a temporary motherboard from plywood or MDF.
5. Once mounting points are confirmed, plasma cut or machine the final aluminum motherboard.
6. Add threaded inserts, rivnuts, standoffs, or welded tabs only after the shell and harness plan are known.

Recommended target: keep the finished pack under 25 lb if possible. Under 20 lb is better. Heavy "realism" disappears quickly after the first hour of wear.

### Shell And Exterior Volumes

Build the shell in modules rather than one heroic monolith:

- Cyclotron and N-filter
- Synchronous generator and gearbox area
- Power cell and injectors
- Booster/EDA
- Ion arm
- HGA
- Bumper and corner/shockmount plating
- PPD/Clippard area
- Gun mount

For each module:

1. Pull the Stefan placement and outline.
2. Cross-check suspect dimensions against Sean or direct found-part references.
3. CAD or template the part.
4. Print/prototype at low infill or cardboard first.
5. Dry fit on the motherboard.
6. Build the final part and capture final dimensions in the measurement log.

### Wand

Do not postpone the wand until the end. It drives controls, cable routing, strain relief, and the perceived realism of the whole build.

Build wand structure by mid-June:

- Rigid main gunbox.
- Metal or reinforced handles.
- Real switches/knobs where possible.
- Bargraph, Slo-Blo/status lights, and barrel lighting planned before paint.
- Mechanical strain relief for the pack hose/cable.
- Detachable service connector inside or near the wand body.

### Electronics

Make electronics bench-first, pack-second.

Baseline system:

- 12V battery bus with main fuse near the battery.
- 5V buck converter for LEDs and controller.
- Separate audio amplifier power filtering.
- Controller board for pack logic.
- Switch matrix or discrete inputs for wand controls.
- MOSFET outputs for vibration motors, fans, fog/smoke, and high-current LEDs.
- Connectorized harness using locking connectors.

Recommended decision by 2026-05-24:

- Fast path: buy a proven pack/wand electronics kit as the primary system, then customize around it.
- Custom path: build the controller yourself, but still buy or bench-test a fallback light/sound kit before July.

Custom electronics are absolutely doable here, but October is close. A kit-backed fallback keeps the physical build from being held hostage by firmware.

### Effects

Target practical effects:

- Animated power cell.
- Four-lens cyclotron animation.
- Wand bargraph and firing lights.
- Boot, idle, fire, overheat, vent, and shutdown sounds.
- Pack and wand vibration during firing.
- Optional smoke/fog venting after the electrical system passes reliability tests.

Do not use pyrotechnics, open flame, high-voltage arcs, or pressurized flammables. If smoke is added, use a known theatrical/fog approach, isolate heat, and add an off switch.

## Phase Guide

### Phase 0: Project Lock-In

Output: reference binder, printed plans, mounted cardboard silhouette, first issue backlog.

- Download references.
- Print key plans at 1:1.
- Verify print scale.
- Photograph and measure the LC-2 frame.
- Choose target pack variant: classic GB1/GB2 exterior for this first build.
- Decide final-use priorities: accuracy, weight, electronics, and repairability.

### Phase 1: Frame And Motherboard

Output: wearable frame with temporary motherboard, then final metal motherboard.

- Create a temporary plywood/MDF motherboard.
- Attach to LC-2 frame with adjustable standoffs or brackets.
- Mark shell envelope, pack centerline, wand cable exit, battery bay, and service openings.
- Wear-test the bare plate for balance.
- Cut final aluminum motherboard only after the temporary board feels right.

### Phase 2: Exterior Volumes

Output: rough full pack shape on the frame.

- Build the cyclotron first; it controls the lower visual read.
- Build the upper boxes and power cell next.
- Add the ion arm, booster, EDA, HGA, and PPD/Clippard area.
- Keep every module removable until paint.
- Leave wiring channels and service access.

### Phase 3: Wand And Cable

Output: functional wand shell with controls mounted and cable strain relief solved.

- Build gunbox and handles.
- Mount switches, knobs, buttons, LEDs, and bargraph.
- Run temporary cable to pack electronics bench.
- Test holster/gun mount fit.
- Tug-test cable/hose load path.

### Phase 4: Electronics Bench Rig

Output: pack and wand electronics working on the bench.

- Bring up power distribution.
- Test controller input map.
- Test all LEDs.
- Test audio amp and speaker placement.
- Add vibration and fans.
- Add smoke only after the rest is stable.
- Document connector pinouts before integration.

### Phase 5: Alpha Integration

Output: rough pack wearable with lights/sound.

- Install bench electronics into the pack with temporary mounts.
- Use service loops and labels on harnesses.
- Walk for 20 minutes, then 60 minutes.
- Log heat, noise, loose fasteners, bad balance, and cable snags.

### Phase 6: Finish

Output: painted, labeled, weathered, sealed pack.

- Disassemble modules.
- Sand/fill/prime.
- Paint base black and metal detail parts.
- Apply labels.
- Weather in layers: dry brush, edge wear, grime, burnishing, and selective rust/oil marks.
- Reassemble with threadlocker where appropriate.

### Phase 7: Reliability

Output: October-ready prop and event kit.

- Full battery runtime test.
- One-hour indoor wear test.
- Two-hour mixed wear/idle test.
- Firing sequence repeat test.
- Pack-and-wand boot test after transport.
- Field kit packed.

## First Week Checklist

- [ ] Run `.\scripts\download-references.ps1`.
- [ ] Print Stefan pages 1, 16, and 17 at 1:1.
- [ ] Verify plan scale with a ruler.
- [ ] Photograph LC-2 front/back/sides with a ruler in frame.
- [ ] Measure LC-2 mounting points and add them to the measurement log.
- [ ] Make a cardboard full-pack silhouette and tape/clamp it to the LC-2.
- [ ] Wear the silhouette for 20 minutes and note shoulder/hip issues.
- [ ] Open GitHub issues from the P0 backlog.
- [ ] Order long-lead parts needed before the end of May.

