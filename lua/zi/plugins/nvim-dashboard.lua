return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      config = {
        header = {
          "           ▄ ▄                   ",
          "     ▄ ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄ ▄▄▄ ",
          "    █▄ █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
          "  █ ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █   ▄ ",
          "  ▄ █▄▄█ ▄  ▄▄▄█ ▄▄▄▄▄▄▄ █ ▄▄▄  ",
          " █ ▄▄▄ ▄▄▄  █ ▄ ▄▄▄ ▄▄▄ ▄▄▄ ▄█ ▄ ",
          "▄ █ ▄█ █ █    █ █▄█ █▄█ █▄▄ █ ██ ",
          "█▄ ▄▄█ █▄█ ▄  █ ▄▄█ █▄█ ▄▄█ ▄▄ █ ",
          " █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄ ▄ ▄▄▄▄▄▄▄█   ",
          "                                 ",
        },

        shortcut = {
          { desc = "  Find File    ", group = "@property", action = "Telescope find_files", key = "f" },
          { desc = "󰚰  Update Plugins    ", group = "@property", action = "Lazy update", key = "u" },
        },
      },
    })
  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
