local M = {}

local util = require("parsee.lib.utils")
local color = require("parsee.lib.base_color")

function M.setup()
    util.highlight("Normal", { fg = color.ask.fg_muted_green })
    util.highlight("Comment", { fg = color.ask.comment_moss_green })
    util.highlight("Keyword", { fg = color.ask.keyword_blonde_yellow })
    util.highlight("String", { fg = color.ask.string_palsy_green })
    util.highlight("Function", { fg = color.ask.functions_eye_green })
    util.highlight("Type", { fg = color.ask.type_outfit_red })
    util.highlight("Number", { fg = color.ask.number_outfit_blue })
    util.highlight("Visual", { bg = color.ask.visual_jealousy_purple, blend = 30 })
    util.highlight("CursorLine", { bg = color.ask.cursor_line_bg })
    util.highlight("Error", { fg = color.ask.type_outfit_red, bg = color.ask.error_bg })
    util.highlight("LineNr", { fg = color.ask.line_nr_fg })
    util.highlight("MatchParen", { fg = color.ask.keyword_blonde_yellow, underline = true })
end

return M