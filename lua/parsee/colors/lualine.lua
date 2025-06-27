return function()
    local parsee = {}
    local color = require("parsee.lib.base_color").ask -- base_colorを直接参照

    -- --- ノーマルモード ---
    parsee.normal = {
        a = { fg = color.bg_deep_green, bg = color.function_eye_green, style = "bold" },
        b = { fg = color.keyword_blonde_yellow, bg = color.cursor_line_bg },
        c = { fg = color.fg_muted_green, bg = color.string_palsy_green },
        x = { fg = color.type_outfit_blue, bg = color.cursor_line_bg },
        y = { fg = color.number_earth_yellow, bg = color.cursor_line_bg },
        z = { fg = color.bg_deep_green, bg = color.function_eye_green, style = "bold" },
    }

    -- --- インサートモード ---
    parsee.insert = {
        a = { fg = color.bg_deep_green, bg = color.keyword_blonde_yellow, style = "bold" },
        b = { fg = color.fg_muted_green, bg = color.cursor_line_bg },
        c = { fg = color.fg_muted_green, bg = color.string_palsy_green },
        x = { fg = color.type_outfit_blue, bg = color.cursor_line_bg },
        y = { fg = color.number_earth_yellow, bg = color.cursor_line_bg },
        z = { fg = color.bg_deep_green, bg = color.keyword_blonde_yellow, style = "bold" },
    }

    -- --- ビジュアルモード ---
    parsee.visual = {
        a = { fg = color.fg_muted_green, bg = color.visual_jealousy_purple, style = "bold" },
        b = { fg = color.keyword_blonde_yellow, bg = color.cursor_line_bg },
        c = { fg = color.fg_muted_green, bg = color.string_palsy_green },
        x = { fg = color.type_outfit_blue, bg = color.cursor_line_bg },
        y = { fg = color.number_earth_yellow, bg = color.cursor_line_bg },
        z = { fg = color.fg_muted_green, bg = color.visual_jealousy_purple, style = "bold" },
    }

    -- --- リプレースモード ---
    parsee.replace = {
        a = { fg = color.fg_muted_green, bg = color.type_error_red, style = "bold" },
        b = { fg = color.cursor_line_bg },
        c = { fg = color.fg_muted_green, bg = color.string_palsy_green },
        x = { fg = color.type_outfit_blue, bg = color.cursor_line_bg },
        y = { fg = color.number_earth_yellow, bg = color.cursor_line_bg },
        z = { fg = color.fg_muted_green, bg = color.type_error_red, style = "bold" },
    }

    -- --- コマンドモード ---
    parsee.command = {
        a = { fg = color.fg_muted_green, bg = color.number_earth_yellow, style = "bold" },
        b = { fg = color.keyword_blonde_yellow, bg = color.cursor_line_bg },
        c = { fg = color.fg_muted_green, bg = color.string_palsy_green },
        x = { fg = color.type_outfit_blue, bg = color.cursor_line_bg },
        y = { fg = color.number_earth_yellow, bg = color.cursor_line_bg },
        z = { fg = color.fg_muted_green, bg = color.number_earth_yellow, style = "bold" },
    }

    -- --- ターミナルモード ---
    parsee.terminal = {
        a = { fg = color.bg_deep_green, bg = color.type_outfit_blue, style = "bold" },
        b = { fg = color.keyword_blonde_yellow, bg = color.cursor_line_bg },
        c = { fg = color.fg_muted_green, bg = color.string_palsy_green },
        x = { fg = color.type_outfit_blue, bg = color.cursor_line_bg },
        y = { fg = color.number_earth_yellow, bg = color.cursor_line_bg },
        z = { fg = color.bg_deep_green, bg = color.type_outfit_blue, style = "bold" },
    }

    -- --- 非アクティブウィンドウ ---
    parsee.inactive = {
        a = { fg = color.comment_moss_green, bg = color.bg_deep_green },
        b = { fg = color.comment_moss_green, bg = color.bg_deep_green },
        c = { fg = color.comment_moss_green, bg = color.bg_deep_green },
        x = { fg = color.comment_moss_green, bg = color.bg_deep_green },
        y = { fg = color.comment_moss_green, bg = color.bg_deep_green },
        z = { fg = color.comment_moss_green, bg = color.bg_deep_green },
    }

    return parsee
end