if exists('g:loaded_nvim_go') | finish | endif
let g:loaded_nvim_go = 1

command! Gofumports lua require('nvim-go').gofumports()
command! Gofumpt lua require('nvim-go').gofumpt()
command! Goimports lua require('nvim-go').gofumports()
command! Gofmt lua require('nvim-go').gofumpt()

cnoreabbrev gofumports Gofumports
cnoreabbrev gofmt Gofmt
cnoreabbrev goimports Goimports
cnoreabbrev gofumpt Gofumpt
