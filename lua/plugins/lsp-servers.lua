local lspconfig = require("lspconfig");
local on_attach = function(client)
  require("completion").on_attach(client)
end

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  settings = {
    ["rust_analyzer"] = {
      cargo = {
        features = {
          "client",
          "server"
        }
      }
    }
  }
})

return {
  --- Rust LSP
  {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false,   -- This plugin is already lazy
    config = function()
      local mason_registry = require('mason-registry')
      local codelldb = mason_registry:get_package('codelldb')
      local extension_path = codelldb:get_extension_path() .. "/extension/"
      local codelldb_path = extension_path .. "adapter/codelldb"
      local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
      local cfg = require("rustaceanvim.config")

      vim.g.rustaceanvim = {
        dap = {
          adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
        }
      }
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "toml" },
    config = function()
      require("crates").setup({
        completion = {
          cmp = {
            enabled = true,
          },
        },
      })
      require('cmp').setup.buffer({
        sources = {
          { name = 'crates' },
        },
      })
    end
  }
}
