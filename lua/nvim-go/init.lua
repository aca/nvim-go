local vim = vim
local M = {}

local function formatAndSave(tool)
  vim.api.nvim_exec('write', true)
  local fullname = vim.api.nvim_buf_get_name(0)
  -- TODO: error handling
  vim.fn.jobstart({tool, '-w', fullname}, {
    on_exit = function()
      vim.api.nvim_exec('edit!', true)
    end,
  })
end

function M.gofumports() return formatAndSave('gofumports') end
function M.goimports() return formatAndSave('goimports') end
function M.gofmt() return formatAndSave('gofmt') end
function M.gofumpt() return formatAndSave('gofumpt') end

return M
