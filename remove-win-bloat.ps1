# If you would like to add/remove packages run this in your terminal to view your packages 
# Get-AppxPackage | Select Name, PackageFullName

# Format for removing packages should you want to trim or add to this list
# Get-AppxPackage **| Remove-AppxPackage


# Removing General Bloat

Get-AppxPackage *Microsoft.ZuneMusic*| Remove-AppxPackage
Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage
Get-AppxPackage *Microsoft.BingNews*| Remove-AppxPackage
Get-AppxPackage *Clipchamp.Clipchamp*| Remove-AppxPackage
Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection*| Remove-AppxPackage
Get-AppxPackage *Microsoft.GamingApp*| Remove-AppxPackage
Get-AppxPackage *Microsoft.SkypeApp*| Remove-AppxPackage
Get-AppxPackage *Microsoft.ZuneVideo*| Remove-AppxPackage
Get-AppxPackage *Microsoft.BingWeather*| Remove-AppxPackage

# Removing Xbox Bloat 

# Finds Xbox related packages on your system !! This removes all Xbox packages except the finnicky XboxGameCableUI
dism /Online /Get-ProvisionedAppxPackages | Select-String PackageName | Select-String xbox

#  Removes Xbox related packages
Get-ProvisionedAppxPackage -Online | `
Where-Object { $_.PackageName -match "xbox" } | `
ForEach-Object { Remove-ProvisionedAppxPackage -Online -PackageName $_.PackageName }

Get-AppxPackage -AllUsers Microsoft.XboxGamingOverlay | Remove-AppxPackage