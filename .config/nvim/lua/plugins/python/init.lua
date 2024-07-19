return {
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      local mason_path = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/")
      pcall(function()
        require("dap-python").setup(mason_path .. "packages/debugpy/venv/bin/python")
      end)

      -- local dap = require("dap")
      -- dap.adapters.python = {
      --   type = "executable",
      --   command = "python",
      --   args = { "-m", "debugpy.adapter" },
      -- }
      --
      -- dap.configurations.python = {
      --   {
      --     type = "python",
      --     request = "launch",
      --     name = "Launch file",
      --     program = "${file}",
      --     pythonPath = function()
      --       return "python"
      --     end,
      --     env = function()
      --       local project_root = vim.fn.getcwd()
      --       return { PYTHONPATH = project_root }
      --     end,
      -- },
      -- }
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

    keys = function()
      return {
        { "<leader>dm", "<cmd>lua require('neotest').run.run()<cr>", desc = "Test Method" },
        { "<leader>dM", "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", desc = "Test Method DAP" },
        { "<leader>df", "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", desc = "Test Class" },
        {
          "<leader>dF",
          "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
          desc = "Test Class DAP",
        },
        { "<leader>dS", "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "Test Summary" },
      }
    end,
  },
}
