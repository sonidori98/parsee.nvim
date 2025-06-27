local M = {}

function M.setup()
    local util = require("parsee.lib.utils")
    local color = require("parsee.lib.base_color").ask

    -- 基本的なテキスト要素
    util.highlight("@text.literal", { fg = color.string_parsee_green }) -- リテラルテキスト
    util.highlight("@text.reference", { fg = color.fg_muted_green }) -- 参照テキスト

    -- コメント
    util.highlight("@comment", { fg = color.comment_moss_green, style = "italic" })

    -- 定数、数値、真偽値
    util.highlight("@constant", { fg = color.keyword_blonde_yellow })
    util.highlight("@constant.builtin", { fg = color.keyword_blonde_yellow }) -- 組み込み定数
    util.highlight("@constant.macro", { fg = color.keyword_blonde_yellow }) -- マクロ定数
    util.highlight("@number", { fg = color.number_earth_yellow })
    util.highlight("@boolean", { fg = color.keyword_blonde_yellow })
    util.highlight("@float", { fg = color.number_earth_yellow })

    -- 識別子、変数
    util.highlight("@variable", { fg = color.number_earth_yellow })
    util.highlight("@variable.builtin", { fg = color.number_earth_yellow }) -- 組み込み変数 (例: this, self)
    util.highlight("@parameter", { fg = color.parameter_earth_green })   -- 関数引数

    -- 属性、アノテーション、フィールド
    util.highlight("@property", { fg = color.function_eye_green }) -- オブジェクトのプロパティ
    util.highlight("@field", { fg = color.function_eye_green }) -- 構造体/クラスのフィールド
    util.highlight("@attribute", { fg = color.type_outfit_blue }) -- 属性やデコレータ

    -- 関数、メソッド、マクロ
    util.highlight("@function", { fg = color.function_eye_green })
    util.highlight("@function.call", { fg = color.function_eye_green })
    util.highlight("@function.builtin", { fg = color.function_eye_green })
    util.highlight("@function.macro", { fg = color.function_eye_green })
    util.highlight("@method", { fg = color.function_eye_green })
    util.highlight("@method.call", { fg = color.function_eye_green })

    -- 型
    util.highlight("@type", { fg = color.type_outfit_blue })
    util.highlight("@type.builtin", { fg = color.type_outfit_blue }) -- 組み込み型 (例: int, string)
    util.highlight("@type.definition", { fg = color.type_outfit_blue }) -- 型定義 (例: class名、struct名)

    -- キーワード、演算子、パンクチュエーション
    util.highlight("@keyword", { fg = color.keyword_blonde_yellow })
    util.highlight("@operator", { fg = color.fg_muted_green })                -- 演算子 (+, -, =, == など)
    util.highlight("@punctuation.delimiter", { fg = color.fg_muted_green })   -- 区切り文字 (;, ,, :)
    util.highlight("@punctuation.bracket", { fg = color.fg_muted_green })     -- 括弧 ((), [], {})
    util.highlight("@punctuation.special", { fg = color.keyword_blonde_yellow }) -- 特殊なパンクチュエーション (例: @, #)

    -- 文字列、文字、エスケープシーケンス
    util.highlight("@string", { fg = color.string_parsee_green })
    util.highlight("@string.escape", { fg = color.number_earth_yellow }) -- エスケープシーケンス (\n, \t など)
    util.highlight("@character", { fg = color.string_parsee_green })

    -- 構造化された言語の要素 (HTML/XML, Markdownなど)
    util.highlight("@tag", { fg = color.keyword_blonde_yellow })                         -- HTML/XMLタグなど
    util.highlight("@tag.attribute", { fg = color.type_outfit_blue })                    -- タグの属性
    util.highlight("@markup.heading", { fg = color.keyword_blonde_yellow, style = "bold" }) -- Markdown見出し
    util.highlight("@markup.list", { fg = color.string_parsee_green })                   -- Markdownリスト
    util.highlight("@markup.raw", { fg = color.comment_moss_green })                     -- コードブロックなど
    util.highlight("@markup.link", { fg = color.number_earth_yellow, style = "underline" }) -- リンク

    -- エラー、警告、ヒント、情報 (Diagnostics)
    util.highlight("@error", { fg = color.type_error_red, bg = color.error_bg })
    util.highlight("@warning", { fg = color.keyword_blonde_yellow })
    util.highlight("@hint", { fg = color.comment_moss_green })
    util.highlight("@info", { fg = color.number_earth_yellow })

    -- LSP Diagnostic
    util.highlight("DiagnosticError", { fg = color.type_error_red, bg = color.error_bg, style = "underline" })
    util.highlight("DiagnosticWarning", { fg = color.keyword_blonde_yellow, style = "underline" })
    -- NOTE: noice.nvimのコマンドラインに影響有り
    -- util.highlight("DiagnosticInfo", { fg = color.number_earth_yellow, style = "underline" })
    util.highlight("DiagnosticHint", { fg = color.comment_moss_green, style = "underline" })

    -- LSP の Inlay Hints
    util.highlight("LspInlayHint", { fg = color.comment_moss_green, style = "italic" })

    -- Nvim-cmpなどの補完メニュー
    util.highlight("Pmenu", { fg = color.fg_muted_green, bg = color.cursor_line_bg })
    util.highlight("PmenuSel", { bg = color.visual_jealousy_purple })
    util.highlight("PmenuSbar", { bg = color.line_nr_fg })
    util.highlight("PmenuThumb", { bg = color.function_eye_green })

    -- 状態行 (StatusLine)
    util.highlight("StatusLine", { fg = color.fg_muted_green, bg = color.cursor_line_bg })
    util.highlight("StatusLineNC", { fg = color.comment_moss_green, bg = color.bg_deep_green })
    util.highlight("TabLine", { fg = color.comment_moss_green, bg = color.bg_deep_green })
    util.highlight("TabLineSel", { fg = color.keyword_blonde_yellow, bg = color.cursor_line_bg })
    util.highlight("TabLineFill", { bg = color.bg_deep_green })

    -- Diff
    util.highlight("DiffAdd", { bg = "#2A4A3C" }) -- 緑がかった追加
    util.highlight("DiffChange", { bg = "#4A4A2A" }) -- 黄色がかった変更
    util.highlight("DiffDelete", { bg = "#4A2A2A" }) -- 赤がかった削除
    util.highlight("DiffText", { bg = "#5A4A5A" }) -- 紫がかった変更されたテキスト

    -- 行番号
    util.highlight("LineNr", { fg = color.line_nr_fg })
    util.highlight("CursorLineNr", { fg = color.keyword_blonde_yellow, bg = color.cursor_line_bg, style = "bold" })

    -- 検索
    util.highlight("Search", { fg = color.bg_deep_green, bg = color.keyword_blonde_yellow })
    util.highlight("IncSearch", { fg = color.bg_deep_green, bg = color.function_eye_green })

    -- 折りたたみ
    util.highlight("Folded", { fg = color.comment_moss_green, bg = color.cursor_line_bg })
    util.highlight("FoldColumn", { fg = color.comment_moss_green, bg = color.bg_deep_green })

    --- C/C++ 固有の Tree-sitter ハイライトグループ ---

    -- プリプロセッサ
    util.highlight("@preproc", { fg = color.keyword_blonde_yellow }) -- #include, #define など
    util.highlight("@preproc.call", { fg = color.function_eye_green }) -- プリプロセッサ関数の呼び出し

    -- 型 (C/C++特有の型)
    util.highlight("@type.qualifier", { fg = color.type_outfit_blue, style = "italic" }) -- const, static, volatile など
    util.highlight("@type.alias", { fg = color.type_outfit_blue })                    -- typedef, using によるエイリアス

    -- クラス、構造体、列挙型
    util.highlight("@type.definition", { fg = color.type_outfit_blue }) -- class, struct, enum の定義名
    util.highlight("@type.builtin", { fg = color.type_outfit_blue }) -- int, char などの組み込み型

    -- テンプレート
    util.highlight("@type.parameter", { fg = color.type_outfit_blue }) -- テンプレートパラメータ (T in template<typename T>)

    -- 演算子
    util.highlight("@operator", { fg = color.fg_muted_green }) -- +, -, *, /, =, ==, ->, :: など

    -- ストレージクラス
    util.highlight("@storageclass", { fg = color.keyword_blonde_yellow }) -- auto, register, extern など

    -- ラベル
    util.highlight("@label", { fg = color.function_eye_green, style = "underline" }) -- goto ラベルなど

    -- 名前空間
    util.highlight("@namespace", { fg = color.function_eye_green }) -- 名前空間の定義や参照

    -- マクロ
    util.highlight("@macro", { fg = color.keyword_blonde_yellow }) -- マクロ名
end

return M
