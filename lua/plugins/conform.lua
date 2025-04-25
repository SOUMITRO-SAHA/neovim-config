return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "prettierd", "prettier", stop_after_first = true },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      json = { "prettierd", "prettier", stop_after_first = true },
      yaml = { "prettierd", "prettier", stop_after_first = true },
      markdown = { "prettierd", "prettier", stop_after_first = true },
      html = { "prettierd", "prettier", stop_after_first = true },
      css = { "prettierd", "prettier", stop_after_first = true },
      rust = { "rustfmt" },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },

    -- Set up format-on-save
    format_on_save = { timeout_ms = 500 },

    -- Set up custom formatters
    formatters = {
      prettierd = {
        args = { "--tab-width", "2", "--semi", "true" }
      },
      prettier = {
        args = { "--tab-width", "2", "--semi", "true" }
      }
    }
  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
