return {
  -- add gruvbox
  { "kdheepak/monochrome.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load colorscheme here
      vim.cmd([[colorscheme monochrome]])
    end
  }
}
