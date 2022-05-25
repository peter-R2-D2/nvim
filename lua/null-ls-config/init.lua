local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    formatting.eslint,
    formatting.djlint,
    formatting.black,
    formatting.gofmt,
    formatting.shfmt,
    formatting.clang_format,
    formatting.cmake_format,
    formatting.dart_format,
    formatting.stylua,
    formatting.isort,
    formatting.codespell,
  },
  on_attach = function(client)
    if client.server_capabilities.document_formatting then
      vim.cmd([[
              augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> :lua vim.lsp.buf.format()
              augroup END
              ]])
    end
  end,
  debug=true
})
