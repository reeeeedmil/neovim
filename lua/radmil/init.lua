require("radmil.remap")
require("radmil.set")
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = true,
    comments = true,
    operators = false,
},
contrast = "soft",
})
vim.cmd("colorscheme gruvbox")
require('leap').add_default_mappings()
