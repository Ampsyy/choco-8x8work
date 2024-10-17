$ErrorActionPreference = 'Stop'
$packageName    = '8x8Work'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://work-desktop-assets.8x8.com/prod-publish/ga/work-64-msi-v8.17.4-2.msi'
$checksum64     = '824FC58E21F86CD56274D945D0BBDB058E2A558264BB6C36CA400526B42A1C17'

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