return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'tpope/vim-vinegar'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'
    use 'millermedeiros/vim-statline'
    use 'rhlobo/vim-super-retab'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'dense-analysis/ale'
end)
