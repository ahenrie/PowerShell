# Commands
1. Cmdlet
2. Functions
3. Script

## Anatomy of A Command
```PowerShell
Get-Service -Name P* -ComputerName Client1,Client2
```
- `Get-Service` is the command name
- `-Name P*` first paramater with a wild card
- `-ComputerName Client1,Client2` is the second parameter

## 3 Important Commands
1. Get-Command: Retrieves all commands and is great for searching --> `Get-Command -Name Firewall* -CommandType Function`
2. Get-Help: Displays how-to, it is like the man command
3. Get-Member

### Demos
```PowerShell
get-service | where-object status -eq 'Stopped'
(get-service | where-object status -eq 'Stopped' | Select-Object Name,Status).count
```

## Working With Variables
Variables are a container of info that we wish to reuse later.
`$A = 1`

```PowerShell
// Get all variables with the letter P
Get-Variable -Name P*

// Get info about PowerShell  in session
$PSVersionTable

//Write out
 Write-Host "The name of this computer is $ENV:COMPUTERNAME"
```
