return {
    {
        'goolord/alpha-nvim',
        dependencies = {
            --'nvim-tree/nvim-web-devicons',
            'echasnovski/mini.nvim', 'rubiin/fortune.nvim' },
        config = function()
            local alpha = require('alpha')
            local startify = require('alpha.themes.startify')
            local dashboard = require('alpha.themes.dashboard')

            require("fortune").setup({
                max_width = 60,
                display_format = "long",
                content_type = "quotes",
                --custom_quotes = {""},
                --custom_tips = {""},
            })

            local function centerText(text, width)
                local totalPadding = width - #text
                local leftPadding = math.floor(totalPadding / 2)
                local rightPadding = totalPadding - leftPadding
                return string.rep(" ", leftPadding) .. text .. string.rep(" ", rightPadding)
            end

            local function generate_footer()
                local info = {}
                local v = vim.version()
                local version = " v" .. v.major .. "." .. v.minor .. "." .. v.patch
                local fortune = require("fortune").get_fortune()

                table.insert(info, centerText(version, 60))

                local footer = vim.list_extend(fortune, info)
                return footer
            end

            math.randomseed(os.time())

            local function pick_color()
                local colors = { "String", "Identifier", "Keyword", "Number" }
                return colors[math.random(#colors)]
            end

            local keybd = {
                [[                                                                                      ]],
                [[                                                                                      ]],
                [[                                                                                      ]],
                [[        . -------------------------------------------------------------------.        ]],
                [[        | [Esc] [F1][F2][F3][F4][F5][F6][F7][F8][F9][F0][F10][F11][F12] o o o|        ]],
                [[        |                                                                    |        ]],
                [[        | [`][1][2][3][4][5][6][7][8][9][0][-][=][_<_] [I][H][U] [N][/][*][-]|        ]],
                [[        | [|-][Q][W][E][R][T][Y][U][I][O][P][{][}] | | [D][E][D] [7][8][9]|+||        ]],
                [[        | [CAP][A][S][D][F][G][H][J][K][L][;]['][#]|_|           [4][5][6]|_||        ]],
                [[        | [^][\][Z][X][C][V][B][N][M][,][.][/] [__^__]    [^]    [1][2][3]| ||        ]],
                [[        | [c]   [a][________________________][a]   [c] [<][V][>] [ 0  ][.]|_||        ]],
                [[        `--------------------------------------------------------------------'        ]],
                [[                                                                                      ]],
                [[                                                                                      ]],
                [[                                                                                      ]],
                [[                                                                                      ]],
                [[░░      ░░░        ░░░      ░░░░░░░░░        ░░░      ░░░  ░░░░  ░░  ░░░░░░░░        ░]],
                [[▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒]],
                [[▓▓      ▓▓▓      ▓▓▓▓  ▓▓▓   ▓▓▓▓▓▓▓▓      ▓▓▓▓  ▓▓▓▓  ▓▓  ▓▓▓▓  ▓▓  ▓▓▓▓▓▓▓▓▓▓▓  ▓▓▓▓]],
                [[███████  ██  ████████  ████  ████████  ████████        ██  ████  ██  ███████████  ████]],
                [[██      ███        ███      █████████  ████████  ████  ███      ███        █████  ████]],
                [[                                                                                      ]],
                [[                                                                                      ]],
                [[                                                                                      ]],
            }

            dashboard.section.header.val = keybd
            dashboard.section.header.opts.hl = pick_color()
            dashboard.section.buttons.val = {
                dashboard.button("n", "   New file", ":ene <BAR> startinsert <CR>"),
                dashboard.button("f", "󰮗   Find file", ":cd $HOME | Telescope find_files<CR>"),
                --dashboard.button("e", "   File Explorer", ":cd $HOME | Neotree<CR>"),
                dashboard.button("m", "   Unfinished Project", ":cd ~/my_projects | Neotree<CR>"),
                dashboard.button("c", "󱋣   Class Assignment", ":cd ~/Class/comp4300 | Neotree<CR>"),
                dashboard.button("r", "   Recent", ":Telescope oldfiles<CR>"),
                dashboard.button("C", "   Configuration", ":cd ~/.config/nvim <CR> | :e init.lua<CR>"),
                --dashboard.button("R", "󱘞   Ripgrep", ":Telescope live_grep<CR>"),
                dashboard.button("q", "󰗼   Quit", ":qa<CR>"),
            }

            dashboard.section.footer.val = generate_footer()

            alpha.setup(startify.config)
            alpha.setup(dashboard.config)
            vim.cmd([[ autocmd FileType alpha setlocal nofoldenable ]])
        end
    },
    {
        'echasnovski/mini.nvim',
        version = false,
        config = function()
            require('mini.icons').setup()
        end
    },
}
