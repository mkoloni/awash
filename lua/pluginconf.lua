-- Lsp Installer

require("nvim-lsp-installer").setup({
    automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
})

-- Lsp Formatter

require("lsp-format").setup {}

-- LSP CONFIG

require'lspconfig'.bashls.setup{
  on_attach = function(client)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, {buffer=0})
    require "lsp-format".on_attach(client)
  end,
}

require'lspconfig'.clangd.setup{
  on_attach = function(client)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, {buffer=0})
    require "lsp-format".on_attach(client)
  end,
}

require'lspconfig'.gopls.setup{
  on_attach = function(client)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, {buffer=0})
    require "lsp-format".on_attach(client)
  end,
}

require'lspconfig'.tsserver.setup{
  on_attach = function(client)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
    vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer=0})
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
    vim.keymap.set("n", "ge", vim.diagnostic.goto_next, {buffer=0})
    vim.keymap.set("n", "gr", vim.lsp.buf.rename, {buffer=0})
    require "lsp-format".on_attach(client)
  end,
}

require'lspconfig'.html.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
  end,
}

require'lspconfig'.vuels.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
  end,
}

require'lspconfig'.cssls.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
  end,
}

require'lspconfig'.tailwindcss.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
  end,
}

require'lspconfig'.emmet_ls.setup{
  on_attach = function(client)
    require "lsp-format".on_attach(client)
  end,
}

-- LspKind

local lspkind = require('lspkind')

-- NVIM TREE

-- setup with all defaults
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
-- nested options are documented by accessing them with `.` (eg: `:help nvim-tree.view.mappings.list`).
require'nvim-tree'.setup { -- BEGIN_DEFAULT_OPTS
  auto_reload_on_write = true,
  create_in_closed_folder = false,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false,
  sort_by = "name",
  update_cwd = false,
  reload_on_bufenter = false,
  respect_buf_cwd = false,
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
      },
    },
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = false,
    highlight_opened_files = "none",
    root_folder_modifier = ":~",
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
    icons = {
      webdev_colors = true,
      git_placement = "before",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = false,
    update_cwd = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = {},
  system_open = {
    cmd = "",
    args = {},
  },
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  filters = {
    dotfiles = false,
    custom = {},
    exclude = {},
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 400,
  },
  actions = {
    use_system_clipboard = true,
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = false,
    },
    expand_all = {
      max_folder_discovery = 300,
    },
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
          buftype = { "nofile", "terminal", "help" },
        },
      },
    },
    remove_file = {
      close_window = true,
    },
  },
  trash = {
    cmd = "trash",
    require_confirm = true,
  },
  live_filter = {
    prefix = "[FILTER]: ",
    always_show_folders = true,
  },
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      diagnostics = false,
      git = false,
      profile = false,
    },
  },
}

-- NVIM DEVICONS

local present, icons = pcall(require, "nvim-web-devicons")
if not present then
	return
end

require'nvim-web-devicons'.setup {
	override = {
		html = {
			icon = " ",
			name = "html",
		},
		sh = {
			icon = " ",
			name = "sh",
		}, md = {
			icon = " ",
			name = "md",
		},
		zsh = {
			icon = " ",
			name = "zsh",
		},
		fish = {
			icon = " ",
			name = "fish",
		},
		c = {
			icon = " ",
			name = "c",
		},
		h = {
			icon = " ",
			name = "c",
		},
		css = {
			icon = " ",
			name = "css",
		},
		js = {
			icon = " ",
			name = "js",
		},
		ts = {
			icon = "ﯤ ",
			name = "ts",
		},
		kt = {
			icon = "󱈙 ",
			name = "kt",
		},
		png = {
			icon = " ",
			name = "png",
		},
		jpg = {
			icon = " ",
			name = "jpg",
		},
		jpeg = {
			icon = " ",
			name = "jpeg",
		},
		mp3 = {
			icon = " ",
			name = "mp3",
		},
		mp4 = {
			icon = " ",
			name = "mp4",
		},
		out = {
			icon = " ",
			name = "out",
		},
		Dockerfile = {
			icon = " ",
			name = "Dockerfile",
		},
		rb = {
			icon = " ",
			name = "rb",
		},
		vue = {
			icon = "﵂ ",
			name = "vue",
		},
		py = {
			icon = " ",
			name = "py",
		},
		toml = {
			icon = " ",
			name = "toml",
		},
		lock = {
			icon = " ",
			name = "lock",
		},
		zip = {
			icon = " ",
			name = "zip",
		},
		xz = {
			icon = " ",
			name = "xz",
		},
		deb = {
			icon = " ",
			name = "deb",
		},
		rpm = {
			icon = " ",
			name = "rpm",
		},
		lua = {
			icon = " ",
			name = "lua",
		},
	},
}

--  CMP

local present, cmp = pcall(require, "cmp")
if not present then
	return
end
vim.opt.completeopt = "menuone,noselect"

cmp.setup({
	-- Config
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
	-- Completion
	completion = {
		keyword_length = 1,
	},
	-- Snippets
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      menu = ({
        nvim_lsp = "[LSP]",
        nvim_lua = "[Lua]",
        vsnip = "[VSNIP]",
        path = "[Path]",
        buffer = "[Buffer]",
      }),
    })
  },
	-- Duplicates
	duplicates = {
		buffer = 1,
		path = 1,
		nvim_lsp = 0,
	},
	duplicates_default = 0,
	-- Mappings
	mapping = cmp.mapping.preset.cmdline({
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
	}),
	window = {
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
  },
	sources = {
		{ name = "nvim_lsp" },
    { name = 'luasnip' }, -- For luasnip users.
   	{ name = 'vsnip' },
		{ name = "buffer" },
		{ name = "path" },
	},
	view = {
    entries = 'native'
  },
})

-- INDENT BLANKLINE

local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end
vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
}
vim.g.indentLine_enabled = 1
vim.g.indent_blankline_char = "▏"
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
	"class",
	"return",
	"function",
	"method",
	"^if",
	"^while",
	"jsx_element",
	"^for",
	"^object",
	"^table",
	"block",
	"arguments",
	"if_statement",
	"else_clause",
	"jsx_element",
	"jsx_self_closing_element",
	"try_statement",
	"catch_clause",
	"import_statement",
	"operation_type",
}
vim.wo.colorcolumn = "99999"
indent_blankline.setup({
	show_end_of_line = true,
	space_char_blankline = " ",
	show_current_context = true,
})

-- TOGGLE TERM

local present, toggleterm = pcall(require, "toggleterm")

if not present then
	return
end

toggleterm.setup({
	on_config_done = nil,
	size = 20,
	open_mapping = [[<c-t>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = false,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

-- TROUBLE NVIM

local present, trouble = pcall(require, "trouble")
if not present then
	return
end

trouble.setup({
	position = "bottom",
	height = 10,
	width = 50,
	icons = true,
	mode = "workspace_diagnostics",
	fold_open = "",
	fold_closed = "",
	group = true,
	padding = true,
	action_keys = {
		close = "q",
		cancel = "<esc>",
		refresh = "r",
		jump = { "<cr>", "<tab>" },
		open_split = { "<c-x>" },
		open_vsplit = { "<c-v>" },
		open_tab = { "<c-t>" },
		jump_close = { "o" },
		toggle_mode = "m",
		toggle_preview = "P",
		hover = "K",
		preview = "p",
		close_folds = { "zM", "zm" },
		open_folds = { "zR", "zr" },
		toggle_fold = { "zA", "za" },
		previous = "k",
		next = "j",
	},
	indent_lines = true,
	auto_open = false,
	auto_close = false,
	auto_preview = true,
	auto_fold = false,
	auto_jump = { "lsp_definitions" },
	signs = {
		error = "",
		warning = "",
		hint = "",
		information = "",
		other = "﫠",
	},
	use_diagnostic_signs = false,
})

-- AUTOPAIRS

require('nvim-autopairs').setup{}

-- COMMENTED

vim.cmd([[
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
]])

-- BufferLINE

require("bufferline").setup()

-- LuaLine

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- CLoseTags

vim.cmd([[
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

]])

-- GitGutter

vim.cmd([[

let g:gitgutter_map_keys = 0

set foldtext=gitgutter#fold#foldtext()

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
set signcolumn=yes

let g:gitgutter_set_sign_backgrounds = 1
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

]])

-- Tagbar

vim.cmd([[
" let g:tagbar_ctags_bin = '/usr/bin/ctags'

" let g:tagbar_width = max([25, winwidth(0) / 5])
let g:tagbar_case_insensitive = 1
let g:tagbar_show_data_type = 1
let g:tagbar_show_linenumbers = 0
let g:tagbar_singleclick = 1
let g:tagbar_autopreview = 1
let g:tagbar_file_size_limit = 10000
]])

