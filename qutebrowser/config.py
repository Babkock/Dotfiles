#               __       __
#  ____ ___  __/ /____  / /_  _________ _      __________  _____
# / __ `/ / / / __/ _ \/ __ \/ ___/ __ \ | /| / / ___/ _ \/ ___/
#/ /_/ / /_/ / /_/  __/ /_/ / /  / /_/ / |/ |/ (__  )  __/ /
#\__, /\__,_/\__/\___/_.___/_/   \____/|__/|__/____/\___/_/
#  /_/

# --- Colors ---
# Match with Xresources
base00 = "#101010"
base01 = "#d0484e"
base02 = "#25c192"
base03 = "#f28735"
base04 = "#49a6d0"
base05 = "#f74e8b"
base06 = "#d8a89a"
base07 = "#fdeadb"
base08 = "#121012"
base09 = "#c0383e"
base0A = "#15b082"
base0B = "#e27725"
base0C = "#3996c0"
base0D = "#f74e8b"
base0E = "#c8988a"
base0F = "#fdeadb"

# --- Completion widget ---

# May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = '#88fdeadb'
c.colors.completion.odd.bg = '#88101010'
c.colors.completion.even.bg = '#88100000'

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = base0F
c.colors.completion.category.bg = '#77101010'
c.colors.completion.category.border.top = '#8849a6d0'
c.colors.completion.category.border.bottom = '#8849a6d0'
c.colors.completion.item.selected.fg = base00
c.colors.completion.item.selected.bg = '#ccf74e8b'
c.colors.completion.item.selected.border.top = '#aaefdfef'
c.colors.completion.item.selected.border.bottom = '#bbe73d7b'
c.colors.completion.item.selected.match.fg = base0F
c.colors.completion.match.fg = base0A
# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = '#aaf28735'
# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = '#55101010'

c.colors.tooltip.bg = '#aa101010'
c.colors.tooltip.fg = '#eefdeadb'

# --- Context menu ---

c.colors.contextmenu.disabled.bg = '#77000000'
c.colors.contextmenu.disabled.fg = base01
# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = '#99101010'
c.colors.contextmenu.menu.fg =  base0F
c.colors.contextmenu.selected.bg = '#ddf74e8b'
c.colors.contextmenu.selected.fg = base00

# --- Downloads ---

c.colors.downloads.bar.bg = '#88101010'
#c.colors.downloads.start.fg = base00
#c.colors.downloads.start.bg = base0D
c.colors.downloads.start.fg = base0D
c.colors.downloads.start.bg = '#00101010'
c.colors.downloads.stop.fg = base0C
c.colors.downloads.stop.bg = '#77101010'
c.colors.downloads.error.fg = base09
c.colors.downloads.system.bg = 'hsv'

# --- Hints ---

c.colors.hints.fg = base0E
# Note that you can use a `rgba(...)` value for transparency.
c.colors.hints.bg = '#88101010'
c.colors.hints.match.fg = base05
c.colors.keyhint.fg = base05
# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = base05
c.colors.keyhint.bg = '#88101010'

# --- Messages ---

c.colors.messages.error.fg = base09
c.colors.messages.error.bg = '#66101010'
c.colors.messages.error.border = base09
c.colors.messages.warning.fg = base09
c.colors.messages.warning.bg = '#77101010'
c.colors.messages.warning.border = base09
c.colors.messages.info.fg = base01
c.colors.messages.info.bg = '#66101010'
c.colors.messages.info.border = '#99101010'

# --- Prompts ---

c.colors.prompts.fg = base0F
# Border used around UI elements in prompts.
c.colors.prompts.border = '#25c192'
c.colors.prompts.bg = '#ef101010'
c.colors.prompts.selected.bg = '#ef101010'
c.colors.prompts.selected.fg = base00

# --- Status bar ---

c.colors.statusbar.normal.fg = base05
c.colors.statusbar.normal.bg = '#88101010'
c.colors.statusbar.insert.fg = base08
c.colors.statusbar.insert.bg = '#aa25c192'
c.colors.statusbar.passthrough.fg = base0A
c.colors.statusbar.passthrough.bg = '#88101010'
# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = base0E
# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = '#88101010'
c.colors.statusbar.command.fg = base04
c.colors.statusbar.command.bg = '#88101004'
c.colors.statusbar.command.private.fg = base0E
c.colors.statusbar.command.private.bg = '#88101010'
c.colors.statusbar.caret.fg = base0D
c.colors.statusbar.caret.bg = '#77101010'
c.colors.statusbar.caret.selection.fg = base0D
c.colors.statusbar.caret.selection.bg = '#77101010'
c.colors.statusbar.progress.bg = base0D

# --- Status bar URL ---

c.colors.statusbar.url.fg = base05
c.colors.statusbar.url.error.fg = base08
# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = base0B
c.colors.statusbar.url.success.http.fg = base0C
c.colors.statusbar.url.success.https.fg = base0C
c.colors.statusbar.url.warn.fg = base09

# --- Tabs ---

c.colors.tabs.bar.bg = '#10101010'
c.colors.tabs.indicator.start = base03
c.colors.tabs.indicator.stop = base0B
c.colors.tabs.indicator.error = base08
c.colors.tabs.odd.fg = base02
c.colors.tabs.odd.bg = '#66101010'
c.colors.tabs.even.fg = base03
c.colors.tabs.even.bg = '#66101010'
c.colors.tabs.pinned.even.bg = '#66101002'
c.colors.tabs.pinned.even.fg = base00
c.colors.tabs.pinned.odd.bg = '#66101002'
c.colors.tabs.pinned.odd.fg = base00
c.colors.tabs.pinned.selected.even.bg = '#aaf74e8b'
c.colors.tabs.pinned.selected.even.fg = base00
c.colors.tabs.pinned.selected.odd.bg = '#aaf74e8b'
c.colors.tabs.pinned.selected.odd.fg = base00

# --- Selected tabs ---
c.colors.tabs.selected.odd.fg = base0A
c.colors.tabs.selected.odd.bg = '#77101010'
c.colors.tabs.selected.even.fg = base0A
c.colors.tabs.selected.even.bg = '#77101010'
# Default page background when there is none
c.colors.webpage.bg = '#ffffffff'

config.load_autoconfig()

c.completion.height = "30%"
c.downloads.location.directory = "/home/babkock"
c.downloads.location.prompt = False
c.prompt.filebrowser = False
c.prompt.radius = 20
c.input.insert_mode.auto_load = True
c.input.insert_mode.auto_leave = True
c.downloads.prevent_mixed_content = True
c.downloads.position = "bottom"
c.window.transparent = True
c.completion.timestamp_format = "%a, %b %d %H:%M:%S"
c.completion.scrollbar.width = 20
c.content.cookies.accept = 'all'
c.content.media.video_capture = True
c.content.media.audio_capture = True
c.content.media.audio_video_capture = True
c.content.notifications.enabled = True
c.content.notifications.presenter = "libnotify"
c.content.webgl = True
c.content.pdfjs = True
c.content.xss_auditing = False
c.content.local_content_can_access_remote_urls = True
c.content.plugins = True
c.content.tls.certificate_errors = "load-insecurely"
c.content.geolocation = False
c.content.javascript.clipboard = "access"
c.content.prefers_reduced_motion = True
c.hints.radius = 20
c.hints.uppercase = True
c.scrolling.bar = "always"
c.scrolling.smooth = False
c.qt.args = ["stylesheet /home/babkock/.local/share/qutebrowser/fix-tooltips.qss"]
c.qt.chromium.experimental_web_platform_features = "always"

# --- Fonts ---

c.fonts.default_family = 'Space Mono Nerd Font'
c.fonts.default_size = '14pt'
c.fonts.messages.error = '14pt Space Mono'
c.fonts.messages.info = '14pt Space Mono Nerd Font'
c.fonts.messages.warning = '14pt Space Mono Nerd Font'
c.fonts.statusbar = '14pt Space Mono Nerd Font'
c.fonts.downloads = '14pt Space Mono Nerd Font'
c.fonts.prompts = '15pt Victor Mono Nerd Font'
c.fonts.keyhint = '14pt Space Mono Nerd Font'
c.fonts.hints = '14pt Space Mono Nerd Font'
c.fonts.contextmenu = '14pt Space Mono Nerd Font'
c.fonts.completion.category = 'bold 15pt Victor Mono Nerd Font'
c.fonts.tooltip = '15pt Victor Mono Nerd Font'
c.fonts.completion.entry = '14pt Space Mono Nerd Font'
c.fonts.tabs.selected = 'italic 14pt Space Mono Nerd Font'
c.fonts.tabs.unselected = '14pt Space Mono Nerd Font'
c.fonts.messages.info = 'italic 14pt Space Mono Nerd Font'
c.fonts.messages.error = 'italic 14pt Space Mono Nerd Font'
c.fonts.messages.warning = 'italic 14pt Space Mono Nerd Font'

# --- Appearance ---

c.hints.padding = {
    "left": 4,
    "right": 4,
    "top": 3,
    "bottom": 4
}

c.colors.completion.fg = '#efefef'
c.colors.downloads.start.fg = '#bbd94a4f'
c.colors.downloads.start.bg = '#00101010'
c.colors.downloads.stop.bg = '#00101010'
c.colors.downloads.stop.fg = '#ee35d1a2'

c.tabs.padding = {
    "left": 5,
    "right": 3,
    "top": 3,
    "bottom": 4
}
c.tabs.title.format = "{audio}{current_title}"
c.tabs.title.format_pinned = "{audio}{index}"
c.window.title_format = "{perc}{current_title}"
c.tabs.last_close = "close"
c.tabs.indicator.width = 0
c.tabs.favicons.scale = 1.3
c.tabs.show_switching_delay = 700
c.tabs.pinned.frozen = False
c.completion.shrink = True
c.auto_save.interval = 20000

# --- Search engines ---

c.url.start_pages = ["file:///home/babkock/.config/qutebrowser/index.html"]
c.url.searchengines = { 'DEFAULT': 'https://duckduckgo.com/?ia=web&q={}', '!a': 'https://wiki.archlinux.org/index.php?title=Special%3ASearch&search={}', '!g': 'https://google.com/search?hl=en&q={}', '!i': 'https://google.com/search?hl=en&tbm=isch&q={}', '!m': 'https://google.com/maps?q={}', '!w': 'https://en.wikipedia.org/w/index.php?title=Special%3ASearch&search={}', '!h': 'https://github.com/search?q={}', '!y': 'https://youtube.com/results?search_query={}', '!n': 'https://yandex.ru/search/?text={}' }

c.fileselect.handler = 'external'
#c.fileselect.single_file.command = ['st', '-e', 'ranger', '--choosefile={}']
c.fileselect.single_file.command = ['alacritty', '-e', 'nnn', '-d', '-l', '2', '-U', '-D', '-R', '-p', '{}']
#c.fileselect.multiple_files.command = ['st', '-e', 'ranger', '--choosefiles={}']
c.fileselect.multiple_files.command = ['alacritty', '-e', 'nnn', '-d', '-l', '2', '-U', '-D', '-R', '-p', '{}']

# --- Keybindings: Bookmarks ---

config.bind(',`', 'open https://github.com/Babkock')
config.bind(',1', 'open https://gitlab.com/Babkock/')
config.bind(',2', 'open https://yt.funami.tech/feed/subscriptions')
config.bind(',3', 'open https://proton.me')
config.bind(',4', 'open https://tannerbabcock.com/home')
config.bind(',5', 'open https://passthepopcorn.me')
config.bind(',6', 'open https://empornium.is')
config.bind(',7', 'open https://boards.4channel.org/g/catalog')
config.bind(',8', 'open https://news.ycombinator.com/news')
config.bind(',9', 'open https://old.reddit.com')
config.bind(',0', 'open https://babkock.github.io')
config.bind(',-', 'open https://www.messenger.com')
config.bind(',=', 'open https://en.wikipedia.org/wiki/Main_Page')

# --- Keybindings: Stylesheets ---

config.bind(',c', 'config-cycle content.user_stylesheets "" ""')
config.bind(',a', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/4chan.css ""')
config.bind(',b', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/reddit.css ""')
config.bind(',e', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/empornium.css ""')
config.bind(',w', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/wikipedia.css ""')

config.bind(',z', 'config-cycle fonts.default_size "16pt" "14pt"')
config.bind(',x', 'config-cycle fonts.statusbar "16pt Space Mono Nerd Font" "14pt Space Mono Nerd Font"')
config.bind(',p', 'config-cycle fonts.tabs.selected "italic 16pt Space Mono Nerd Font" "italic 14pt Space Mono Nerd Font"')
config.bind(',v', 'config-cycle fonts.downloads "16pt Space Mono Nerd Font" "14pt Space Mono Nerd Font"')
config.bind(',n', 'config-cycle fonts.completion.category "17pt Space Mono Nerd Font" "14pt Space Mono Nerd Font"')
config.bind(',m', 'config-cycle fonts.completion.entry "17pt Space Mono Nerd Font" "14pt Space Mono Nerd Font"')

# --- Keybindings: UI ---

config.bind('M', 'hint links spawn mpv --vo=gpu --hwdec=vaapi --ytdl-format=\"bestvideo[height<=720]+bestaudio\" --audio-device=\"pulse/alsa_output.pci-0000_00_1f.3.analog-stereo\" --script-opts=ytdl_hook-ytdl_path=yt-dlp \"{hint-url}\"')
config.bind('xx', 'config-cycle statusbar.show never never')
config.bind('yy', 'config-cycle statusbar.show always always')
config.bind('xy', 'config-cycle tabs.show switching switching')
config.bind('yx', 'config-cycle tabs.show multiple multiple')
config.bind('zz', 'history-clear')
config.bind('l', 'tab-pin')
config.bind('.', 'download-cancel')
