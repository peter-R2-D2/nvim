return require'packer'.startup(function()
  use 'wbthomason/packer.nvim' -- Manager package
  use 'EdenEast/nightfox.nvim' -- Theme
  use 'psliwka/vim-smoothie' -- Scroll
  use 'kyazdani42/nvim-tree.lua' -- Explorer files
  use 'kyazdani42/nvim-web-devicons' -- Icons
  use 'rcarriga/nvim-notify' -- Notifications
  use 'nvim-lualine/lualine.nvim' -- Bar status down
  use 'romgrk/barbar.nvim' -- Bar buffers up
  -- Tresitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'windwp/nvim-ts-autotag'
  -- FZF - Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'windwp/nvim-autopairs'
  -- COC
  use {'neoclide/coc.nvim', branch = 'release'}
  -- Git
  use 'lewis6991/gitsigns.nvim'
  -- Null ls
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Bracket Pair colors
  use "lukas-reineke/indent-blankline.nvim"
  -- Coment line
  use "terrortylor/nvim-comment"
end)
