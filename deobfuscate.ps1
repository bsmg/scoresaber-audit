param (
  [string]$Version,
  [bool]$Verbose,
  [bool]$Decompile,
  [bool]$DryRun,
  [int]$Parallelism,
  [string]$Report
)

function Test-Tool {
  param (
    [Parameter(Mandatory=$true)]
    [string]$Tool
  )

  if (Get-Command -ErrorAction SilentlyContinue $Tool) {} else {
    Write-Output "$Tool not detected!"
    Write-Output "Please add $Tool to your PATH"

    Exit 1
  }
}

# Ensure CLI tools are installed
Test-Tool "git"
Test-Tool "msbuild"
Test-Tool "dotnet"

# Ensure submodule is setup
git submodule update --init

# Resolve paths
$project = Resolve-Path -Path ./Scoresaber-Deobfuscate/Deobfuscator.Bulk
$versions = Resolve-Path -Path ./versions.tsv

# Build command
$command = "dotnet run -c Release --project '$project' -- --versions '$versions' --password velvet99"
if ($version) {
  $command = "$command -V '$version'"
}

if ($Verbose) {
  $command = "$command --verbose"
}

if ($Decompile) {
  $command = "$command --decompile"
}

if ($DryRun) {
  $command = "$command --dry-run"
}

if ($Parallelism) {
  $command = "$command --parallelism $Parallelism"
}

if ($Report) {
  $command = "$command --report $Report"
}

# Run
Invoke-Expression $command
