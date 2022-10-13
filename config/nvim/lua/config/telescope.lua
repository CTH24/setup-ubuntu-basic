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
--telescope.load_extension('sessions_picker')
