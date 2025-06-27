local M = {}

M.config = {}

function M.setup()
    M.config = vim.tbl_deep_extend("force", M.config or {})

    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "parsee"

    require("parsee.colors").setup()
end

return M