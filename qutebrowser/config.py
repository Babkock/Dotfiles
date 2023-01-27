#               __       __
#  ____ ___  __/ /____  / /_  _________ _      __________  _____
# / __ `/ / / / __/ _ \/ __ \/ ___/ __ \ | /| / / ___/ _ \/ ___/
#/ /_/ / /_/ / /_/  __/ /_/ / /  / /_/ / |/ |/ (__  )  __/ /
#\__, /\__,_/\__/\___/_.___/_/   \____/|__/|__/____/\___/_/
#  /_/

# --- Colors ---
# Match with Xresources
base00 = "#171002"
base01 = "#e93479"
base02 = "#81db54"
base03 = "#f9c65b"
base04 = "#5879ee"
base05 = "#d48eb6"
base06 = "#9d8af7"
base07 = "#dfefdf"
base08 = "#171002"
base09 = "#d72463"
base0A = "#70ca44"
base0B = "#e9b64b"
base0C = "#4768dd"
base0D = "#a9668c"
base0E = "#9d8af7"
base0F = "#efefef"

# --- Completion widget ---

# May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = base05
c.colors.completion.odd.bg = base00
c.colors.completion.even.bg = base08

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = base0F
c.colors.completion.category.bg = base08
c.colors.completion.category.border.top = base01
c.colors.completion.category.border.bottom = base01
c.colors.completion.item.selected.fg = base00
c.colors.completion.item.selected.bg = base02
c.colors.completion.item.selected.border.top = base07
c.colors.completion.item.selected.border.bottom = base02
c.colors.completion.item.selected.match.fg = base0F
c.colors.completion.match.fg = base0A
# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = base02
# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = base00

# --- Context menu ---

c.colors.contextmenu.disabled.bg = base00
c.colors.contextmenu.disabled.fg = base01
# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = base08
c.colors.contextmenu.menu.fg =  base0F
c.colors.contextmenu.selected.bg = base02
c.colors.contextmenu.selected.fg = base00

# --- Downloads ---

c.colors.downloads.bar.bg = base00
c.colors.downloads.start.fg = base00
c.colors.downloads.start.bg = base0D
c.colors.downloads.stop.fg = base00
c.colors.downloads.stop.bg = base0C
c.colors.downloads.error.fg = base09

# --- Hints ---

c.colors.hints.fg = base0E
# Note that you can use a `rgba(...)` value for transparency.
c.colors.hints.bg = base00
c.colors.hints.match.fg = base05
c.colors.keyhint.fg = base05
# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = base05
c.colors.keyhint.bg = base00

# --- Messages ---

c.colors.messages.error.fg = base09
c.colors.messages.error.bg = base08
c.colors.messages.error.border = base09
c.colors.messages.warning.fg = base09
c.colors.messages.warning.bg = base00
c.colors.messages.warning.border = base09
c.colors.messages.info.fg = base01
c.colors.messages.info.bg = base00
c.colors.messages.info.border = base00

# --- Prompts ---

c.colors.prompts.fg = base0F
# Border used around UI elements in prompts.
c.colors.prompts.border = base09
c.colors.prompts.bg = base08
c.colors.prompts.selected.bg = base0A
c.colors.prompts.selected.fg = base00

# --- Status bar ---

c.colors.statusbar.normal.fg = base05
c.colors.statusbar.normal.bg = base00
c.colors.statusbar.insert.fg = base08
c.colors.statusbar.insert.bg = base0A
c.colors.statusbar.passthrough.fg = base0A
c.colors.statusbar.passthrough.bg = base00
# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = base0E
# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = base00
c.colors.statusbar.command.fg = base04
c.colors.statusbar.command.bg = base00
c.colors.statusbar.command.private.fg = base0E
c.colors.statusbar.command.private.bg = base01
c.colors.statusbar.caret.fg = base0D
c.colors.statusbar.caret.bg = base00
c.colors.statusbar.caret.selection.fg = base0D
c.colors.statusbar.caret.selection.bg = base00
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

c.colors.tabs.bar.bg = base08
c.colors.tabs.indicator.start = base03
c.colors.tabs.indicator.stop = base0B
c.colors.tabs.indicator.error = base08
c.colors.tabs.odd.fg = base02
c.colors.tabs.odd.bg = base00
c.colors.tabs.even.fg = base03
c.colors.tabs.even.bg = base00
c.colors.tabs.pinned.even.bg = base0F
c.colors.tabs.pinned.even.fg = base00
c.colors.tabs.pinned.odd.bg = base0F
c.colors.tabs.pinned.odd.fg = base00
c.colors.tabs.pinned.selected.even.bg = base02
c.colors.tabs.pinned.selected.even.fg = base00
c.colors.tabs.pinned.selected.odd.bg = base02
c.colors.tabs.pinned.selected.odd.fg = base00

# --- Selected tabs ---
c.colors.tabs.selected.odd.fg = base0A
c.colors.tabs.selected.odd.bg = base08
c.colors.tabs.selected.even.fg = base0A
c.colors.tabs.selected.even.bg = base08
# Default page background when there is none
c.colors.webpage.bg = base00

config.load_autoconfig()

c.completion.height = "32%"
c.downloads.location.directory = "/home/babkock"
c.downloads.location.prompt = False
c.prompt.filebrowser = False
c.input.insert_mode.auto_load = True
c.input.insert_mode.auto_leave = True
c.downloads.prevent_mixed_content = True
c.downloads.position = 'bottom'
c.window.transparent = True
c.content.webgl = True
c.content.xss_auditing = False

# --- Fonts ---

c.fonts.default_family = 'Space Mono Nerd Font'
c.fonts.default_size = '14pt'
c.fonts.messages.error = '14pt Space Mono'
c.fonts.messages.info = '14pt Space Mono Nerd Font'
c.fonts.messages.warning = '14pt Space Mono Nerd Font'
c.fonts.statusbar = '14pt Space Mono Nerd Font'
c.fonts.downloads = '14pt Space Mono Nerd Font'
c.fonts.prompts = '14pt Space Mono Nerd Font'
c.fonts.keyhint = '14pt Space Mono Nerd Font'
c.fonts.hints = '14pt Space Mono Nerd Font'
c.fonts.contextmenu = '14pt Space Mono Nerd Font'
c.fonts.completion.category = 'bold 14pt Space Mono Nerd Font'
c.fonts.completion.entry = '14pt Space Mono Nerd Font'
c.fonts.tabs.selected = 'italic 14pt Space Mono Nerd Font'
c.fonts.tabs.unselected = '14pt Space Mono Nerd Font'
c.fonts.messages.info = 'italic 14pt Space Mono Nerd Font'
c.fonts.messages.error = 'italic 14pt Space Mono Nerd Font'
c.fonts.messages.warning = 'italic 14pt Space Mono Nerd Font'

# --- Appearance ---

c.hints.padding = {
    "left": 3,
    "right": 3,
    "top": 3,
    "bottom": 4
}

c.colors.completion.fg = '#efefef'
c.colors.downloads.start.bg = '#9d8af7'
c.colors.downloads.start.fg = '#000000'
c.colors.downloads.stop.bg = '#4869ee'
c.colors.downloads.stop.fg = '#000000'
c.colors.keyhint.fg = '#f9c65b'

c.tabs.padding = {
    "left": 5,
    "right": 3,
    "top": 3,
    "bottom": 4
}
c.tabs.title.format = "{audio}{current_title}"
c.tabs.last_close = "close"
c.tabs.indicator.width = 0
c.tabs.favicons.scale = 1.0
c.tabs.show_switching_delay = 700

# --- Search engines ---

c.url.start_pages = ["file:///home/babkock/.config/qutebrowser/index.html"]
c.url.searchengines = { 'DEFAULT': 'https://duckduckgo.com/?ia=web&q={}', '!a': 'https://wiki.archlinux.org/index.php?title=Special%3ASearch&search={}', '!g': 'https://google.com/search?hl=en&q={}', '!i': 'https://google.com/search?hl=en&tbm=isch&q={}', '!w': 'https://en.wikipedia.org/w/index.php?title=Special%3ASearch&search={}', '!h': 'https://github.com/search?q={}', '!i': 'https://y.com.sb/search?q={}', '!y': 'https://youtube.com/results?search_query={}', '!n': 'https://yandex.ru/search/?text={}' }

c.fileselect.handler = 'external'
#c.fileselect.single_file.command = ['st', '-e', 'ranger', '--choosefile={}']
c.fileselect.single_file.command = ['foot', '-e', 'nnn', '-d', '-l', '2', '-U', '-D', '-R', '-p', '{}']
#c.fileselect.multiple_files.command = ['st', '-e', 'ranger', '--choosefiles={}']
c.fileselect.multiple_files.command = ['foot', '-e', 'nnn', '-d', '-l', '2', '-U', '-D', '-R', '-p', '{}']

# --- Keybindings: Bookmarks ---

config.bind(',`', 'open https://github.com/Babkock')
config.bind(',1', 'open https://gitlab.com/Babkock/')
config.bind(',2', 'open https://y.com.sb/feed/subscriptions')
config.bind(',3', 'open https://proton.me')
config.bind(',4', 'open https://en.wikipedia.org/wiki/Main_Page')
config.bind(',5', 'open https://passthepopcorn.me')
config.bind(',6', 'open https://empornium.is')
config.bind(',7', 'open https://boards.4channel.org/g/catalog')
config.bind(',8', 'open https://recordsrecordings.bandcamp.com')
config.bind(',9', 'open https://old.reddit.com')
config.bind(',0', 'open https://babkock.github.io')
config.bind(',-', 'open https://www.messenger.com')
config.bind(',=', 'open https://tannerbabcock.com/home')

# --- Keybindings: Stylesheets ---

config.bind(',c', 'config-cycle content.user_stylesheets "" ""')
config.bind(',a', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/4chan.css ""')
config.bind(',b', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/reddit.css ""')
config.bind(',w', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/wikipedia.css ""')
config.bind(',e', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/empornium.css ""')

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
