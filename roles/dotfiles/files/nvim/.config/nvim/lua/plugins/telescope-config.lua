require('telescope').setup({
    pickers = {
	find_files = {
	    disable_devicons = true,
	},
	git_files = {
	    disable_devicons = true,
	},
    },
    extensions = {
      file_browser = {
	dir_icon = '›',
      },
    },
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')

-- UNCOMMENT FOR DEBUG MESSAGES
-- print('- plugins/telescope-config.lua...OK!')

-- picker configurations for use with binds
local picker_configs = {}

-- live_grep with tweaked layout
picker_configs.live_grep = function()
    local opts = {
	sorting_strategy = 'ascending',

	layout_config = {
	    prompt_position = 'top'
	}
    }

    require('telescope.builtin').live_grep(opts)
end

-- current_buffer_fuzzy_find with tweaked layout
picker_configs.current_buffer_fuzzy_find = function()
    local opts = {
	sorting_strategy = 'ascending',

	layout_config = {
	    prompt_position = 'top'
	}
    }

    require('telescope.builtin').current_buffer_fuzzy_find(opts)
end

return picker_configs
