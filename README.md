# Proton Pack

> Build a 1984 Venkman hero proton pack that looks credible in a close-up, feels like industrial equipment, and makes seven-year-old Ben grin like an idiot.

**Target commissioning date:** October 31, 2026  
**Budget:** $500–$1,000, with a working target near $800 plus contingency  
**Target finished mass:** 30–33 lb, including wand and battery  
**Current state:** Design reset; army-surplus ALICE frame is owned; frame identification and measurements are the next gate.

---

## Mission

This is not a costume accessory and not a purchased replica. It is a fabricated prop intended to pass as a movie-grade proton pack under close inspection.

The governing test is:

> It should look as though Venkman set it down, walked away, and forgot to return for it.

That means:

- The silhouette and visible geometry must survive close-up photography.
- Visibly metallic parts should be metal whenever practical.
- Tubing and fittings should feel like industrial hardware, not garden hose or toy vinyl.
- The wand must feel like equipment rather than a plastic gun.
- The pack should have honest mass from structure, hardware, power, audio, and machinery—not a hidden lead brick pretending to be engineering.
- Printed parts are allowed, but the finished object must not advertise the manufacturing shortcut.
- The finished pack must be serviceable, electrically safe, structurally sound, wearable, and wall-mountable.

Halloween is the deadline. It is not the design standard.

---

## Design Lock

Unless explicitly changed and recorded in the decision log, this build is:

> **A 1984 Ghostbusters Venkman hero pack, mechanically substantial, close-up credible, approximately 30–33 pounds, fully illuminated and functional, mounted on the existing ALICE frame.**

The exact ALICE frame pattern is **not yet confirmed**. Do not drill or fabricate permanent frame mounts until the frame has been photographed, measured, and compared with screen-used mounting geometry.

### Source hierarchy

When plans disagree, use this order:

1. **Variant-specific Venkman hero-pack photographs** for visible placement, finish, asymmetry, wear, and odd details.
2. **Known found-part dimensions** for absolute scale.
3. **Stefan Otto plans** for geometry that cannot be recovered directly from photographs.
4. Other replica plans only as secondary cross-checks.

Primary references:

- [The Ghostbusters Reference Library — Venkman Pack](https://www.theghostbustersreferencelibrary.com/ghostbusters/the-venkman-pack)
- [GBFans — Stefan Otto's Prop Plans](https://www.gbfans.com/wiki/Stefan_Otto%27s_Prop_Plans)
- [GPStar proton-pack electronics reference](https://github.com/gpstar81/GPStar-proton-pack)

Any dimension added to this repository must be labeled as one of:

- **Measured** — physically measured from the actual part.
- **Known** — derived from a documented real found part.
- **Plan** — taken from a named plan sheet.
- **Inferred** — estimated from photographs or proportional comparison.

Never promote an inferred dimension to fact merely because it has survived three Markdown files.

---

## Definition of Done

The pack is complete when all of the following are true:

- [ ] Silhouette matches the Venkman reference from front, side, rear, and three-quarter views.
- [ ] Finished mass is 30–33 lb, including wand and battery.
- [ ] No visible print lines remain at normal close-up viewing distance.
- [ ] The cyclotron face, crossbar, bezels, and major dress hardware sound and feel metallic when tapped.
- [ ] Major hoses and tubing feel like industrial components.
- [ ] The wand can be drawn and rehung reliably without staring at the hook.
- [ ] Structural loads terminate at the motherboard or ALICE frame, not the decorative shell.
- [ ] The shell can be removed without cutting wires or destroying adhesive joints.
- [ ] No structural component depends on hot glue.
- [ ] Electronics run continuously for two hours without reset, overheating, loose connections, or magic smoke.
- [ ] The wand completes 100 firing/barrel cycles without binding or state-machine confusion.
- [ ] The wall mount supports substantially more than the pack's finished weight.
- [ ] Weathering looks accumulated through use, not artistically sprinkled on Tuesday afternoon.

---

## Construction Architecture

| Assembly | Intended construction |
|---|---|
| ALICE frame | Existing army-surplus frame; identify before permanent modification |
| Motherboard | 0.125-in 6061-T6 aluminum, rough-cut by plasma/router and mechanically finished |
| Main shell | Printed sectional core or plug, internally reinforced with fiberglass and epoxy; no visible print topology |
| Cyclotron | Fiberglass/composite body with a 0.050–0.063-in aluminum face or ring and metal crossbar |
| Gearbox, booster, HGA, injectors | Bent 5052 aluminum, aluminum tube/rod, machined stock, and selective composite forms |
| Neutrona wand | Aluminum structural spine, metal skins and tubes, real switches and hardware; printed internal carriers and insulated grip parts |
| Main hose | Corrugated industrial loom over a substantial internal hose and wiring bundle |
| Colored tubing | Real polyurethane pneumatic tubing in correct outside diameters |
| Mounting hardware | Machine screws, nutplates, rivnuts, threaded inserts, and serviceable brackets |
| Electronics | Separate pack and wand controllers connected by a wired differential bus |
| Battery | Fused low-voltage battery system; 4S LiFePO4 is the current preferred architecture |
| Wall mounting | Structural cradle engaging the ALICE frame, never the decorative shell |

### Cyclotron acoustic rule

The cyclotron metal skin should be fastened from behind and allowed a small unsupported span so it rings when tapped. Fully laminating the aluminum to fiberglass would deaden it. The goal is not random noise; it is the tactile suggestion of a fabricated machine casing.

---

## Bambu Printer Rules

The printer is a manufacturing tool, not a religion.

### Use it freely for

- Shell sections that will be reinforced and completely finished
- Alignment fixtures and drilling jigs
- Molds, plugs, bucks, and forming tools
- Electronics trays and wire guides
- Hidden mounting blocks
- Lens carriers
- Switch brackets
- Internal wand chassis components
- Hose interfaces and strain-relief forms

### Use it reluctantly for

- Small exposed parts that genuinely appear molded
- Grip components receiving substantial finishing
- Electrical insulators
- Replica resistor bodies when collector pricing becomes absurd

### Do not use it for

- Visible structural tubes
- The cyclotron face
- Wand body skins
- Bumper structure
- Large exposed brackets
- Pneumatic fittings
- Anything a person naturally grabs, taps, or expects to be metal

---

## Electronics Architecture

Two controllers are preferred so the wand remains responsive and testable independently.

### Pack controller

- Fifteen-position blue power-cell animation
- Four cyclotron lamps
- Audio playback and mixing
- Amplifier enable and volume
- Battery and thermal monitoring
- Master operating state machine
- Optional tactile transducer in the pack body

### Wand controller

- Trigger and intensify inputs
- Bargraph animation
- Tip and vent illumination
- Mechanical barrel extension
- Wand vibration
- Input debouncing and local fault handling

### Pack-to-wand link

Use **RS-485 or CAN** through the physical hose, together with power and ground. Bluetooth is a silly solution for two machines connected by a large electrical-looking umbilical.

```text
OFF
  ↓
BOOTING
  ↓
IDLE
  ↓
FIRING
  ↓
OVERHEATING
  ↓
VENTING
  ↓
IDLE

Any state → FAULT → SHUTDOWN
```

### Power tree

```text
Battery
  │
  ├── fuse located at the battery
  ├── master disconnect
  ├── protected battery-voltage bus → amplifier / motors
  └── regulated converters
       ├── 5 V logic
       └── appropriate LED rails
```

No exposed mains voltage. No theatrical pyrotechnics. No actual unlicensed nuclear accelerator until version two.

---

## Material and Purchasing Strategy

Spend money where a part affects silhouette, touch, mechanical interaction, distinctive markings, or close-up recognition. Fabricate static or obscure parts when originals are priced as though they personally knew Harold Ramis.

### Long-lead or tactile specialty parts

- [ ] Genuine Clippard R-331 valve or verified equivalent
- [ ] Three genuine Clippard brass elbows
- [ ] Matching hose barbs
- [ ] Metal GB1-style V-hook, male and female halves
- [ ] Four red cyclotron lenses
- [ ] Blue power-cell lens
- [ ] Correct ribbon cable and clamp
- [ ] Correct green, blue, and red pneumatic tubing
- [ ] Corrugated black loom for the main hose
- [ ] Clear or frostable acrylic wand barrel tube
- [ ] Pack labels, metal warning plates, and dry transfers
- [ ] Exact knobs and switches that are difficult or foolish to fabricate

### Do not purchase yet

- Vintage resistors at collector prices
- A completed shell
- Complete electronics
- A completed wand
- Random aluminum tube before producing a dimensional cut list
- “Close enough” fittings that will later become permanently irritating

### Initial raw stock allowance

- [ ] 24 × 48-in sheet of 0.125-in 6061-T6 aluminum
- [ ] 24 × 48-in sheet of 0.063-in 5052-H32 aluminum
- [ ] Smaller 0.040–0.050-in 5052 sheet for skins
- [ ] Aluminum angle and flat bar for mounts
- [ ] Aluminum round tube and rod after the cut list is verified
- [ ] Laminating epoxy
- [ ] Approximately 6–8 yd of 6-oz fiberglass cloth
- [ ] Fiberglass tape for internal seams
- [ ] Microballoons or fairing filler
- [ ] Structural epoxy adhesive
- [ ] Aluminum etching primer
- [ ] High-build primer
- [ ] Satin and semigloss black coatings
- [ ] Rivnuts or nutplates
- [ ] 8-32, 10-24, and 1/4-20 machine hardware
- [ ] Rubber edge trim and vibration-isolation washers
- [ ] Automotive-grade wire and locking connectors

Use nutplates, threaded inserts, or rivnuts where practical. The pack should not require the hands of a six-year-old Victorian chimney sweep to service it.

---

## Budget Model

These are planning allowances, not divine promises from the materials gods.

| Category | Planned spend |
|---|---:|
| Aluminum, tube, and hardware | $180–260 |
| Fiberglass, epoxy, and fillers | $100–160 |
| Specialty visible parts | $180–280 |
| Electronics, audio, and power | $90–160 |
| Paint, labels, and consumables | $70–120 |
| Contingency | $60–100 |
| **Expected total** | **$680–1,080** |

Target approximately **$800 committed plus $150 held in reserve**. Existing tools, controllers, electrical components, printer capacity, and shop stock should keep the real spend near the desired range.

### Mass budget

| Assembly | Target mass |
|---|---:|
| ALICE frame and straps | 3–5 lb |
| Aluminum motherboard and mounts | 4–5 lb |
| Reinforced shell | 4–6 lb |
| Wand | 5–7 lb |
| Metal dress components and hardware | 5–7 lb |
| Battery, audio, and electronics | 3–5 lb |
| Hose and cabling | 2–3 lb |

Do not add dead ballast until final assembly. Structural aluminum, real fittings, a substantial wand, a useful battery, and a serious speaker are honest mass. A hidden lead brick is the prop lying to us.

---

# Build Scheduler

Status markers:

- `[ ]` not started
- `[~]` in progress
- `[x]` complete and verified
- `[-]` intentionally removed or deferred
- `[!]` blocked

## Phase 0 — Design freeze and frame survey

**July 21–26**

- [x] Declare the build a 1984 Venkman hero pack
- [x] Establish the close-up and tactile quality standard
- [ ] Download and organize the complete Stefan Otto plan set
- [ ] Download and organize the Venkman photographic reference set
- [ ] Photograph the bare ALICE frame straight-on from front, rear, and side
- [ ] Measure frame height, maximum width, tube OD, horizontal-member spacing, and vertical-tube spacing
- [ ] Identify the exact ALICE frame pattern
- [ ] Print the motherboard plan at 1:1 and verify printed scale with calipers
- [ ] Make a cardboard or hardboard motherboard template
- [ ] Clamp the template to the frame without drilling
- [ ] Photograph the template/frame assembly from front, rear, and side
- [ ] Inventory available aluminum, tube, fiberglass, epoxy, batteries, speakers, amplifiers, and controllers
- [ ] Place the first long-lead specialty order

**Exit gate:** A verified template fits the actual frame and matches the expected silhouette. No permanent holes have been drilled.

## Phase 1 — Structural spine

**July 27–August 2**

- [ ] Transfer verified motherboard geometry to 0.125-in aluminum
- [ ] Cut, deburr, and mechanically finish the motherboard
- [ ] Fabricate ALICE mounting brackets
- [ ] Install threaded shell-mount points
- [ ] Design and fabricate the structural wall cradle
- [ ] Load-test the frame, motherboard, and cradle without the decorative shell

**Exit gate:** The structural assembly supports at least 50 lb without visible deformation, slipping, or fastener movement.

## Phase 2 — Main shell

**August 3–16**

- [ ] Segment shell geometry for printing or tooling
- [ ] Include datum tabs and alignment holes
- [ ] Print and assemble shell/core sections on a flat fixture
- [ ] Correct the silhouette before fiberglass work
- [ ] Reinforce internal seams with fiberglass tape
- [ ] Laminate the interior with two cloth layers
- [ ] Reinforce all mounting points locally
- [ ] Fair the exterior until no print topology remains
- [ ] Fabricate the aluminum cyclotron face concurrently

**Exit gate:** The unpainted shell matches reference proportions and contains no visible print topology.

## Phase 3 — Shell mounting and serviceability

**August 17–23**

- [ ] Trim and fit the shell to the motherboard
- [ ] Add concealed mechanical fasteners
- [ ] Establish removable electronics access
- [ ] Establish battery access
- [ ] Establish the main harness route
- [ ] Fit the cyclotron face and crossbar

**Exit gate:** The shell can be removed from the motherboard in under ten minutes without cutting wires or destroying bonded joints.

## Phase 4 — Pack machinery

**August 24–September 6**

Fabricate and dry-fit:

- [ ] Cyclotron
- [ ] N-filter
- [ ] Power cell
- [ ] Injectors
- [ ] Booster frame
- [ ] Gearbox
- [ ] HGA
- [ ] Ion arm
- [ ] PPD
- [ ] Shock mount
- [ ] Bumper
- [ ] Synchronous-generator details
- [ ] Cosmetic plates
- [ ] Reinforced gun mount

**Exit gate:** Every major visual mass exists and is mounted, although nothing requires final paint yet.

## Phase 5 — Found parts and plumbing

**September 7–13**

- [ ] Install the R-331 valve
- [ ] Install brass elbows and barbs
- [ ] Install pneumatic tubing
- [ ] Install ribbon cable and clamp
- [ ] Temporarily fit labels and warning plates
- [ ] Fit the main hose interface
- [ ] Fit both halves of the metal V-hook
- [ ] Weigh the assembly
- [ ] Perform the first serious wearability test

**Exit gate:** Pack is mechanically complete and approximately 24–28 lb before final electronics and finishing.

## Phase 6 — Neutrona wand

**September 14–27**

- [ ] Build the aluminum structural spine
- [ ] Fabricate metal body skins
- [ ] Machine or fit barrel tubes
- [ ] Build grips and switch housings
- [ ] Install real switches and knobs
- [ ] Build the mechanical extension mechanism
- [ ] Install the wand-side V-hook
- [ ] Build the hose connector and strain relief
- [ ] Create internal electronics carriers
- [ ] Perform repeated one-handed docking tests

**Exit gate:** Wand is mechanically complete and can be drawn and rehung reliably without looking directly at the hook.

## Phase 7 — Pack electronics

**September 28–October 4**

- [ ] Finish fused power distribution
- [ ] Install the master disconnect
- [ ] Install the pack controller
- [ ] Install power-cell LEDs
- [ ] Install cyclotron LEDs
- [ ] Install amplifier and speaker
- [ ] Install battery and battery retention
- [ ] Implement boot, idle, fault, and shutdown states
- [ ] Run a two-hour thermal and stability test

**Exit gate:** No resets, overheated regulators, intermittent connectors, or magic smoke.

## Phase 8 — Wand electronics and integration

**October 5–11**

- [ ] Install the wand controller
- [ ] Install triggers and switches
- [ ] Install bargraph, tip, and vent lighting
- [ ] Install motor or solenoid controls
- [ ] Establish RS-485 or CAN communication
- [ ] Implement firing, overheating, and venting
- [ ] Synchronize sound, light, motion, and vibration
- [ ] Execute 100 repeated trigger and barrel cycles

**Exit gate:** One hundred cycles complete without binding, electrical fault, or state-machine confusion.

## Phase 9 — Finish

**October 12–18**

- [ ] Complete final disassembly
- [ ] Etch-prime aluminum
- [ ] High-build-prime composite surfaces
- [ ] Block-sand visible surfaces
- [ ] Apply varied black finishes rather than one uniform spray-black coating
- [ ] Apply labels and transfers
- [ ] Expose real aluminum at plausible wear points
- [ ] Add restrained grime and use-wear
- [ ] Avoid brown-painted Afterlife apocalypse rust on a 1984 pack

**Exit gate:** No layer lines, filler telegraphing, obvious shortcuts, or generic uniform finish.

## Phase 10 — Final assembly and qualification

**October 19–25**

- [ ] Complete final wiring and strain relief
- [ ] Install the main hose
- [ ] Measure final mass
- [ ] Run a two-hour operating test
- [ ] Complete walking and stair tests
- [ ] Complete repeated wand docking tests
- [ ] Load-test the wall mount
- [ ] Leave the pack on the wall mount overnight
- [ ] Photograph the completed pack under hard side lighting to reveal defects

**Exit gate:** Finished, safe, reliable, serviceable, and ready to display or wear.

## Buffer and commissioning

**October 26–30**

- [ ] Repair defects
- [ ] Touch up finish
- [ ] Charge and balance the battery
- [ ] Prepare display hardware and transport protection
- [ ] Add no new features

**October 31**

- [ ] Commission the pack
- [ ] Take the hero photographs
- [ ] Make seven-year-old Ben smile

After October 18, feature creep is Gozer. Do not choose its form.

---

# Current Work Queue

These are the next actions in order. Do not skip ahead to attractive greeblies while the load-bearing geometry is still imaginary.

1. Photograph and measure the bare ALICE frame.
2. Identify the frame pattern and verify its condition.
3. Print and scale-check the motherboard drawing.
4. Build and clamp a disposable motherboard template.
5. Compare template/frame geometry against Venkman reference photographs.
6. Inventory shop stock and existing electronics.
7. Create the first verified cut list.
8. Order only the long-lead specialty parts that are unlikely to change after the frame survey.

## Required frame measurements

- Overall frame height
- Maximum frame width
- Frame-tube outside diameter
- Center-to-center distance between upper and lower horizontal members
- Width between the vertical frame tubes

## Required first photographs

- Bare frame: front, rear, and side, with a tape measure in the same plane
- Frame with motherboard template clamped: front, rear, and side
- Close-ups of stamps, bends, attachment points, damage, and existing straps

---

# Decisions

| ID | Date | Decision | Reason | Revisit when |
|---|---|---|---|---|
| D-001 | 2026-07-21 | Build the 1984 Venkman hero-pack variant | “Venkman left it here” is the visual and emotional target; a single variant prevents a generic hybrid | Only before irreversible shell or motherboard work |
| D-002 | 2026-07-21 | Target 30–33 lb ready to wear | Comparable physical presence without deliberately injuring the wearer | Final mass review after mechanical assembly |
| D-003 | 2026-07-21 | Use real metal for obvious structural, tactile, and acoustic surfaces | Close-up credibility depends heavily on touch, edge behavior, fasteners, and sound | Per component when weight or electrical isolation matters |
| D-004 | 2026-07-21 | Permit printing for tooling, hidden structure, and fully finished composite cores | Printing accelerates fabrication without dictating the final surface language | Whenever a printed part remains visible or load-bearing |
| D-005 | 2026-07-21 | Use a wired differential pack/wand bus | The wand is physically tethered; reliable wired communication is simpler and more honest | Electronics prototype phase |
| D-006 | 2026-07-21 | Keep the shell removable and route loads to the motherboard/frame | Serviceability and structural honesty matter more than quick glue-up | Every mounting decision |

Add design changes here before they silently infect the rest of the repository.

---

# Work Diary

Append substantive sessions newest-first. Record what physically changed, what was learned, what failed, what was measured, and what should happen next. Photographs and measurements beat confident prose.

## 2026-07-21 — Project reset

**Objective:** Restart the proton-pack project with one variant, one standard, and one dated route to Halloween.

**Completed:**

- Locked the target to a 1984 Venkman hero pack.
- Defined close-up, tactile, structural, weight, serviceability, electronics, and wall-display standards.
- Established the phased schedule through October 31, 2026.
- Declared the existing ALICE frame survey as the first physical gate.
- Reset `README.md` as the operational source of truth.

**Known hardware:**

- Army-surplus ALICE frame
- Bambu 3D printer
- Welding capability
- Plasma cutting capability
- Microelectronics and firmware capability
- Arduino and Raspberry Pi boards
- General shop tools and assorted materials to be inventoried

**Open questions:**

- Exact ALICE frame model and geometry
- Final motherboard dimensions after physical fit-check
- Which specialty parts are already owned or reusable
- Available aluminum sheet/tube stock
- Existing battery, audio, lighting, and controller inventory

**Next action:** Photograph and measure the bare frame before cutting or ordering geometry-dependent materials.

### Diary entry template

```markdown
## YYYY-MM-DD — Short session title

**Objective:**

**Completed:**

**Measurements:**

**Decisions:**

**Problems / failed attempts:**

**Materials used or purchased:**

**Cost:**

**Photographs / files:**

**Next action:**
```

---

## Repository Rules

- `README.md` is the current project charter, status board, scheduler, decision log, and high-level diary.
- `AGENTS.md` contains operating instructions for ChatGPT, Codex, and other repository agents.
- Existing files under `docs/` predate the July 21 reset. They are useful historical material but are **not authoritative where they conflict with this README** until individually reconciled.
- Confirmed measurements, CAD, firmware, wiring, photographs, and BOM data should move into dedicated files as they grow too large for the README.
- Every irreversible cut should be traceable to a measured, known, plan-derived, or explicitly inferred dimension.
- Every completed scheduler item should have evidence: a measurement, photograph, CAD file, test result, receipt, or physical artifact.
