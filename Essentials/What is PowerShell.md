# PowerShell Overview

## What is PowerShell?
- Command-line shell
- Scripting language
- Automation platform
- Configuration management: declarative scripts

## Why Learn This?
- Baked into Microsoft tools
- Automation for IT
- Multi-platform scripting language
- Better than a GUI
- Every Azure cert has powershell
- Everybody is using it (? sh is better)

## DEMO
I need an Excel spreadsheet of all stopped services.
```Powershell
$data = get-service | where-Object Status -eq 'Stopped' | select-object Name,Status
$data | export-csv .\services.csv
notepad ./services.csv
```
