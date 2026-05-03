# Bill Of Materials

Prices and vendors should be verified before purchase. The ranges below are planning buckets, not quotes.

## Budget Buckets

| Area | Planning Range | Notes |
| --- | ---: | --- |
| Frame and structural hardware | $150-$500 | LC-2 frame already owned; includes aluminum sheet, brackets, rivnuts, fasteners, straps, padding. |
| Shell and printed parts | $300-$900 | Filament/resin, filler, primer, adhesives, replacement prints, optional formed shell. |
| Found parts and greeblies | $300-$1,200 | Valves, fittings, knobs, lenses, fake/real industrial parts. Accuracy can get expensive. |
| Hoses, loom, labels, soft goods | $150-$500 | Buy extra hose/loom for mistakes and weathering tests. |
| Electronics and audio | $400-$1,500 | Controller, LEDs, amplifier, speakers, switches, bargraph, wiring, connectors, boards, sensors. |
| Battery and power safety | $150-$450 | Battery, charger, fuse holders, switches, converters, enclosure, strain relief. |
| Paint and finishing | $250-$800 | Primer, paint, clear, sandpaper, weathering supplies, respirator cartridges. |
| Contingency | $500+ | October insurance. |

## Already Owned

| Item | Status | Notes |
| --- | --- | --- |
| LC-2 ALICE frame | Owned | Brand new and ready. Measure before designing motherboard. |
| Welder/plasma cutter/grinders | Owned | Use for structural and metal detail work. |
| 3D printer | Owned | Use for prototypes, masters, greeblies, and possibly shell modules. |
| Microelectronics tools | Owned | Use for custom controller/harness work. |

## Mechanical Materials

| Item | Qty | Notes |
| --- | ---: | --- |
| 6061 aluminum sheet, 0.090-0.125 in | 1 | Final motherboard/backplate. Thickness depends on weight and stiffness. |
| Plywood/MDF/cardboard | as needed | Temporary templates and silhouette. |
| 18-22 ga aluminum or steel sheet | as needed | Cosmetic plates, brackets, shields. |
| Rivnuts or threaded inserts | assorted | Serviceable mounting points. |
| Stainless/black oxide fasteners | assorted | Visible fasteners should be intentional. |
| Rubber edging/grommets | assorted | Protect cables and wearer. |
| Foam/padding | as needed | Comfort tuning on LC-2 contact points. |

## Print And Finish Materials

| Item | Notes |
| --- | --- |
| ASA, ABS, PETG, or resin | Pick based on heat, finish, and printer capability. Avoid PLA near heat or in a car. |
| CA glue/epoxy/plastic weld | Match adhesive to printed material. |
| Filler primer | For layer-line cleanup. |
| Spot putty/body filler | Use sparingly; weight adds up. |
| Sandpaper 120-600 grit | Keep separate rough and finish packs. |
| Satin/flat black paint | Main pack body. |
| Metallic paints | Dry brushing and worn metal. |
| Clear coat | Test over labels before final application. |

## Electronics

| Item | Notes |
| --- | --- |
| Main controller | ESP32-S3, Teensy, RP2040, or kit controller. Choose by 2026-05-24. |
| LED drivers/strips/discrete LEDs | Power cell, cyclotron, status lights, wand lights. |
| Bargraph display | Wand power level/status. |
| Audio module or MCU audio path | Sound board, SD playback, or I2S audio. |
| Audio amplifier | Size for chosen speaker and enclosure. |
| Speakers | Test placement in shell before final mounting. |
| Switches/buttons/knobs | Prefer real tactile hardware. |
| Vibration motors | Pack and wand firing feedback. |
| MOSFET boards | For motors, fans, high-current LEDs, smoke module. |
| Buck converters | 12V to 5V and any other needed rails. |
| Locking connectors | JST-VH, Molex Micro-Fit, XT30/XT60, or similar. |
| Wire | Silicone wire in appropriate gauges; label both ends. |
| Fuse holder and fuses | Main fuse near battery plus branch protection if useful. |

## Battery

Preferred: a removable 12V-class LiFePO4 pack with a proper BMS and charger, sized after current draw is measured.

Why: safer behavior than hobby LiPo packs, good capacity, and practical voltage for LED/audio systems.

Minimum requirements:

- Main fuse near battery.
- Physical power switch.
- Protected/covered terminals.
- Strain-relieved battery connector.
- Charger that matches chemistry.
- No charging unattended inside the closed pack.

## Hoses And Loom

Initial cut list is in [05-measurement-log.md](05-measurement-log.md). Buy extra.

## Field Repair Kit

- Spare fuses.
- Spare battery or charger.
- Small screwdriver set.
- Hex keys for visible fasteners.
- Electrical tape.
- Gaffer tape.
- Zip ties.
- Pre-crimped spare connector leads.
- Small soldering kit if event allows it.
- Touch-up paint marker.
- Spare labels if practical.
