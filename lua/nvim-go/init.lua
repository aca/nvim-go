function formatAndSave(tool)
  vim.api.nvim_exec('write', true)
  local fullname = vim.api.nvim_buf_get_name(0)
  -- TODO: error handling
  vim.fn.jobstart({tool, '-w', fullname}, {
    on_exit = function()
      vim.api.nvim_exec('edit!', true)
    end,
  })
end

function gofumports() return formatAndSave('gofumports') end
function goimports() return formatAndSave('goimports') end
function gofmt() return formatAndSave('gofmt') end
function gofumpt() return formatAndSave('gofumpt') end
