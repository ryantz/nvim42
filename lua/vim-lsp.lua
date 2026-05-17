vim.lsp.config('clangd', {
	cmd = { 'clangd' },
	filetypes = { 'c', 'h' }
})

vim.lsp.enable({ 'clangd' })
--vim.keymap.set('n', 'gl', vim.diagnostic.open_float)

vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = '■',
    severity = { min = vim.diagnostic.severity.WARN },
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
