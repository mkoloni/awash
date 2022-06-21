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
 --[[  formatting = { ]]
    --[[ format = lspkind.cmp_format({ ]]
    --[[   mode = 'symbol', -- show only symbol annotations ]]
    --[[   maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters) ]]
    --[[   menu = ({ ]]
    --[[     nvim_lsp = "[LSP]", ]]
    --[[     vsnip = "[Snippet]", ]]
    --[[     nvim_lua = "[Lua]", ]]
    --[[     path = "[Path]", ]]
    --[[     buffer = "[Buffer]", ]]
    --[[   }), ]]
    --[[ }) ]]
  --[[ }, ]]
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
    { name = 'vsnip' }, -- For vsnip users.
		{ name = "buffer" },
		{ name = "path" },
	},
	view = {
    entries = 'native'
  },
})
