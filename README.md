# quiet-nvim

A Neovim config that doesn't interrupt. Built on [LazyVim](https://github.com/LazyVim/LazyVim).

## Highlights

- **Auto dark/light mode** -- follows macOS appearance via [auto-dark-mode.nvim](https://github.com/f-person/auto-dark-mode.nvim)
  - Dark: [lackluster](https://github.com/slugbyte/lackluster.nvim)
  - Light: [zenwritten](https://github.com/zenbones-theme/zenbones.nvim)
- **No AI completion** -- `blink.cmp` with auto-show and ghost text disabled
- **Telescope** with fzf-native, custom keymaps, top-positioned prompt
- **Markdown rendering** via [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) with Obsidian preset
- **Clean diagnostics** -- virtual text off, dot signs, Marksman diagnostics silenced
- **No chrome** -- no bufferline, no dashboard, no `~` fill, no window separators, `cmdheight=0`, global single-line statusline in muted grey
- **Flat surfaces** -- floats, pickers, popups, and the cmdline share the `Normal` background; no borders anywhere
- **Prose mode** -- markdown opens centered in Snacks zen (76 cols, typewriter scrolling, no line numbers); `<leader>uz` toggles it anywhere
- **Quiet messages** -- yank/write/undo chatter routed away; notifications are minimal and fade in 2.5s

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
    ui.lua           # Disabled plugins, snacks (zen/notifier), lualine
    telescope.lua    # Fuzzy finder (borderless)
    autocomplete.lua # Completion (minimal)
    markdown.lua     # Markdown rendering + LSP
    noice.lua        # Command line UI + message routing
    whichkey.lua     # Helix-style which-key
```

## Install

```sh
git clone git@github.com:kaushalvivek/quiet-nvim.git ~/.config/nvim
nvim
```

Requires Neovim >= 0.11.

The terminal does the rest: use one monospace face (Berkeley Mono, JetBrains Mono, or iA Writer Mono), line height ~1.45, and no terminal padding tricks. The config sets the cursor color to match the theme via OSC 12.
