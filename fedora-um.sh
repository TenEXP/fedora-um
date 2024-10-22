# Optimize DNF
sudo echo "max_parallel_downloads=6" | sudo tee -a /etc/dnf/dnf.conf
sudo echo "fastestmirror=true" | sudo tee -a /etc/dnf/dnf.conf
sudo echo "defaultYes=Yes" | sudo tee -a /etc/dnf/dnf.conf

# Environment Variables
sudo echo "EDITOR=nvim" | sudo tee -a /etc/environment
sudo echo "VISUAL=nvim" | sudo tee -a /etc/environment
sudo echo "BROWSER=firefox" | sudo tee -a /etc/environment

# Ultramarine migration
sudo dnf update -y

## RPM Fusion
sudo dnf install -y "https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-${os_version}.noarch.rpm" "https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${os_version}.noarch.rpm"

## Terra
sudo dnf install -y --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' --setopt='terra.gpgkey=https://repos.fyralabs.com/terra$releasever/key.asc' terra-release

## Ultramarine
sudo dnf --nogpgcheck --repofrompath "ultramarine,https://repos.fyralabs.com/um${os_version}/" install -y ultramarine-repos-common ultramarine-repos

## Conversion
sudo dnf swap -y fedora-release-identity-basic ultramarine-release-identity-basic --allowerasing
sudo dnf group install --allowerasing -y ultramarine-product-common
sudo dracut -f

# COPRs
## Heroic Games Launcher
sudo dnf copr enable atim/heroic-games-launcher

## Kernel fsync
sudo dnf copr enable sentry/kernel-fsync
sudo dnf update --refresh
## exclude=kernel* in /etc/yum.repos.d/fedora-updates.repo

## Hyprland
sudo dnf copr enable solopasha/hyprland

## Nobara repo
sudo dnf copr enable gloriouseggroll/nobara-40
## In /etc/yum.repos.d/ Nobara one, priority=98 & includepkgs=gamescope gamescope-session-plus gamescope-session-common deckyloader gamescope-session-steam nerd-fonts umu-launcher ryzenadj v4l2loopback v4l2loopback-kmod

echo "Complete Nobara repo stuff and then run the install script"
