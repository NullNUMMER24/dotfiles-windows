# Install scoop
iwr -useb get.scoop.sh | iex

# Install neofetch
scoop install neofetch

# Install git
scoop install git

# Install neovim
scoop bucket add extras
scoop install vcredist2022
scoop install neovim
#########################################################################################################################
# setting up nvim                                                                                                       #
#########################################################################################################################
# Create a new folder called autoload
md ~\AppData\Local\nvim\autoload
# Downloads plug.vim file
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
  )
)

##Creating plugged Folder
# Set the path to the nvim configuration directory
$nvimPath = Join-Path $env:USERPROFILE "AppData\Local\nvim"

# Change to the nvim configuration directory
Set-Location $nvimPath

# Create a new directory for plugins
New-Item -ItemType Directory -Name "plugged" -Force

# Create config file
:e $nvimPath\init.vim

