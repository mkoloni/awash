[project] vimuk
# Awash
[awash](https://github.com/mkoloni/awash) is a lightweight neovim preconfigured plugin distribution that is easy to configure.
Apart from that,it makes neovim even faster, with good configuratcomns

![image](https://res.cloudinary.com/mkoloni/image/upload/v1655195326/2022-06-14-112650_1418x848_scrot_jsfmzc.png)
![image](https://res.cloudinary.com/mkoloni/image/upload/v1655195329/2022-06-14-112744_1418x848_scrot_xwenmm.png)
![image](https://res.cloudinary.com/mkoloni/image/upload/v1655195322/2022-06-14-112801_1418x848_scrot_usdnrr.png)

#### Table of Content
- [Requirements](#requirement)
- [Getting Started](#getting-started)
- [Theme](#theme)
- [Mapping](#mapping)

#### Requirements
- [Neovim](https://neovim.io/) version 0.7 or higher
- [Paq-nvim](https://github.com/savq/paq-nvim) for plugin management

#### Getting Started
Unix/Linux and MacOS systems

```
cd ~
mv -f .config/nvim .config/nvim-backup
git clone https://github.com/mkoloni/awash-neovim

nvim .
```

#### Plugin
[](https://github.com/mkoloni) uses [paq-nvim](https://github.com/savq/paq-nvim) as its plugin manager
All plugins come preconfigured

#### Plugin Manager
vimuk uses [paq-nvim](https://github.com/savq/paq-nvim) for plugin management

###### Why we chose [paq-nvim](https://github.com/savq/paq-nvim)
- Lightweight
- Stable
- Comes with commands such as `:PaqInstall`
- Written in lua

#### Theme
[Vimuk](https://github.com/mkoloni) comes with many themes to chose from, we picked these themes as we find them to be really appeasing.

##### List of Themes
- [melange](https://github.com/savq/melange)
- [vscode](https://github.com/Mofiqul/vscode.nvim)

#### Mapping
[Vimuk](https://github.com/mkoloni) comes with its own keybindings but you could easily override theme with your own if you wanted.

|   Mode        |  Key              |   Remap                                   |  Description                |
| :-------------| :---------------- | :---------------------------------------: | -------------------------:  |
|   Insert      |   'jj'            |   '<ESC>'                                 | Escape Key                  |
|   Insert      |   'jk'            |   '<ESC>'                                 | Escape  Key                 |
|   Normal      |   '<Space>'       |   'Leader'                                | Leader Key                  |
|   Normal      |   's'             |   '.'                                     | Repeat Key                  |
|   Normal      |   '<CR>'          |   'o<ESC>'                                | New Line                    |
|   Normal      |   '<'             |   '<gv'                                   | Indent                      |
|   Normal      |   '<Tab>'         |   '>>'                                    | Indent                      |
|   Normal      |   '>'             |   '>gv'                                   | Indent                      |
|   Normal      |   '<Up>'          |   'Nop'                                   | Disabling Key               |
|   Normal      |   '<Left>'        |   'Nop'                                   | Disabling Key               |
|   Normal      |   '<Right>'       |   'Nop'                                   | Disabling Key               |
|   Normal      |   '<Down>'        |   'Nop'                                   | Disabling Key               |
|   Normal      |   '0'             |   'g0'                                    | Handling Wraps              |
|   Normal      |   '$'             |   'g$'                                    | Handling Wraps              |
|   Normal      |   'j'             |   'gj'                                    | Handling Wraps              |
|   Normal      |   'k'             |   'gk'                                    | Handling Wraps              |
|   Normal      |   '<C-w>'         |   ':w<Cr>'                                | Faster Save                 |
|   Normal      |   '<C-q>'         |   ':q!<Cr>'                               | Faster Quit                 |
|   Normal      |   '<C-e>'         |   ':NvimTreeToggle<Cr>'                   | Toggle Nerd Tree            |
|   Normal      |   '<C-r>'         |   ':source ~/.config/nvim/init.lua<Cr>'   | Source Config File          |
|   Normal      |   '<C-l>'         |   ':bn<Cr>'                               | Change Buffer               |
|   Normal      |   '<C-h>'         |   ':bp<Cr>'                               | Change Buffer               |
|   Normal      |   '<C-w>'         |   '<C-w>w'                                | Change Window               |
|   Normal      |   '<C-g>'         |   ':WinResizeModeStart<Cr>'               | Resize Windows              |
|   Normal      |   '<Leader>w'     |   ':w<CR>'                                | Faster Save                 |
|   Normal      |   '<Leader>q'     |   ':q!<CR>'                               | Faster Quit                 |
|   Normal      |   '<Leader>e'     |   ':NvimTreeToggle<CR>'                   | Toggle Nerd Tree            |
|   Normal      |   '<Leader>r'     |   ':source ~/.config/nvim/init.lua<CR>'   | Source Config File          |
|   Normal      |   '<Leader>l'     |   ':bn<CR>'                               | Change Buffer               |
|   Normal      |   '<Leader>l'     |   ':bn<CR>'                               | Change Buffer               |
|   Normal      |   '<Leader>g'     |   ':WinResizeModeStart<CR>'               | Resize Windows              |
|   Visual      |   '<Up>'          |   'Nop'                                   | Disabling Key               |
|   Visual      |   '<Left>'        |   'Nop'                                   | Disabling Key               |
|   Visual      |   '<Right>'       |   'Nop'                                   | Disabling Key               |
|   Visual      |   '<Down>'        |   'Nop'                                   | Disabling Key               |

