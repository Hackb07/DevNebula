
# 🚀 Arch Linux AI & App Developer Environment Setup

This repository contains a powerful **Arch Linux setup script** to install all essential tools for **AI/ML development** and **application development**.  
It includes Miniconda environments for **TensorFlow** and **PyTorch**, Zsh with **Oh My Zsh** plugins, themes, languages, IDEs, containers, databases, and more.

---

## ✨ Features

- 🐍 **Miniconda** with pre-configured environments:
  - `tensorflow`: TensorFlow, Keras, Matplotlib, Pandas, Scikit-learn, JupyterLab  
  - `pytorch`: PyTorch, Torchvision, Torchaudio  
- 💻 **Programming Languages**: Python, Node.js, Java (OpenJDK 21), Go, Rust, Ruby, .NET SDK  
- 🐳 **Containers & Virtualization**: Docker, Docker Compose, Podman, Vagrant, QEMU, Virt-Manager  
- 🗄 **Databases**: PostgreSQL, MySQL, SQLite, Redis, MongoDB  
- 🖌 **Theming & Fonts**: Papirus icons, Arc GTK theme, Kvantum, LXAppearance, Alacritty terminal  
- 🧠 **AI Libraries & Tools**: NumPy, SciPy, Seaborn, OpenCV, Transformers, Diffusers, Accelerate, Torchinfo, Gradio, Streamlit, Flask, FastAPI  
- 📱 **App Dev Tools**: Flutter, Android Tools, Gradle, Maven, Yarn, Deno  
- ⚡ **Zsh Power-Up**:  
  - Oh My Zsh for easy configuration  
  - Plugins: `zsh-autosuggestions`, `zsh-syntax-highlighting`  
  - Starship for a modern prompt  

---

## 📋 Requirements

- Arch Linux (latest, fully updated)
- Internet connection  
- Sufficient storage (~10–15 GB recommended)

---

## 🛠 Installation

1. Clone this repository or download the script:
   ```bash
   git clone https://github.com/<your-username>/arch-ai-app-dev-setup.git
   cd arch-ai-app-dev-setup
````

2. Make the script executable:

   ```bash
   chmod +x arch_ai_app_dev_setup.sh
   ```
3. Run the script:

   ```bash
   ./arch_ai_app_dev_setup.sh
   ```
4. Reboot or log out/in after installation.

---

## ▶ Usage

### Start Zsh and Activate Conda

```bash
zsh
conda init zsh
source ~/.zshrc
```

### Activate Environments

```bash
conda activate tensorflow
# or
conda activate pytorch
```

### Launch JupyterLab

```bash
jupyter lab
```

### Use Docker Without Sudo

After reboot, Docker is ready:

```bash
docker run hello-world
```

---

## 🎨 Customization

* Change themes with **LXAppearance** or **GNOME Tweaks**.
* Modify Zsh settings in `~/.zshrc`.
* Install additional Conda environments for specialized AI frameworks.

---

## 🧰 Installed Components Overview

| Category           | Tools                                                                 |
| ------------------ | --------------------------------------------------------------------- |
| Core Tools         | base-devel, git, wget, curl, cmake, ninja, gdb, lldb, make, pkgconf   |
| Languages          | Python, Node.js, Java, Go, Rust, Ruby, .NET SDK                       |
| AI Frameworks      | TensorFlow, PyTorch, Transformers, OpenCV, Gradio, Streamlit, FastAPI |
| App Dev            | Flutter, Android Tools, Gradle, Maven, Yarn, Deno                     |
| Containers         | Docker, Podman, Vagrant, QEMU, Virt-Manager                           |
| Databases          | PostgreSQL, MySQL, SQLite, Redis, MongoDB                             |
| Shell Enhancements | Zsh, Oh My Zsh, Autosuggestions, Syntax Highlighting, Starship        |
| Theming            | Papirus Icons, Arc GTK, Kvantum, LXAppearance, Alacritty              |

---

## 🧑‍💻 Contributing

Pull requests and suggestions are welcome!
Fork this repository and create a new branch for your improvements.

---

## 📜 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

