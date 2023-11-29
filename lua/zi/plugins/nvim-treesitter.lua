return {
  "nvim-treesitter/nvim-treesitter",

  config = function()
    local trs = require("nvim-treesitter.configs")

    trs.setup({
      ensure_installed = { "typescript", "lua", "go", "tsx", "javascript" },

      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
      },
    })
  end,
}
