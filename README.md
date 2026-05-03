# Proton Pack Build

This repo is the project control center for a hyper-realistic, wearable proton pack prop, started on 2026-05-03 with an October target.

The build goal is a personal-use, convention-ready classic pack and wand: real materials where they matter, practical lights/sound/vibration/smoke where they are safe, and enough serviceability that the pack can survive an event instead of only surviving a photo.

## Start Here

1. Read [docs/01-build-guide.md](docs/01-build-guide.md).
2. Run `.\scripts\download-references.ps1` to cache the Stefan Otto/HProps PDFs locally. The downloaded files are ignored by git.
3. Print the Stefan pack overview and motherboard at 1:1 scale, then verify scale against the ruler on the plan before cutting anything.
4. Work the Week 1 checklist in [docs/03-backlog.md](docs/03-backlog.md).
5. Add measurements and corrections to [docs/05-measurement-log.md](docs/05-measurement-log.md) as they are confirmed on the bench.

## Current Assumptions

- Existing owned part: LC-2 ALICE frame.
- Visual baseline: classic GB1/GB2-style pack, using Stefan Otto for layout and Sean Bishop as a screen-used measurement sanity check.
- Build style: aluminum/metal structural parts, 3D printed and finished shell/greeblies, real hoses/loom/labels, custom or kit-backed electronics.
- October target: event-ready by 2026-10-01, with October reserved for polish, repairs, and comfort tuning.

## Repo Map

- [docs/00-reference-sources.md](docs/00-reference-sources.md): source links and how to use them.
- [docs/01-build-guide.md](docs/01-build-guide.md): the main build strategy and phase guide.
- [docs/02-milestones.md](docs/02-milestones.md): May to October schedule.
- [docs/03-backlog.md](docs/03-backlog.md): taskable work items.
- [docs/04-bom.md](docs/04-bom.md): bill of materials and budget buckets.
- [docs/05-measurement-log.md](docs/05-measurement-log.md): confirmed dimensions, cut lists, and source confidence.
- [docs/06-safety-and-test-plan.md](docs/06-safety-and-test-plan.md): prop safety, power safety, and reliability checks.
- [docs/07-decisions.md](docs/07-decisions.md): decision log.
- [scripts/download-references.ps1](scripts/download-references.ps1): downloads public reference PDFs into `references/raw/`.

