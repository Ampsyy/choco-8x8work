$ErrorActionPreference = 'Stop'
$packageName    = '8x8Work'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://vod-updates.8x8.com/ga/work-64-msi-v8.11.2-4.msi'
$checksum64     = 'ED25E3B22696832709CB5486CEE76B374E943E191945043BAEAF16C7477EB869'

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