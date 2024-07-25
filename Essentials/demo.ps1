# Lists commands related to "Firewall"
get-command -Name *Firewall*

# Shows the examples of how to use the Get-NetFirewallRule cmdlet
help Get-NetFirewallRule -Examples

# Gets information about the properties and methods of the objects returned by Get-NetFirewallRule.
<#
Get-NetFirewallRule retrieves firewall rules. 
The pipeline (|) sends these objects to gm (short for Get-Member), which displays details about the properties and methods of these objects. 
This helps in understanding what data is available and how you can interact with it.
#>
Get-NetFirewallRule | gm

# Retrieves firewall rules with names containing "RemoteDesktop" and formats the output as a table.
Get-NetFirewallRule -Name *RemoteDesktop* | ft

#  Prepares to enable firewall rules with names containing "RemoteDesktop" without actually making the change, due to the -WhatIf parameter.
<#
This command first retrieves firewall rules with names containing "RemoteDesktop". 
The result is piped to Set-NetFirewallRule, which modifies the rules. 
The -Enabled 'True' parameter is intended to enable these rules, but because of the -WhatIf parameter,
it only simulates the action and shows what would happen if the command were executed, without actually changing the rules.
#>
Get-NetFirewallRule -Name *RemoteDesktop* | Set-NetFirewallRule -Enabled 'True' -Whatif
