# 💤 `Lazy.nvim` Custom Configuration

A complete Neovim configuration built with [Lazy.nvim](https://github.com/folke/lazy.nvim) and [LazyVim](https://github.com/LazyVim/LazyVim).

## 📚 Documentation

- [GitHub Repo](https://github.com/SOUMITRO-SAHA/neovim-config-doc)
- [Website Documentation](https://neovim-config-doc.example.com) (Coming Soon)

## 🚀 Quick Start

### Prerequisites

- Neovim >= 0.9.0
- Git
- A Nerd Font (Download from [nerdfonts.com](https://www.nerdfonts.com/))

### Installation

#### macOS

```bash
# Install Neovim (if not already installed)
brew install neovim

# Clone this repository
git clone https://github.com/SOUMITRO-SAHA/neovim-config.git ~/.config/nvim

# Start Neovim
nvim
```

#### Linux

```bash
# Install Neovim (if not already installed)
# For Ubuntu/Debian:
sudo apt install neovim

# For Fedora:
sudo dnf install neovim

# For Arch Linux:
sudo pacman -S neovim

# Clone this repository
git clone https://github.com/SOUMITRO-SAHA/neovim-config.git ~/.config/nvim

# Start Neovim
nvim
```

#### Windows

```powershell
# Install Neovim using winget (if not already installed)
winget install Neovim.Neovim

# Clone this repository
git clone https://github.com/SOUMITRO-SAHA/neovim-config.git $env:LOCALAPPDATA\nvim

# Start Neovim
nvim
```

## 🔧 First Run

When you first start Neovim, Lazy.nvim will automatically install all plugins. This may take a few minutes.

## 🔄 Updating Plugins

To update all plugins to their latest versions:

```vim
:Lazy update
```

To update Neovim itself:

- **macOS**: `brew upgrade neovim`
- **Linux**: Use your package manager's update command
- **Windows**: `winget upgrade Neovim.Neovim`

## 🎯 Key Features

- **Lazy Loading**: Plugins are loaded only when needed
- **Telescope Integration**: Fuzzy finder for files, buffers, and more
- **LSP Support**: Language Server Protocol for code intelligence
- **Treesitter**: Advanced syntax highlighting
- **Git Integration**: Git operations directly in Neovim
- **Terminal Integration**: Built-in terminal support

## ⌨️ Key Bindings

- `<Space>` is the leader key
- `<Space>ff` - Find files
- `<Space>fg` - Live grep
- `<Space>fb` - Buffers
- `<Space>fh` - Help tags
- `<Space>e` - Toggle file explorer
- `<Space>w` - Save file
- `<Space>q` - Quit
- `<Space>h` - Toggle terminal

For a complete list of key bindings, see the [documentation](https://github.com/SOUMITRO-SAHA/neovim-config-doc).

## 🤝 Contributing

This configuration is free to use and modify. If you have improvements or additional features, contributions are welcome!

### How to Contribute

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Pull Request Requirements

- **Detailed Explanation**: Clearly explain what your changes do and why they're beneficial
- **Key Bindings**: Document any new key bindings you've added
- **Demo Video**: Include a link to a YouTube video demonstrating your changes
- **Documentation**: Update the documentation to reflect your changes

PRs without these elements will not be accepted.

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Lazy.nvim](https://github.com/folke/lazy.nvim) - A modern plugin manager for Neovim
- [LazyVim](https://github.com/LazyVim/LazyVim) - A Neovim framework for creating and managing Neovim configurations
- [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder for Neovim
- [All contributors](https://github.com/SOUMITRO-SAHA/neovim-config/graphs/contributors) to this project
