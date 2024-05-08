vim.g.mapleader = " "


vim.keymap.set("n", "<leader>tt", vim.cmd.Neotree)

require("neo-tree").setup({
      filesystem = {
        window = {
          mappings = {
            ["<F5>"] = "refresh",
            ["o"] = "open",
            ["h"] = "navigate_up",
            ["l"] = "open",
            ["%"] = "add",
            ["D"] = "add_directory",
            ["d"] = "delete",
          }
        }
      }
    })
