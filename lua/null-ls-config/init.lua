local status, null_ls = pcall(require, "null_ls")
if (not status) then
  return
end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
  }
})
