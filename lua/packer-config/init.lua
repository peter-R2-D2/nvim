local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Manager package
  use 'EdenEast/nightfox.nvim' -- Theme
  use 'psliwka/vim-smoothie' -- Scroll
  use 'kyazdani42/nvim-tree.lua' -- Explorer files
  use 'kyazdani42/nvim-web-devicons' -- Icons
  use 'rcarriga/nvim-notify' -- Notifications
  use 'nvim-lualine/lualine.nvim' -- Bar status down
  use 'feline-nvim/feline.nvim' -- Bar status down new a test
  use 'romgrk/barbar.nvim' -- Bar buffers up
  -- Tresitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-refactor'
  -- FZF - Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- AutoPairs
  use 'windwp/nvim-autopairs'
  -- AutoTag
  use 'windwp/nvim-ts-autotag'
  -- Lsp Zero
  use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- Soporte LSP
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletado
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    {'rafamadriz/friendly-snippets'},
  }
}
  -- Git
  use 'lewis6991/gitsigns.nvim'
  -- Null ls
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Bracket Pair colors
  use "lukas-reineke/indent-blankline.nvim"
  -- Coment line
  use "terrortylor/nvim-comment"
  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'
  -- Vue
  use 'posva/vim-vue'
  -- Terminal Toggle
  use {"akinsho/toggleterm.nvim", tag = 'v2.*'}
end)
