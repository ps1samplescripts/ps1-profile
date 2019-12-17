# Add a function that lists the aliases for any cmdlet
function Get-CmdletAlias ($cmdletname) {
	Get-Alias |
		Where-Object -FilterScript {$_.Definition -like "$cmdletname"} |
			Format-Table -Property Definition, Name -AutoSize
}

# Customize the console
function Color-Console {
	# $Host.ui.rawui.backgroundcolor = "Blue"
	$Host.UI.RawUI.ForegroundColor = "White"
	$hostversion = "$($Host.Version.Major)`.$($Host.Version.Minor)"
	$Host.UI.RawUI.WindowTitle = "PowerShell $hostversion"
	# Clear-Host
}
Color-Console
