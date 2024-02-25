# If you would like to add/remove packages run this in your terminal to view your packages 
# Get-AppxPackage | Select Name, PackageFullName

# Format for removing packages should you want to trim or add to this list
# Get-AppxPackage **| Remove-AppxPackage

Get-AppxPackage *Microsoft.ZuneMusic*| Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGameCallableUI*| Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxSpeechToTextOverlay*| Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGameOverlay*| Remove-AppxPackage
Get-AppxPackage *Microsoft.Xbox.TCUI*| Remove-AppxPackage
Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingNews*| Remove-AppxPackage
Get-AppxPackage *Microsoft.XboxGamingOverlay*| Remove-AppxPackage
Get-AppxPackage *Clipchamp.Clipchamp*| Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection*| Remove-AppxPackage
Get-AppxPackage *Microsoft.GamingApp*| Remove-AppxPackage
Get-AppxPackage *Microsoft.SkypeApp*| Remove-AppxPackage
