$ErrorActionPreference = 'Stop'
$packageName    = '8x8Work'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://work-desktop-assets.8x8.com/prod-publish/ga/work-64-msi-v8.19.2-3.msi'
$checksum64     = 'AEE76B0FAC194DB48B91CEC7FA8BE984CCE881DC168D69BEB22BB3722DF22A42'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'MSI'
  url64          = $url64
  validExitCodes = @(0, 3010, 1641)
  silentArgs     = '/quiet /norestart'
  softwareName   = '8x8 - Work'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
}

Install-ChocolateyPackage @packageArgs  