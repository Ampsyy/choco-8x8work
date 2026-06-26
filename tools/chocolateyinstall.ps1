$ErrorActionPreference = 'Stop'
$packageName    = '8x8Work'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://work-desktop-assets.8x8.com/prod-publish/ga/work-64-msi-v8.34.1-11.msi'
$checksum64     = 'a5b4ed9ef3e00a9e41a50654a9a01e6d83c7de28ed62f01ffab61f238454b469'
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
