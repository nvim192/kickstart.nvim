return {
    {
        url = "https://gitlab.com/schrieveslaach/sonarlint.nvim",
        lazy = true,
        ft = {"java", "javascript", "typescript"},
        dependencies = {
            -- "mfussenegger/nvim-jdtls",
            "williamboman/mason.nvim"
        },
        config = function()
            require("sonarlint").setup({
                server = {
                    cmd = {
                        'sonarlint-language-server',
                        -- Ensure that sonarlint-language-server uses stdio channel
                        '-stdio',
                        '-analyzers',
                        -- paths to the analyzers you need, using those for python and java in this example
                        vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar"),
                        vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjs.jar"),
                    }
                },
                filetypes = {
                    -- "java",
                    "javascript",
                    "typescript"
                }
            })
        end
    }
}

