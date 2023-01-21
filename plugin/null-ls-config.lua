local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslint,
	    null_ls.builtins.formatting.mix,
	    null_ls.builtins.formatting.prettier,
    	null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.black,
    },
})
