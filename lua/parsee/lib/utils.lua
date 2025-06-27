local M = {}

local color = require("parsee.lib.base_color")

local DEFAULT_BG_COLOR = color.ask.bg_deep_green

--- ハイライトグループを設定するヘルパー関数
--- @param group string ハイライトグループ名
--- @param opts table 色とスタイルのオプション({ fg, bg, style, link })
function M.highlight(group, opts)
    opts = opts or {}

    local cmd = "hi " .. group
    local gui_params = {}

    if opts.bg == nil then
        gui_params.guibg = DEFAULT_BG_COLOR
    elseif opts.bg ~= "NONE" then
        gui_params.guibg = opts.bg
    else
        gui_params.guibg = "NONE"
    end

    if opts.fg then
        gui_params.guifg = opts.fg
    end

    if opts.style then
        gui_params.gui = opts.style
    end

    if opts.link then
        vim.cmd("hi link " .. group .. " " .. opts.link)
        return
    end

    for k, v in pairs(gui_params) do
        cmd = cmd .. " " .. k .. "=" .. v
    end

    vim.cmd(cmd)
end

return M
