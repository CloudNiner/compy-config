Andrew's Dotfiles
=================

Run link.sh and MAGIC.

## Edit MacOS Defaults

```bash
# Mojave anti-aliasing
defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled -bool NO
# Key Repeat
defaults write -g ApplePressAndHoldEnabled -bool false
# Screenshots directory
mkdir ~/Screenshots && defaults write com.apple.screencapture location ~/Screenshots
```

#### TODO

Automatically link Sublime settings to new install on
Mac OSX and Linux
