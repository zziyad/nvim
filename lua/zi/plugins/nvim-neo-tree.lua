return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      enable_git_status = true,
      enable_diagnostics = true,
      auto_refresh = true,
      indent = {
        indent_size = 200,
        padding = 0,
      },

      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },

      window = {
        position = "left",
        width = 25,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
      },
    })
    vim.keymap.set("n", "<leader>\\", ":Neotree filesystem reveal close<CR>", {})
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
    vim.keymap.set("n", "<leader>ff", ":Neotree filesystem reveal focus<CR>", {})

    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
  end,
}
