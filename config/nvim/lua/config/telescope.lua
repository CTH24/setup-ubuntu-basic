-- lua/config/telescope.lua

local telescope = require("telescope")

telescope.setup({

    defaults = {
        mappings = {
            i = {
                ["<C-h>"] = "which_key",
            },
        },
        color_devicons = true,
    },

    extensions = {

        extensions = {
            fzf = {
                fuzzy = true, -- false will only do exact matching
                override_generic_sorter = true, -- override the generic sorter
                override_file_sorter = true, -- override the file sorter
                case_mode = "smart_case", -- or "ignore_case" or "respect_case"
                -- the default case_mode is "smart_case"
            }
        },

        ["ui-select"] = {
            require("telescope.themes").get_dropdown({
                -- even more opts
            }),
        },

        sessions_picker = {
            sessions_dir = vim.fn.stdpath('data') .. '/session/',
        }
    },

    pickers = {

        lsp_definitions = {
            theme = "ivy",
        },

        lsp_document_symbols = {
            theme = "ivy",
        },

        lsp_references = {
            theme = "ivy",
        },

        lsp_incoming_calls = {
            theme = "ivy",
        },

        lsp_outgoing_calls = {
            theme = "ivy",
        },

        lsp_implementations = {
            theme = "ivy",
        },

        lsp_type_definitions = {
            theme = "ivy",
        },

        fd = {
            theme = "ivy",
        },

        live_grep = {
            theme = "ivy",
        },

        buffers = {
            theme = "ivy",
        },

        help_tags = {
            theme = "ivy",
        },

        diagnostics = {
            theme = "ivy",
        },

        git_files = {
            theme = "ivy",
        },

        git_status = {
            theme = "ivy",
        },

        git_commits = {
            theme = "ivy",
        },

        git_branches = {
            theme = "ivy",
        }
    },
})

telescope.load_extension("frecency")
telescope.load_extension("ui-select")
telescope.load_extension("node_modules")
telescope.load_extension('project')
require('telescope').load_extension('fzf')
--telescope.load_extension('sessions_picker')
