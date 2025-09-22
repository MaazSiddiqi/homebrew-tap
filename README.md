# Homebrew Tap for Zen

This is the official Homebrew tap for [zen](https://github.com/MaazSiddiqi/zen) - a simple command launcher and alias manager.

## Installation

```bash
brew tap MaazSiddiqi/tap
brew install zen
```

## Setup

After installation, set up the `zz` alias:

```bash
echo 'alias zz="zen run"' >> ~/.zshrc
source ~/.zshrc
```

## Usage

```bash
# Add an alias
zen add dev "npm run dev"

# Execute an alias
zz dev

# Browse aliases interactively (requires fzf)
zz
```

For more information, visit the [main repository](https://github.com/MaazSiddiqi/zen).