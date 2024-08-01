vim.opt.exrc = true
vim.g.rustaceanvim = {
  server = {
    ---@param project_root string Path to the project root
    settings = function(project_root)
      local ra = require("rustaceanvim.config.server")
      return ra.load_rust_analyzer_settings(project_root, {
        settings_file_pattern = "rust-analyzer.json",
      })
    end,
  },
}
