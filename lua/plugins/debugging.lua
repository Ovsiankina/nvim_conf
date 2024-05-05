return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    require("dapui").setup()
    -- Exemple with DAP for GO language
    -- require("dap-go").setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
    -- db: Debugging breakpoint
    vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
    -- dc: Debugging continue
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})
  end,
}
