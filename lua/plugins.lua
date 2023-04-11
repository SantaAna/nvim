return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'Mofiqul/dracula.nvim'
	use 'neovim/nvim-lspconfig'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use "williamboman/nvim-lsp-installer"
--	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
    use 'onsails/lspkind-nvim'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
	use 'rafamadriz/friendly-snippets'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-tree/nvim-tree.lua'
	use 'easymotion/vim-easymotion'
	use 'nvim-lua/plenary.nvim'
	use 'BurntSushi/ripgrep'
	use 'sharkdp/fd'
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', }
	use { "akinsho/toggleterm.nvim", tag = '*' }
	use 'folke/lsp-colors.nvim'
	use "folke/trouble.nvim"
	use 'nvim-lualine/lualine.nvim'
	use 'jose-elias-alvarez/null-ls.nvim'
	use "windwp/nvim-autopairs"
    use "mbbill/undotree"
    use "tpope/vim-commentary"
    use "tpope/vim-surround"
    use "romgrk/barbar.nvim"
    use "vimwiki/vimwiki"
    use "christoomey/vim-tmux-navigator"
    use "xiyaowong/transparent.nvim"
end)
