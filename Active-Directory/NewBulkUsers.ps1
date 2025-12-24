<#
.SYNOPSIS
    Bulk creates Active Directory users from a CSV file specified by the user.
.PARAMETER CSVPath
    The full path to the CSV file containing user data.
.PARAMETER TargetOU
    The target Organizational Unit where users will be created.
#>


Param (
    [Parameter(Mandatory=$true)]
    [string]$CSVPath,

    [Parameter(Mandatory=$true)]
    [string]$TargetOU
)


Import-Module ActiveDirectory
try {
    if (Test-Path $CSVPath) {
        $Users = Import-Csv -Path $CSVPath
        foreach ($user in $Users) {
            $firstName = $user.FirstName
            $lastName = $user.LastName
            $username = $user.Username
            $RandomPassword = -join ((65..90) + (97..122) + (48..57) | Get-Random -Count 12 | % {[char]$_})
            $password = ConvertTo-SecureString $RandomPassword -AsPlainText -Force

            $userParams = @{
                GivenName       = $firstName
                Surname         = $lastName
                Name            = "$firstName $lastName"
                SamAccountName  = $username
                Enabled           = $true
                ChangePasswordAtLogon = $true
                Path = $TargetOU
                AccountPassword = $password
            }
            Write-Host "User creation : $username..." -ForegroundColor Cyan
            New-ADUser @userParams
            Write-Host "Successfully created $username" -ForegroundColor Green
        }
    } else {
        Write-Host "CSV file not found at path: $CSVPath" -ForegroundColor Red
    }
} catch {
        Write-Host "Error: $_" -ForegroundColor Red
}
