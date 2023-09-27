local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

-- resize splits if window got resized (from LazyVim)
vim.api.nvim_create_autocmd({ "VimResized" }, {
  group = augroup("resize_splits"),
  callback = function()
    local current_tab = vim.fn.tabpagenr()
    vim.cmd("tabdo wincmd =")
    vim.cmd("tabnext " .. current_tab)
  end,
})

vim.cmd([[
    augroup filetypefix
    autocmd!
        " Treat WAF wscript as a python file
        autocmd BufNewFile,BufRead wscript* set filetype=python

        " Udev rules
        autocmd FileType hog set filetype=udevrules
    augroup END
]])
