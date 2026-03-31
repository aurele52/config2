return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local ts = require("nvim-treesitter")

			ts.setup({
				install_dir = vim.fn.stdpath("data") .. "/site",
			})

			ts.install({
				"bash",
				"comment",
				"css",
				"dockerfile",
				"gitignore",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"rst",
				"rust",
				"svelte",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"bash",
					"css",
					"dockerfile",
					"gitignore",
					"html",
					"javascript",
					"json",
					"lua",
					"markdown",
					"python",
					"rst",
					"rust",
					"svelte",
					"toml",
					"typescript",
					"tsx",
					"vim",
					"yaml",
				},
				callback = function(args)
					local ok = pcall(vim.treesitter.start, args.buf)
					if not ok then
						return
					end

					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},

	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			enable_close = true,
			enable_rename = true,
			enable_close_on_slash = false,
		},
		config = function(_, opts)
			require("nvim-ts-autotag").setup({
				opts = opts,
			})
		end,
	},
}
