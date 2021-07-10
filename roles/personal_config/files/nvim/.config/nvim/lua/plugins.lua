return require('packer').startup(function()
    -- core
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'millermedeiros/vim-statline'

    -- quality of life
    use 'tpope/vim-vinegar'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'rhlobo/vim-super-retab'

    -- telescope
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- linting
    use 'dense-analysis/ale'
end)
