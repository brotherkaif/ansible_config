require('telescope').setup()

require('telescope').load_extension('fzf')

print('- plugins/telescope-config.lua...OK!')

-- picker configurations for use with binds
local picker_configs = {}

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
