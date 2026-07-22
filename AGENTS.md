# AGENTS.md

This repository is the working control system for a physical 1984 Venkman hero proton-pack build. It is not merely a documentation project and not an invitation to generate a pile of attractive but mutually incompatible plans.

The target is a close-up-credible, mechanically substantial, serviceable pack completed by **October 31, 2026** within an approximate **$500–$1,000** budget.

Read `README.md` completely before proposing or making changes.

---

## 1. Mission and Non-Negotiables

The finished object should look, sound, and feel as though it came from the 1984 film production rather than from a toy aisle or a lightly sanded printer farm.

Preserve these constraints:

- Variant: **1984 Venkman hero pack**.
- Target mass: **30–33 lb ready to wear**, including wand and battery.
- Existing structural starting point: an army-surplus ALICE frame whose exact pattern is not yet confirmed.
- Deadline: **October 31, 2026**.
- Visibly metallic, tactile, load-bearing, or acoustically important parts should be real metal whenever practical.
- Printed parts are acceptable as tooling, hidden structure, electrical insulation, internal carriers, or fully finished composite cores.
- No visible print lines on completed close-up surfaces.
- Structural loads must terminate at the aluminum motherboard or ALICE frame, not the decorative shell.
- The shell and electronics must remain serviceable.
- No structural hot glue.
- No exposed mains voltage, pyrotechnics, or casually designed battery systems.
- Do not add purposeless ballast. Earn the weight through structure and actual components.

Do not silently drift toward a generic GB1/GB2/Afterlife hybrid. Any variant change requires an explicit decision-log entry and user approval before irreversible fabrication.

---

## 2. Source of Truth

Use this precedence order:

1. Explicit user instructions in the current task
2. `AGENTS.md`
3. The current `README.md`
4. Physically confirmed measurements and test results
5. Variant-specific Venkman hero-pack photographs
6. Dimensions of documented real found parts
7. Stefan Otto plan sheets
8. Other replica plans and community builds
9. Prior assumptions, memory, or aesthetically persuasive guesses

Existing files under `docs/` were created before the July 21, 2026 project reset. Treat them as historical research until reconciled. When they conflict with `README.md`, the README wins.

Never state an uncertain dimension as established fact. Label dimensions as:

- `MEASURED`: taken from the actual owned component
- `KNOWN`: taken from a documented real found part
- `PLAN`: taken from a named plan and sheet
- `INFERRED`: estimated from photographs or proportional geometry

Record source, units, and confidence. A number without provenance is decorative numerology.

---

## 3. First Physical Gate

Until the ALICE frame survey is complete, do not recommend permanent drilling, final motherboard holes, or geometry-dependent bulk purchases.

Required survey evidence:

- Straight-on front, rear, and side photographs
- Tape measure in the same plane as the frame
- Overall height
- Maximum width
- Frame-tube outside diameter
- Center-to-center spacing of upper and lower horizontal members
- Width between vertical frame tubes
- Close-ups of stamps, bends, mounts, straps, damage, and repairs
- A scale-verified disposable motherboard template clamped to the frame
- Front, rear, and side photographs of the template/frame assembly

The gate passes only when frame identity, usable mounting geometry, and motherboard fit are documented.

---

## 4. Repository Operating Model

`README.md` serves as:

- Project charter
- Current status
- Dated build scheduler
- Current work queue
- Decision log
- High-level work diary

As content grows, use dedicated paths:

```text
cad/                  CAD source, exports, drawings, and revision notes
electronics/          Schematics, wiring diagrams, power calculations, and test records
firmware/             Pack and wand firmware
photos/YYYY-MM-DD/    Build photographs grouped by session
measurements/         Measurement tables, source notes, and cut lists
bom/                  BOM, receipts, vendor notes, and mass/cost tracking
diary/                 Detailed session notes when README entries become too large
references/           Locally permitted reference indexes and notes; avoid committing copyrighted archives
jigs/                  Printable or machinable manufacturing aids
tests/                 Structural, electrical, thermal, endurance, and wearability results
```

Do not create directories merely to admire their emptiness. Add them when there is actual content.

---

## 5. Required Update Procedure

For every substantive work session or repository change:

1. Read the README's `Current Work Queue`, scheduler, decisions, and latest diary entry.
2. Identify the current phase and its exit gate.
3. Do not optimize a later phase while the current gate is blocked unless the work is genuinely independent and low-risk.
4. Record new measurements with provenance and units.
5. Update the relevant scheduler checkboxes only when evidence exists.
6. Add or amend a decision-log entry for any design choice that constrains later work.
7. Append a dated diary entry summarizing:
   - objective
   - work completed
   - measurements
   - decisions
   - failed attempts or problems
   - materials and cost
   - photographs or files
   - next action
8. Keep the `Current Work Queue` ordered and limited to the next practical steps.
9. Update BOM, mass, and budget totals when purchases or major fabricated assemblies change them.
10. State blockers plainly. Do not hide uncertainty behind polished prose.

Never mark a physical task complete merely because instructions, CAD, or code exist. Completion requires the artifact or test described by the task.

---

## 6. Design and Fabrication Rules

### Metal and composite

Prefer aluminum for the motherboard, wand spine, skins, visible brackets, cyclotron face, crossbar, bumper structure, and obvious fabricated machinery.

Use fiberglass/composite construction where the original visual form is molded, where compound curvature makes sheet fabrication perverse, or where a printed core can disappear completely beneath reinforcement and finishing.

Do not substitute thick steel simply to gain weight. Mass should remain distributed and wearable.

### Printed parts

A printed part exposed to close inspection must meet at least one condition:

- The original appears molded or nonmetallic.
- The print is only a core beneath composite reinforcement and finishing.
- The part is explicitly an electrical insulator.
- The part is hidden.
- The user has approved the visible compromise.

Never expose raw layer lines on the completed pack.

### Fastening

Prefer:

- machine screws
- rivnuts
- nutplates
- threaded inserts
- hidden brackets
- removable panels
- locking electrical connectors
- strain relief

Avoid inaccessible loose nuts and permanent adhesive where a future repair is predictable.

### Irreversible work

Before drilling, plasma cutting, welding, laminating, or permanently bonding a geometry-critical part:

- verify scale
- cross-check against photographs
- confirm left/right orientation
- identify the dimensional source
- make a disposable template when practical
- photograph the dry fit

A plasma cutter is a magnificently efficient device for converting an unverified assumption into scrap.

---

## 7. Electronics and Firmware Rules

The preferred architecture uses separate pack and wand controllers connected through the hose by RS-485 or CAN.

Maintain explicit states rather than scattered boolean behavior:

```text
OFF → BOOTING → IDLE → FIRING → OVERHEATING → VENTING → IDLE
Any state → FAULT → SHUTDOWN
```

Requirements:

- Fuse at the battery
- Master disconnect
- Separate protected high-current and regulated logic rails
- Locking connectors
- Reverse-polarity protection where practical
- Battery-voltage monitoring
- Thermal monitoring around regulators, amplifier, battery, and actuators
- No dependence on network connectivity
- Predictable startup and shutdown
- Safe behavior after communication loss
- Test modes for pack and wand independently
- Logged pin assignments and connector diagrams

Firmware must be understandable, not merely functioning. Explain timing, state transitions, current limits, debounce, fault handling, and hardware assumptions.

Do not copy a community firmware project blindly. It may be used as a behavioral and implementation reference, subject to its license.

---

## 8. Scheduler Discipline

The dated phase plan in `README.md` is the authoritative scheduler.

Use these markers consistently:

- `[ ]` not started
- `[~]` in progress
- `[x]` complete and verified
- `[-]` intentionally removed or deferred
- `[!]` blocked

Rules:

- Do not mark `[x]` without physical or test evidence.
- Add the evidence path or diary date when completion would otherwise be ambiguous.
- Preserve exit gates. They exist to stop attractive downstream work from hiding structural uncertainty.
- Long-lead ordering may run in parallel only when the part is variant-correct and independent of unresolved dimensions.
- After October 18, reject feature creep unless it fixes safety, reliability, or a glaring close-up defect.

Use GitHub issues for discrete blockers, purchases requiring comparison, firmware defects, and tasks that need a discussion thread. Do not create one issue for every checkbox; the README already performs that job.

---

## 9. Cost and Mass Tracking

Every meaningful purchase should record:

- vendor
- part
- quantity
- purchase date
- item cost
- shipping/tax when material
- planned subsystem
- actual measured mass when received
- return deadline when relevant

Maintain running totals against:

- desired spend: approximately $800
- maximum intended spend: approximately $1,000
- contingency reserve: approximately $150
- target finished mass: 30–33 lb

Flag collector-priced found parts when a fabricated substitute would be visually and tactilely equivalent. Conversely, do not cheap out on parts whose texture, edge geometry, markings, or mechanical action define the close-up illusion.

---

## 10. Testing Rules

Minimum qualification targets:

### Structure

- Frame/motherboard/wall cradle supports at least 50 lb before shell installation
- No slipping, permanent deformation, cracked laminate, or fastener migration
- Wall mount engages the ALICE frame rather than the shell

### Serviceability

- Shell removable in under ten minutes
- Battery, fuse, controllers, and major connectors accessible without destructive work
- Wand hose and V-hook replaceable

### Electrical

- Two-hour continuous operating test
- No thermal fault, reset, connector heating, or regulator instability
- Safe fault and shutdown behavior

### Mechanical

- 100 wand firing/barrel cycles
- Repeated one-handed wand docking
- Walking and stair test
- Hose strain-relief test

### Finish

- Hard side-light photographs to expose print lines, sanding waves, filler shrinkage, and inconsistent sheen
- Close-up inspection of fasteners, seams, labels, exposed edges, and tubing transitions

Record failed tests. A failed test is useful data; an unrecorded failure is merely future profanity.

---

## 11. Interaction Style for Agents

The owner is a professional software developer with welding, plasma cutting, electronics, firmware, and 3D-printing capability. Do not explain basic tool ownership as though addressing a first-time craft-kit buyer.

However:

- Explain design reasoning from first principles.
- Distinguish fact, inference, and preference.
- Push back on weak assumptions.
- Provide cut lists, wiring, firmware, or CAD logic only after the required dimensions are known.
- Do not encourage blind copy/paste or vague “vibe fabrication.”
- Prefer one coherent implementation over a catalog of mutually exclusive options.
- Ask for missing measurements only when they materially block irreversible work; otherwise make a clearly labeled provisional assumption and continue.
- Keep the work moving toward the current phase exit gate.

The project exists because building the thing is the point. Do not solve it by recommending that the owner buy a completed pack.

---

## 12. Current Immediate Instruction

The next repository update should be driven by the ALICE-frame survey.

Expected output after that survey:

1. Frame identification and condition notes
2. Measurement table with photographs
3. Scale verification of the motherboard plan
4. Template-fit analysis
5. Revised motherboard and mounting assumptions
6. First geometry-dependent cut list
7. Updated Phase 0 checkboxes and diary entry

Until then, do not pretend the motherboard is ready for metal.
