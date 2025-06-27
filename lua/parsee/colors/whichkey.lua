local M = {}

function M.setup()
    local util = require("parsee.lib.utils")
    local color = require("parsee.lib.base_color").ask

    util.highlight("WhichKey", { fg = color.function_eye_green, bg = color.cursor_line_bg })
    util.highlight("WhichKeyNormal", { bg = color.cursor_line_bg })
    util.highlight("WhichKeyGroup", { fg = color.keyword_blonde_yellow, bg = color.cursor_line_bg })
    util.highlight("WhichKeySeparator", { fg = color.type_outfit_blue, bg = color.cursor_line_bg })
end

return M
