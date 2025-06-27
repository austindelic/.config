#. "$HOME/.config/powershell/profile.ps1"
#Add the above line in your real $PROFILE file

if (Get-Alias -Name ls -ErrorAction SilentlyContinue) {
    Remove-Alias -Name ls
}
Invoke-Expression (&starship init powershell)
function ls { eza --icons @args }
function lt { eza --tree --icons @args }
function fm { yazi $PWD }
function y {
    $tmp = [System.IO.Path]::GetTempFileName()
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp -Encoding UTF8
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -LiteralPath ([System.IO.Path]::GetFullPath($cwd))
    }
    Remove-Item -Path $tmp
}

function menu {
    Write-Host "`n--- Terminal Quick Commands ---`n"
    Write-Host "nvide   → Open Neovide"
    Write-Host "ls   → List files"
    Write-Host "la   → List all files"
    Write-Host "lt   → Tree view"
    Write-Host "y    → Yazi file manager"
    Write-Host "f    → Fuzzy finder"
    Write-Host "top  → System monitor"
    Write-Host "cat  → Pretty print file"
    Write-Host "grep → Find text"
    Write-Host "find → Find file"
    Write-Host "disk → Disk usage analyzer"
    Write-Host "space → Disk free space"
    Write-Host "lg   → Git UI"
    Write-Host "edconf → Edit config"
}
function f { fzf }
function top { btop }
function cat { bat @args }
function grep { rg @args }
function find { fd @args }
function disk { dust }
function space { duf }
function lg { lazygit }
function python3 { python }
function nvide { Start-Process "C:\Program Files\Neovide\neovide.exe" -- @args }
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
$env:EZA_CONFIG_DIR = "$env:USERPROFILE\.config\eza"
$env:YAZI_CONFIG_HOME = "$HOME\.config\yazi"
$env:YAZI_FILE_ONE = "C:\Program Files\Git\usr\bin\file.exe"
$env:TERM = "xterm-256color"
