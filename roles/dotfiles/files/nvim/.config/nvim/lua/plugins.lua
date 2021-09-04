return require('packer').startup(function()
    -- core
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- quality of life
    use 'tpope/vim-vinegar'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'rhlobo/vim-super-retab'

    -- telescope
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- interface
    use {
	'folke/zen-mode.nvim',
	config = function()
	    require("zen-mode").setup{}
	end
    }
    use {
	"folke/twilight.nvim",
	config = function()
	    require("twilight").setup{}
	end
    }
    use 'hoob3rt/lualine.nvim'

    -- completion
    use 'hrsh7th/nvim-compe'
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'

    -- linting
    use 'mhartington/formatter.nvim'
end)

-- UNCOMMENT FOR DEBUG MESSAGES
-- print('- plugins.lua...OK!')
