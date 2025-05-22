$ErrorActionPreference = 'Stop'
$packageName    = '8x8Work'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://work-desktop-assets.8x8.com/prod-publish/ga/work-64-msi-v8.23.2-2.msi'
$checksum64     = 'B40BAC8710773C8A2934D0364F275D0CA2101FBADC82F2D25BDA67ADBF258295'

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