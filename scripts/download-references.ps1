param(
    [string]$Destination = (Join-Path $PSScriptRoot "..\references\raw")
)

$ErrorActionPreference = "Stop"

$files = @(
    @{ Name = "stefan-01-motherboard.pdf"; Url = "https://www.hprops.com/labels/01-Motherboard.pdf" },
    @{ Name = "stefan-02-synchronous-generator.pdf"; Url = "https://www.hprops.com/labels/02-SynchGen.pdf" },
    @{ Name = "stefan-03-cyclotron-n-filter.pdf"; Url = "https://www.hprops.com/labels/03-Cyclo&Nfilter.pdf" },
    @{ Name = "stefan-04-power-cell.pdf"; Url = "https://www.hprops.com/labels/04-PowerCell.pdf" },
    @{ Name = "stefan-05-eda-booster.pdf"; Url = "https://www.hprops.com/labels/05-EDA&Booster.pdf" },
    @{ Name = "stefan-06-ion-arm.pdf"; Url = "https://www.hprops.com/labels/06-IonArm.pdf" },
    @{ Name = "stefan-07-crank-generator-gearbox.pdf"; Url = "https://www.hprops.com/labels/07-CrankGen&Gearbox.pdf" },
    @{ Name = "stefan-08-hga.pdf"; Url = "https://www.hprops.com/labels/08-HGA.pdf" },
    @{ Name = "stefan-09-gun-block.pdf"; Url = "https://www.hprops.com/labels/09-GunBlock.pdf" },
    @{ Name = "stefan-10-cosmetic-plating.pdf"; Url = "https://www.hprops.com/labels/10-CosmPlating.pdf" },
    @{ Name = "stefan-11-bumper.pdf"; Url = "https://www.hprops.com/labels/11-Bumper.pdf" },
    @{ Name = "stefan-12-booster-frame.pdf"; Url = "https://www.hprops.com/labels/12-BoostFrame.pdf" },
    @{ Name = "stefan-13-ppd-r701.pdf"; Url = "https://www.hprops.com/labels/13-PPD&R701.pdf" },
    @{ Name = "stefan-14-corner-plate-shockmount.pdf"; Url = "https://www.hprops.com/labels/14-CornrPlt&Shockmt.pdf" },
    @{ Name = "stefan-15-greeblies.pdf"; Url = "https://www.hprops.com/labels/15-Greeblies.pdf" },
    @{ Name = "stefan-16-alice-pack-frame.pdf"; Url = "https://www.hprops.com/labels/16-AlicePack.pdf" },
    @{ Name = "stefan-17-pack-overview.pdf"; Url = "https://www.hprops.com/labels/17-Overview.pdf" },
    @{ Name = "stefan-18-wand-preliminary-1.pdf"; Url = "https://www.hprops.com/labels/18-Wand1.pdf" },
    @{ Name = "stefan-19-wand-preliminary-2.pdf"; Url = "https://www.hprops.com/labels/19-Wand2.pdf" },
    @{ Name = "stefan-final-wand-particle-emitter.pdf"; Url = "https://www.hprops.com/labels/BSGB-ParticleEmitter.pdf" },
    @{ Name = "hprops-pack-and-wand-labels.pdf"; Url = "https://www.hprops.com/labels/KJHPack03.pdf" },
    @{ Name = "hprops-gunbox-template.pdf"; Url = "https://www.hprops.com/labels/KJHGunbox02.pdf" },
    @{ Name = "hprops-msp-face-wing-template.pdf"; Url = "https://www.hprops.com/labels/KJHMSP01.pdf" }
)

New-Item -ItemType Directory -Force -Path $Destination | Out-Null

foreach ($file in $files) {
    $outputPath = Join-Path $Destination $file.Name

    if (Test-Path -LiteralPath $outputPath) {
        Write-Host "exists: $($file.Name)"
        continue
    }

    Write-Host "downloading: $($file.Name)"
    Invoke-WebRequest -Uri $file.Url -OutFile $outputPath -UseBasicParsing
}

Write-Host "reference cache complete: $Destination"

