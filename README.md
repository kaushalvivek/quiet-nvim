# quiet-nvim

A Neovim config that doesn't interrupt. Built on [LazyVim](https://github.com/LazyVim/LazyVim).

## Highlights

- **Auto dark/light mode** -- follows macOS appearance via [auto-dark-mode.nvim](https://github.com/f-person/auto-dark-mode.nvim)
  - Dark: [lackluster](https://github.com/slugbyte/lackluster.nvim)
  - Light: [zenwritten](https://github.com/zenbones-theme/zenbones.nvim)
- **No AI completion** -- `blink.cmp` with auto-show and ghost text disabled
- **Telescope** with fzf-native, custom keymaps, top-positioned prompt
- **Markdown rendering** via [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) with Obsidian preset
- **Clean diagnostics** -- virtual text off, Marksman diagnostics silenced

## Structure

```
lua/
  config/
    lazy.lua         # Plugin manager bootstrap
    options.lua      # Editor options
    keymaps.lua      # Custom keymaps
    autocmds.lua     # Autocommands
  plugins/
    colorscheme.lua  # Theme + auto dark/light
    telescope.lua    # Fuzzy finder
    autocomplete.lua # Completion (minimal)
    markdown.lua     # Markdown rendering + LSP
    noice.lua        # Command line UI
```

## Install

```sh
git clone git@github.com:kaushalvivek/quiet-nvim.git ~/.config/nvim
nvim
```

Requires Neovim >= 0.11.
