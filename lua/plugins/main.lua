return {

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, "😄")
    end,
  },
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      -- stylua: ignore
      {
        "<leader>fp",
        function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fd",
        function()
          require("telescope.builtin").lsp_definitions({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Definition",
      },
      {
        "<leader>fh",
        function()
          require("telescope.builtin").lsp_type_definitions({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Type Definition",
      },
    },
  },
}
