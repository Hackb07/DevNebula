
# 🚀 Arch Linux AI & App Developer Environment Setup

This repository provides a **comprehensive Arch Linux setup script** tailored for **AI/ML development** and **application development**.
It installs **Miniconda environments**, programming languages, IDEs, containers, databases, theming, and Zsh enhancements for a ready-to-code experience.

---

## ✨ Features

* 🧠 **Pre-configured Miniconda environments**:

  * `tensorflow`: TensorFlow, Keras, Matplotlib, Pandas, Scikit-learn, JupyterLab
  * `pytorch`: PyTorch, Torchvision, Torchaudio
* 💻 **Programming Languages**: Python, Node.js, Java (OpenJDK 21), Go, Rust, Ruby, .NET SDK
* 🐳 **Containers & Virtualization**: Docker, Docker Compose, Podman, Vagrant, QEMU, Virt-Manager
* 🗄 **Databases**: PostgreSQL, MySQL, SQLite, Redis, MongoDB
* 🎨 **Theming & Fonts**: Papirus Icons, Arc GTK Theme, Kvantum, LXAppearance, Alacritty Terminal
* 🔬 **AI Libraries & Tools**: NumPy, SciPy, Seaborn, OpenCV, Transformers, Diffusers, Accelerate, Torchinfo, Gradio, Streamlit, Flask, FastAPI
* 📱 **App Development Tools**: Flutter, Android SDK Tools, Gradle, Maven, Yarn, Deno
* ⚡ **Zsh Power-Up**:

  * Oh My Zsh for simplified configuration
  * Plugins: `zsh-autosuggestions`, `zsh-syntax-highlighting`
  * Starship prompt for a modern shell experience

---

## 📋 Requirements

* Arch Linux (latest, fully updated)
* Stable internet connection
* At least **10–15 GB** of free storage

---

## 🛠 Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/<your-username>/arch-ai-app-dev-setup.git
   cd arch-ai-app-dev-setup
   ```

2. Make the setup script executable:

   ```bash
   chmod +x arch_ai_app_dev_setup.sh
   ```

3. Run the installer:

   ```bash
   ./arch_ai_app_dev_setup.sh
   ```

4. Reboot or log out/in to finalize environment changes.

---

## ▶ Usage

### Initialize Zsh & Conda

```bash
zsh
conda init zsh
source ~/.zshrc
```

### Activate Conda Environments

```bash
conda activate tensorflow
# or
conda activate pytorch
```

### Launch JupyterLab

```bash
jupyter lab
```

### Run Docker Without Sudo

```bash
docker run hello-world
```

---

## 🎨 Customization

* Use **LXAppearance** or **GNOME Tweaks** to change themes.
* Edit `~/.zshrc` to adjust Zsh settings or add plugins.
* Create additional Conda environments for specific frameworks or projects.

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

Contributions are welcome!
Fork the repository, create a feature branch, and submit a pull request with improvements or fixes.

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

