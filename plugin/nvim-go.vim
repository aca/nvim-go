if exists('g:loaded_nvim_go') | finish | endif
let g:loadde_nvim_go = 1

lua module = require("nvim-go")

command! Gofumports lua gofumports()
command! Gofumpt lua gofumpt()