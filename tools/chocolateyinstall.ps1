$ErrorActionPreference = 'Stop'
$packageName    = '8x8Work'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://work-desktop-assets.8x8.com/prod-publish/ga/work-64-msi-v8.18.2-7.msi'
$checksum64     = '5321A76F1393B105053FE3CBCD9D9C3E725E2BDDFB415EEE2249FB8560B0BA4F'

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