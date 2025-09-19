#!/usr/bin/env bash
# ======================================================
# Arch Linux Development Environment for AI & App Dev
# Includes: Miniconda, Zsh Power-Up, AI/ML frameworks,
#           Web & App development tools, Databases, Themes
# ======================================================
set -e
log() { echo -e "\n\033[1;36m[INFO]\033[0m $1\n"; }

# ---- Update system ----
log "Updating system..."
sudo pacman -Syu --noconfirm

# ---- Core Dev Tools ----
log "Installing core development tools..."
sudo pacman -S --needed --noconfirm \
  base-devel git wget curl unzip zip tar \
  cmake ninja gdb lldb make automake pkgconf \
  neovim vim code

# ---- Programming Languages ----
log "Installing programming languages..."
sudo pacman -S --needed --noconfirm \
  python python-pip nodejs npm \
  openjdk-21-jdk go rust cargo ruby dotnet-sdk

# ---- Containers & Virtualization ----
log "Installing Docker, Podman, and virtualization tools..."
sudo pacman -S --needed --noconfirm \
  docker docker-compose podman podman-compose \
  vagrant qemu virt-manager

# ---- Databases ----
log "Installing databases..."
sudo pacman -S --needed --noconfirm \
  postgresql mysql sqlite redis mongodb

# ---- Theming ----
log "Installing themes, fonts, and terminal..."
sudo pacman -S --needed --noconfirm \
  gnome-tweaks papirus-icon-theme arc-gtk-theme kvantum-qt5 \
  lxappearance ttf-dejavu ttf-roboto fonts-terminus alacritty

# ---- Miniconda ----
log "Installing Miniconda..."
MINICONDA=Miniconda3-latest-Linux-x86_64.sh
wget https://repo.anaconda.com/miniconda/$MINICONDA -O /tmp/$MINICONDA
bash /tmp/$MINICONDA -b -p $HOME/miniconda
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.zshrc
source ~/.bashrc

# ---- Create Conda environments for AI ----
log "Creating AI/ML Conda environments..."
$HOME/miniconda/bin/conda init zsh
$HOME/miniconda/bin/conda init bash
$HOME/miniconda/bin/conda create -y -n tensorflow python=3.11 tensorflow keras matplotlib pandas scikit-learn jupyterlab
$HOME/miniconda/bin/conda create -y -n pytorch python=3.11 pytorch torchvision torchaudio cpuonly -c pytorch -c conda-forge

# ---- CUDA and cuDNN for NVIDIA GPUs ----
log "Installing CUDA and cuDNN..."
sudo pacman -S --needed --noconfirm cuda cudnn

# ---- Web/App Development Tools ----
log "Installing web and mobile app dev tools..."
sudo pacman -S --needed --noconfirm \
  flutter android-tools gradle maven \
  yarn deno

# ---- AI Framework Extras ----
log "Installing extra AI tools and libraries..."
pip install --upgrade pip
pip install numpy scipy seaborn opencv-python pillow \
    transformers datasets diffusers accelerate \
    torchinfo gradio streamlit flask fastapi

# ---- Zsh Power-Up ----
log "Installing Zsh, Oh My Zsh, plugins, and Starship..."
sudo pacman -S --needed --noconfirm zsh starship

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no CHSH=no KEEP_ZSHRC=yes sh -c \
  "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install plugins
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ] && \
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ] && \
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Update ~/.zshrc
if grep -q "^plugins=" ~/.zshrc; then
  sed -i 's/^plugins=(.*)$/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc
else
  echo 'plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' >> ~/.zshrc
fi

if ! grep -q 'eval "$(starship init zsh)"' ~/.zshrc; then
  echo 'eval "$(starship init zsh)"' >> ~/.zshrc
fi

# ---- Enable Docker ----
log "Enabling Docker..."
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker "$USER"

# ---- Flatpak ----
log "Setting up Flatpak..."
sudo pacman -S --needed --noconfirm flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# ---- Cleanup ----
log "Cleaning up..."
sudo pacman -Sc --noconfirm

log "✅ Setup complete! Reboot or log out/in to apply Docker and Zsh changes."
