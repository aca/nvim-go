function gofumports()
  vim.api.nvim_exec('write', true)
  local fullname = vim.api.nvim_buf_get_name(0)
  -- TODO: error handling
  vim.fn.jobstart({'gofumports', '-w', fullname}, {
    on_exit = function()
      vim.api.nvim_exec('edit!', true)
    end
  })
end

function gofumpt()
  vim.api.nvim_exec('write', true)
  local fullname = vim.api.nvim_buf_get_name(0)
  -- TODO: error handling
  vim.fn.jobstart({'gofumpt', '-w', fullname}, {
    on_exit = function()
      vim.api.nvim_exec('edit!', true)
    end
  })
end
