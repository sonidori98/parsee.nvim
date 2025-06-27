local M = {}

local util = require("parsee.lib.utils")
local color = require("parsee.lib.base_color").ask

function M.setup()
    util.highlight("Normal", { fg = color.fg_muted_green })
    util.highlight("Comment", { fg = color.comment_moss_green })
    util.highlight("Keyword", { fg = color.keyword_blonde_yellow })
    util.highlight("String", { fg = color.string_parsee_green })
    util.highlight("Function", { fg = color.function_eye_green })
    util.highlight("Parameter", { fg = color.parameter_earth_green })
    util.highlight("Type", { fg = color.type_outfit_blue })
    util.highlight("Number", { fg = color.number_earth_yellow })
    util.highlight("Visual", { bg = color.visual_jealousy_purple, blend = 30 })
    util.highlight("CursorLine", { bg = color.cursor_line_bg })
    util.highlight("Error", { fg = color.type_outfit_blue, bg = color.error_bg })
    util.highlight("LineNr", { fg = color.line_nr_fg })
    util.highlight("MatchParen", { fg = color.keyword_blonde_yellow, underline = true })
    util.highlight("Special", { fg = color.string_parsee_green })
end

return M
