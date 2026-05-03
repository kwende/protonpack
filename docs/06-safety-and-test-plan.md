# Safety And Test Plan

The pack should look dangerous and be boringly safe.

## Hard Limits

- No open flame.
- No pyrotechnics.
- No high-voltage arcs.
- No pressurized flammable gas.
- No sharp unfinished metal edges.
- No unfused battery output.
- No charging unattended inside a closed pack.

## Shop Safety

- Deburr every plasma-cut or ground edge before test fitting.
- Wear eye/ear/respiratory protection for cutting, grinding, sanding, paint, and filler.
- Treat printed dust and filler dust as something you do not want in your lungs.
- Keep battery/electronics away from welding and grinding operations.
- Use strain relief anywhere a cable crosses metal.

## Electrical Safety

Minimum power architecture:

- Removable battery.
- Main fuse as close to battery positive as practical.
- Master power switch.
- Protected connectors.
- Buck converters sized with headroom.
- Common ground planned intentionally.
- Wire gauge matched to measured current.
- Harness labels at both ends.

Tests:

1. Continuity check before first power.
2. Current-limited bench supply first, battery second.
3. Idle current measurement.
4. Firing current measurement.
5. Worst-case current measurement with lights, audio, vibration, and fans active.
6. Heat check after 15, 30, and 60 minutes.
7. Shake/wiggle test while powered.

## Battery Rules

Preferred chemistry: LiFePO4, 12V-class, with BMS and correct charger.

Rules:

- Fuse the pack.
- Do not charge inside the closed prop.
- Do not leave charging unattended.
- Do not use damaged packs.
- Make the battery removable without tools if possible.
- Add a clear physical disconnect for storage and transport.

## Smoke/Fog Rules

Smoke is optional and should be added only after the base electrical system is reliable.

Requirements:

- Dedicated switch or firmware disable.
- Thermal isolation from printed parts and wiring.
- Fan path that does not blow hot vapor onto skin.
- Runtime test with shell closed.
- No oily residue on electronics.

## Wear Tests

### Silhouette Test

Before final motherboard:

- Wear cardboard silhouette for 20 minutes.
- Walk, bend, sit if possible, and simulate wand handling.
- Log shoulder pressure, back contact, lower frame contact, and balance.

### Alpha Test

After rough shell and temporary electronics:

- 20-minute wear test.
- 60-minute wear test.
- Note heat, noise, snags, loose fasteners, and sore spots.

### Event Test

Before 2026-10-01:

- Two-hour wear test.
- Runtime test.
- Transport test.
- Boot test after transport.
- Repeat firing cycle at least 25 times.

## Field Kit Checklist

- Charged battery.
- Spare fuses.
- Charger.
- Screwdrivers/hex keys.
- Gaffer tape.
- Electrical tape.
- Zip ties.
- Spare connector pigtails.
- Small touch-up kit.
- Printed pinout sheet.

