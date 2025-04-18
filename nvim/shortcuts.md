# Preferences: All keyboard shortcuts

**Note**: `Leader` key is currently set to `Space`

## Normal mode:

### Navigation: 

| Keybinding | Command |
| ---------- | ------- |
| `h/j/k/l` | Move cursor to the left/bottom/top/right |
| `gg` | Go to the top of file |
| `Shift+g` | Go to the bottom of file |
| `Ctrl+e` | Scroll up |
| `Ctrl+y` | Scroll down |

### Tab (buffer) navigation

| Keybinding | Command |
| ---------- | ------- |
| `th` | Move to previous tab |
| `tl` | Move to next tab |
| `tc` | Close a tab |
| `tac` | Close all tabs |

### Enter insert mode:

| Keybinding | Command |
| ---------- | ------- |
| `i` | Edit before block cursor |
| `a` | Edit after the block cursor |
| `Shitf+i` | Edit at the beginning of current line |
| `Shitf+a` | Edit at the end of current line |
| `cc` | Replace all text in current line |
| `Shift+c` | Replace all text to the left of cursor |
| `c(j/k)` | Replace all text in current line and the line after/before |

### Enter visual mode:

| Keybinding | Command |
| ---------- | ------- |
| `v` | Toggle visual mode |
| `Shift+v` | Toggle visual line (select current line) |
| `Ctrl+v/q` | Toggle visual block |
| `y` | Copy selected text |
| `"+y` | Copy selected text to clipboard |
| `x` | Cut selected text |
| `d` | Delete selected text |

### Enter Op-pending mode:
| Keybinding | Command |
| ---------- | ------- |
| `y` | Enter copy mode |
| `Shift+y` | Copy current line |
| `x` | Cut the character under cursor |
| `d` | Enter delete mode |
| `Shift+d` | Delete all text to the right of cursor |
| `p` | Paste copied text after block cursor |
| `Shift+p` | Paste copied text before block cursor |

### Enter Cmdline mode:
| Keybinding | Command |
| ---------- | ------- |
| `:` | Enter Cmdline mode |

### Navigate between panels:

| Keybinding | Command |
| ---------- | ------- |
| `Ctrl+h/j/k/l` | Move cursor to left/down/top/right panel |
| `Ctrl+w H/J/K/L` | Move a panel to the left/down/top/right |
| `Ctrl+w q/c` | Close a panel |
| `Ctrl+w \|` | Zoom into current vertical panel |
| `Ctrl+w </>` | Decrease/Increase size of current vertical panel |
| `Ctrl+w _` | Zoom to current horizontal panel |
| `Ctrl+w -/+` | Decrease/Increase size of current horizontal panel |
| `Ctrl+w =` | Set all panel size equally |

### Package manager:

| Keybinding | Command |
| ---------- | ------- |
| `Ctrl+x` | Open LazyVim package manager |
| `Ctrl+a` | Open Mason package manager |

### Search and Replace

| Keybinding | Command |
| ---------- | ------- |
| `/<text>` | Search `<text>` in current window |
| `*` | Search word under cursor in current window |
| `[range]s/<text>/<text-to-replace>/[flags]` | Replace all `<text>` to `<text-to-replace>` in current window |
| `<leader>h` | Replace all input words in current window |
| `Ctrl+p` | Search a file |
| `Leader+fg` | Search a text in current directory |
| `Leader+nh` | Stop highlighting |

### Neotree:

| Keybinding | Command |
| ---------- | ------- |
| `Leader+e` | Open neotree with source is filesystem |
| `Leader+b` | Close neotree |

### Git:

| Keybinding | Command |
| ---------- | ------- |
| `Leader+g` | Open git status |
| `gph` | Show change diff |

### Coding Support:

| Keybinding | Command |
| ---------- | ------- |
| `Shift+k` | Show documentation of object under cursor |
| `gd` | Go to definition |
| `gr` | Show references |
| `Leader+i` | Formatting current file |
| `Leader+ca` | Open code action popup |
| `gcc` | Comment current line |
| `gc(k/j)` | Comment current line and the line before/after |
| `gx` | Access file / url under the cursor |

### Debugging:

| Keybinding | Command |
| ---------- | ------- |
| `F5` | Start or continue debugging |
| `F9` | Set breakpoint at current line |
| `F10` | Step over |
| `F11` | Step into |
| `F12` | Escape debugging |
| `Ctrl+d` | Toggle debugging windows |

## Insert mode:

### Coding suggestion:

| Keybinding | Command |
| ---------- | ------- |
| `Ctrl+space` | Show autocompletion menu |
| `Ctrl+n` | Go to next suggestion |
| `Ctrl+p` | Go to previous suggestion |
| `Ctrl+b` | Scroll up
| `Enter` | Choose the suggestion |
| `Ctrl+e` | Close autocompletion menu |

### Coding Support:
| Keybinding | Command |
| ---------- | ------- |
| `Ctrl+w` | Delete word to the left of cursor |
| `Ctrl+u` | Delete all text to the left of cursor |
| `Ctrl+t` | Indent current line |
| `Ctrl+d` | Un-indent current line | 

## Visual mode:

### Basic:

| Keybinding | Command |
| ---------- | ------- |
| `iw` | Select the word under the cursor |
| `ip` | Select all code block that the cursor is currently in |
| `c` | Replace selected text |
| `y` | Copy selected text |
| `x` | Cut selected text |
| `d` | Delete selected text |
| `u` | Set all selected characters to lowercase |
| `U` | Set all selected characters to uppercase |
| `v` | Toggle visual mode |

### Coding Support:

| Keybinding | Command |
| ---------- | ------- |
| `(Visual Block) Shift+i` | Edit multi-line where is selected by visual block (Escape to apply) |
| `gc` | Comment selected code |
| `*` | Search selected character in current window |
| `<leader>h` | Replace all input words in selected scope |

## Terminal mode:

### Basic:

| Keybinding | Command |
| ---------- | ------- |
| `<Esc><Esc>` | Escape terminal mode |
