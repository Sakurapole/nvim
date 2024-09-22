local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.yapf.with({
      --extra_args = { '--style', '../../format_styles/.style.yapf' }
    })
  }
})
