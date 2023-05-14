local lspconfig = require("lspconfig")

local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
local lsp_attach = function(client, bufnr)
    -- create your own keybingding here
end


--local lspconfig = require("lspconfig")
--require("mason-lspconfig").setup_handlers({
--    function(server_name)
--        lspconfig[server_name].setup({
--            capabilities = lsp_capabilities,
--            on_attach = lsp_attach, 
--        })
--    end,
--})

-- another option if above don't behave as expected
local lspconfig = require('lspconfig')
local get_servers = require('mason-lspconfig').get_installed_servers

for _, server_name in ipairs(get_servers()) do
  lspconfig[server_name].setup({
    on_attach = lsp_attach,
    capabilities = lsp_capabilities,
  })
end
