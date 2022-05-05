$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://romero.com/s/SIGIL_v1_21.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Join-Path $toolsDir wad)"
  url           = $url
  checksum      = 'BA1EC3E88EF4F5D7D805E0F3930DCF424A6C03C9976AB422BA17C9C2F8B06BD1'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
