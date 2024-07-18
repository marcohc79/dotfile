-- Instala y configura los plugins
return {
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      local mason_path = vim.fn.stdpath("data") .. "/mason/"
      pcall(function()
        require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
      end)

      -- Configuración de nvim-dap-python para incluir el directorio del proyecto en PYTHONPATH
      local dap = require("dap")
      dap.adapters.python = {
        type = "executable",
        command = mason_path .. "packages/debugpy/venv/bin/python",
        args = { "-m", "debugpy.adapter" },
      }

      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          pythonPath = function()
            return mason_path .. "packages/debugpy/venv/bin/python"
          end,
          env = function()
            local cwd = vim.fn.getcwd()
            return { PYTHONPATH = cwd }
          end,
        },
      }
    end,
  },
  {
    "nvim-neotest/neotest",
    requires = {
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            -- Extra arguments for nvim-dap configuration
            -- See https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for values
            dap = {
              justMyCode = false,
              console = "integratedTerminal",
            },
            args = { "--log-level", "DEBUG", "--quiet" },
            runner = "pytest",
          }),
        },
      })
    end,
  },
}
