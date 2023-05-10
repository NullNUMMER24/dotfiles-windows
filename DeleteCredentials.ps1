# Get all saved credentials
$creds = cmdkey /list | Where-Object { $_ -like "Target:*" } | ForEach-Object { $_.Substring(7) }

# Delete each saved credential
foreach ($cred in $creds) {
    cmdkey /delete:$cred
}

# Confirm that all credentials have been deleted
if (cmdkey /list | Where-Object { $_ -like "Target:*" }) {
    Write-Warning "Failed to delete all credentials."
} else {
    Write-Host "All credentials have been deleted."
}
