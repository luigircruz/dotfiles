return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  lazy = true,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    local dashboard = require 'alpha.themes.dashboard'
    local logo = [[
      ██╗      ██╗   ██╗ ██╗  ██████╗  ██╗      
      ██║      ██║   ██║ ██║ ██╔════╝  ██║      
      ██║      ██║   ██║ ██║ ██║  ███╗ ██║      
      ██║      ██║   ██║ ██║ ██║   ██║ ██║      
      ███████╗ ╚██████╔╝ ██║ ╚██████╔╝ ██║      
      ╚══════╝  ╚═════╝  ╚═╝  ╚═════╝  ╚═╝      
    ]]
    dashboard.section.header.val = vim.split(logo, '\n')
    dashboard.section.buttons.val = {
      dashboard.button('f', ' ' .. ' Find file', ':Telescope find_files<CR>'),
      dashboard.button('n', ' ' .. ' New file', [[<cmd> ene <BAR> startinsert <cr>]]),
      dashboard.button('r', ' ' .. ' Recent files', ':Telescope oldfiles<CR>'),
      dashboard.button('l', '󰒲 ' .. ' Lazy', '<cmd> Lazy <cr>'),
      dashboard.button('q', ' ' .. ' Quit', '<cmd> qa <cr>'),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = 'AlphaButtons'
      button.opts.hl_shortcut = 'AlphaShortcut'
    end
    dashboard.section.header.opts.hl = 'AlphaHeader'
    dashboard.section.buttons.opts.hl = 'AlphaButtons'
    dashboard.section.footer.opts.hl = 'AlphaFooter'
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
  config = function(_, dashboard)
    -- close Lazy and re-open when the dashboard is ready
    if vim.o.filetype == 'lazy' then
      vim.cmd.close()
      vim.api.nvim_create_autocmd('User', {
        once = true,
        pattern = 'AlphaReady',
        callback = function()
          require('lazy').show()
        end,
      })
    end

    require('alpha').setup(dashboard.opts)

    -- Create an augroup to manage alpha-related autocommands
    local alpha_augroup = vim.api.nvim_create_augroup('alpha_tabline', { clear = true })

    -- Autocommand to set options when the Alpha dashboard is ready
    vim.api.nvim_create_autocmd('User', {
      pattern = 'AlphaReady',
      group = alpha_augroup,
      callback = function()
        vim.opt.showtabline = 0 -- Hide tabline
        vim.opt.laststatus = 0 -- Hide statusline

        -- Nested autocommand to restore options when a buffer is unloaded (i.e., a file is opened)
        vim.api.nvim_create_autocmd('BufUnload', {
          buffer = 0, -- Apply to the current buffer (alpha buffer)
          group = alpha_augroup,
          callback = function()
            vim.opt.showtabline = 2 -- Restore tabline
            vim.opt.laststatus = 3 -- Restore statusline
          end,
        })
      end,
    })
  end,
}
