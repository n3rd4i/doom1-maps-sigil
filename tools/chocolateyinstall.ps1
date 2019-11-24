$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.romerogames.ie/s/SIGIL_V1_1.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Join-Path $toolsDir wad)"
  url           = $url
  checksum      = 'A09A65A2084C30798B39AEEA08E895095B0A59A44552010D834D169BA2E3287B'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
