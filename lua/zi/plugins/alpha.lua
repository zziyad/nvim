return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    dashboard.section.header.val = {
      [[                                                                                                     ]],
      [[                                                                                                     ]],
      [[                                                                                                     ]],
      [[                                                                                                     ]],
      [[                                                                                                   ]],
      [[                                     ████ ██████           █████      ██                     ]],
      [[                                    ███████████             █████                             ]],
      [[                                    █████████ ███████████████████ ███   ███████████   ]],
      [[                                   █████████  ███    █████████████ █████ ██████████████   ]],
      [[                                  █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[                                ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[                               ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                                                     ]],
      [[                                                                                                     ]],
      [[                                                                                                     ]],
    }
    dashboard.section.top_buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
      dashboard.button("u", "󰚰  Update Plugins", "Lazy update")

    }
    dashboard.section.mru.val = { { type = "padding", val = 500 } }

    alpha.setup(dashboard.opts)
  end,
}
