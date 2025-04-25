-- Updating LazyVim default config for file explorer, file picker, and shared excluded folders for search/grep

-- Folders to always exclude from file search and grep
local SNACKS_EXCLUDED_FOLDERS = { "node_modules", ".cache", ".git", "dist", "build" }

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = false, -- Set to true to show hidden files by default
        },
        files = {
          exclude = SNACKS_EXCLUDED_FOLDERS,
        },
        grep = {
          exclude = SNACKS_EXCLUDED_FOLDERS,
        },
      },
    },
  },
  config = function(_, opts)
    require("snacks").setup(opts)
    -- Keymap to open the explorer in the current directory
    vim.keymap.set("n", "<leader>e", function()
      require("snacks.picker").explorer()
      vim.notify("Press 'H' to toggle hidden files in explorer", vim.log.levels.INFO)
    end, { desc = "Open Snacks Explorer" })
  end,
}
