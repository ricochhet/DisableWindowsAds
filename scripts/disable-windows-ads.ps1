# Function to create registry keys if they don't exist
function Create-RegistryKeyIfNotExists {
    param (
        [string]$Path
    )

    if (-not (Test-Path $Path)) {
        New-Item -Path $Path -Force | Out-Null
    }
}

# Sync provider notifications in File Explorer
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSyncProviderNotifications" -Value 0

# Show recommendations for tips, shortcuts, new apps, and more on Start
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_IrisRecommendations" -Value 0

# Show me the Windows welcome experience after updates and occasionally when I sign in to highlight what's new and suggested
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-310093Enabled" -Value 0

# Get fun facts, tips, tricks, and more on your lock screen
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "RotatingLockScreenOverlayEnabled" -Value 0
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338387Enabled" -Value 0
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338388Enabled" -Value 0

# Get tips and suggestions when using Windows
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338389Enabled" -Value 0

# Show suggested content in Settings app
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-338393Enabled" -Value 0
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353694Enabled" -Value 0
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" -Name "SubscribedContent-353696Enabled" -Value 0

# Suggest ways to get the most out of Windows and finish setting up this device
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\UserProfileEngagement" -Name "ScoobeSystemSettingEnabled" -Value 0

# Let apps show me personalized ads by using my advertising ID
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -Name "Enabled" -Value 0

# Tailored experiences
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" -Name "TailoredExperiencesWithDiagnosticDataEnabled" -Value 0

# Search box suggestions
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableSearchBoxSuggestions" -Value 1

# Windows start menu Bing search
Create-RegistryKeyIfNotExists "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
Set-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" -Name "BingSearchEnabled" -Value 0
