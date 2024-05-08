vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
	  'nvim-telescope/telescope.nvim', module="telescope",
  }
	use 'nvim-lua/plenary.nvim'

	use { 'rose-pine/neovim', as = 'rose-pine' }
  use { "ellisonleao/gruvbox.nvim", as = "gruvbox" }
  use { "bluz71/vim-moonfly-colors", as = "moonfly" }
  use { "rebelot/kanagawa.nvim", as = "kana" }
  use { 'kepano/flexoki', as = "flex" }
  use 'xolox/vim-colorscheme-switcher'
  use 'xolox/vim-misc'


	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {                                      -- Optional
	      'williamboman/mason.nvim',
	      run = function()
		pcall(vim.cmd, 'MasonUpdate')
	      end,
	    },
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	  }
	}
    use 'simrat39/rust-tools.nvim'

    use 'luochen1990/rainbow'


    use 'lewis6991/gitsigns.nvim'
    use 'kyazdani42/nvim-web-devicons'

     use {
      "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
        }
      }

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'mfussenegger/nvim-lint'
    use "mhartington/formatter.nvim"

    use 'eandrju/cellular-automaton.nvim'
    use 'ggandor/leap.nvim'

    use 'windwp/nvim-autopairs'
    use 'ThePrimeagen/vim-be-good'

end)
