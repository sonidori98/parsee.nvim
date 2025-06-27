local M = {}

function M.setup()
    local util = require("parsee.lib.utils")
    local color = require("parsee.lib.base_color").ask

    util.highlight("NeoTreeTitleBar", { fg = color.type_outfit_blue })
    util.highlight("NeoTreeDirectoryIcon", { fg = color.string_parsee_green })
    util.highlight("NeoTreeDirectoryName", { fg = color.string_parsee_green })
    util.highlight("NeotreeFileName", { fg = color.parameter_earth_green })

    util.highlight("NeoTreeGitModified", { fg = color.keyword_blonde_yellow })
    util.highlight("NeoTreeGitUntracked", { fg = color.type_outfit_blue })
    util.highlight("NeoTreeGitUnstaged", { fg = color.error_bg })
    util.highlight("NeoTreeGitStaged", { fg = color.function_eye_green })
    util.highlight("NeoTreeGitDeleted", { fg = color.type_error_red })
end

return M
