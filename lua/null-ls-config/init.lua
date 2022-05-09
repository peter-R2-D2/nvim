local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting
local eslintCodeAction = null_ls.builtins.code_actions.eslint
local eslintDiagnostics = null_ls.builtins.diagnostics.eslint
local estandarJs =  null_ls.builtins.diagnostics.standardjs
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    eslintCodeAction,
    eslintDiagnostics,
    estandarJs,
    formatting.eslint,
    formatting.djlint,
    formatting.black,
    formatting.gofmt, 
    formatting.shfmt,
    formatting.clang_format, 
    formatting.cmake_format, 
    formatting.dart_format,
    formatting.lua_format.with({
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
    }), formatting.isort, formatting.codespell.with({filetypes = {'markdown'}})
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
    end
})
