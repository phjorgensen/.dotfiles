# config.nu
#
# Installed by:
# version = "0.101.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

$env.PATH ++= [ "~/.local/bin", "/usr/local/go/bin" ]

$env.config.buffer_editor = "editor"
$env.config.edit_mode = "vi"

# $env.config.keybindings ++= [
#   {
#     name: tmux-sessionizer
#     modifier: control
#     keycode: Char_F
#     mode: [emacs vi_normal vi_insert]
#     event: [
#       { edit: { cmd: clear } }
#       { edit: { cmd: tmux-sessionizer } }
#       { send: enter }
#     ]
#   }
# ]

$env.config.filesize.metric = true
$env.config.filesize.format = "auto"

$env.config.history.file_format = "sqlite"
$env.config.history.max_size = 5_000_000
$env.config.history.isolation = false

$env.config.show_banner = false

$env.config.completions.algorithm = "fuzzy"
$env.config.completions.sort = "smart"
$env.config.completions.case_sensitive = false
$env.config.completions.quick = true
$env.config.completions.partial = true
$env.config.completions.use_ls_colors = true

$env.config.completions.external.enable = true
$env.config.completions.external.max_results = 50

$env.config.use_kitty_protocol = true
$env.config.shell_integration.osc2 = true
$env.config.shell_integration.osc7 = true
$env.config.shell_integration.osc8 = true
$env.config.shell_integration.osc9_9 = true
$env.config.shell_integration.osc133 = true
$env.config.shell_integration.osc633 = false
$env.config.shell_integration.reset_application_mode = true

$env.config.bracketed_paste = true
$env.config.use_ansi_coloring = true
