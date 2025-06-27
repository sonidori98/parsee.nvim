local M = {}

function M.setup()
    local files = { "editor" }
    for _, file in ipairs(files) do
        require("parsee.colors." .. file).setup()
    end
end

return M