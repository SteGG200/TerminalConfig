﻿# Exit on any error
$ErrorActionPreference = "Stop"

# Clear screen and print logo
Clear-Host
$Logo = @"

  ███████╗████████╗███████╗ ██████╗  ██████╗ ██████╗  ██████╗  ██████╗ 
  ██╔════╝╚══██╔══╝██╔════╝██╔════╝ ██╔════╝ ╚════██╗██╔═████╗██╔═████╗
  ███████╗   ██║   █████╗  ██║  ███╗██║  ███╗ █████╔╝██║██╔██║██║██╔██║
  ╚════██║   ██║   ██╔══╝  ██║   ██║██║   ██║██╔═══╝ ████╔╝██║████╔╝██║
  ███████║   ██║   ███████╗╚██████╔╝╚██████╔╝███████╗╚██████╔╝╚██████╔╝
  ╚══════╝   ╚═╝   ╚══════╝ ╚═════╝  ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝ 

	Windows setup tool

"@
Write-Host $Logo

# Install scoop package manager if not present
Write-Host -NoNewLine "Checking scoop package manager: "
if (Get-Command scoop -ErrorAction SilentlyContinue) {
	Write-Host "scoop is already installed"
}else {
	Write-Host "not found scoop"
	Write-Host "Installing scoop for package manager..."
	Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

# Import utility funtions
. $pwd\scripts\windows\utils.ps1

# Import package list
. $pwd\scripts\windows\packages.ps1

# Install git if not present
if (! (Get-Command git -ErrorAction SilentlyContinue)) {
	Write-Host "Installing git..."
	scoop install main/git
}

# Add needed buckets
Write-Host "Adding important buckets..."
add_buckets $SCOOP_BUCKETS

# Install packages by category
Write-Host "Installing system utilities..."
install_packages $SYSTEM_UTILS

Write-Host "Installing development tools..."
install_packages $DEV_TOOLS

Write-Host "Installing fonts..."
install_packages $FONTS

# Install windows terminal if not present
if (! (Get-Command wt -ErrorAction SilentlyContinue)) {
	Write-Host "Installing windows terminal..."
	scoop install extras/windows-terminal
}

# Install gsudo if not present
if (! ( Get-Command gsudo -ErrorAction SilentlyContinue )) {
	Write-Host "Installing gsudo..."
	scoop install main/gsudo
}

# Link configuration files
Write-Host "Linking neovim configuration..."
link_config "$pwd\nvim" "$($env:LOCALAPPDATA)\nvim" "$($env:LOCALAPPDATA)\nvim_backup"

Write-Host "Linking powershell profile..."
if (Test-Path -Path $PROFILE){
	$TEMP = (Get-Item $PROFILE)
	link_config "$pwd\powershell\profile.ps1" $PROFILE "$($TEMP.Directory)\$($TEMP.BaseName).bak"
}else {
	link_config "$pwd\powershell\profile.ps1" $PROFILE ""
}

# Run winutils
Write-Host "Starting winutils..."
gsudo -n -w { irm "https://christitus.com/win" | iex }
