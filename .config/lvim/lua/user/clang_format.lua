return {
    formatters = {
        {
            exe = "~/.clang-format", -- Ruta completa a clang-format en tu sistema
            args = {"-assume-filename=.clang-format"},
        },
    },
    linters = {
        {
            exe = "clang-tidy",
            args = {},
        },
    },
}
