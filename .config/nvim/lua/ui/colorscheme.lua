return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- load colorscheme here
      vim.cmd([[colorscheme gruvbox]])
    end
  }
}
