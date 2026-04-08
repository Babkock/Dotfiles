#               __       __
#  ____ ___  __/ /____  / /_  _________ _      __________  _____
# / __ `/ / / / __/ _ \/ __ \/ ___/ __ \ | /| / / ___/ _ \/ ___/
#/ /_/ / /_/ / /_/  __/ /_/ / /  / /_/ / |/ |/ (__  )  __/ /
#\__, /\__,_/\__/\___/_.___/_/   \____/|__/|__/____/\___/_/
#  /_/

# --- Colors ---
# Match with Xresources
base00 = "#000000"
base01 = "#fe0219"
base02 = "#a9df11"
base03 = "#f4df23"
base04 = "#6264fe"
base05 = "#ff4de7"
base06 = "#53f7f9"
base07 = "#fefefe"
base08 = "#101010"
base09 = "#ee0009"
base0A = "#99cf01"
base0B = "#e4cf13"
base0C = "#7b75ea"
base0D = "#af38db"
base0E = "#43e7e9"
base0F = "#fefefe"

# --- Completion widget ---

# May be a single color to use for
# all columns or a list of three colors, one for each column.
c.colors.completion.fg = '#aaead972'
c.colors.completion.odd.bg = '#66000000'
c.colors.completion.even.bg = '#66000000'

# Foreground color of completion widget category headers.
c.colors.completion.category.fg = '#cc97b7dc'
c.colors.completion.category.bg = '#6627476c'
c.colors.completion.category.border.top = '#7787a7cc'
c.colors.completion.category.border.bottom = '#7787a7cc'
c.colors.completion.item.selected.fg = base00
c.colors.completion.item.selected.bg = '#ddd2bd75'
c.colors.completion.item.selected.border.top = '#ccc2ad65'
c.colors.completion.item.selected.border.bottom = '#ccc2ad65'
c.colors.completion.item.selected.match.fg = '#ccf9406a'
c.colors.completion.match.fg = '#ccf9406a'
# Color of the scrollbar handle in the completion view.
c.colors.completion.scrollbar.fg = '#9997b7dc'
# Color of the scrollbar in the completion view.
c.colors.completion.scrollbar.bg = '#66000000'

c.colors.tooltip.bg = '#99000000'
c.colors.tooltip.fg = '#eeefefef'

# --- Context menu ---

c.colors.contextmenu.disabled.bg = '#77000000'
c.colors.contextmenu.disabled.fg = '#ddf9406a'
# Background color of the context menu. If set to null, the Qt default is used.
c.colors.contextmenu.menu.bg = '#66000000'
c.colors.contextmenu.menu.fg =  base0F
c.colors.contextmenu.selected.bg = '#ddf27248'
c.colors.contextmenu.selected.fg = base00

# --- Downloads ---

c.colors.downloads.bar.bg = '#77000000'
#c.colors.downloads.start.fg = base00
#c.colors.downloads.start.bg = base0D
c.colors.downloads.start.fg = '#99f9406a'
c.colors.downloads.start.bg = '#00000000'
c.colors.downloads.stop.fg = '#99abc584'
c.colors.downloads.stop.bg = '#00000000'
c.colors.downloads.error.fg = base09
c.colors.downloads.system.bg = 'hsv'

# --- Hints ---

c.colors.hints.fg = base0E
# Note that you can use a `rgba(...)` value for transparency.
c.colors.hints.bg = '#88000000'
c.colors.hints.match.fg = base05
c.colors.keyhint.fg = base05
# Highlight color for keys to complete the current keychain.
c.colors.keyhint.suffix.fg = base05
c.colors.keyhint.bg = '#88000000'

# --- Messages ---

c.colors.messages.error.fg = '#bbf9406a'
c.colors.messages.error.bg = '#66000000'
c.colors.messages.error.border = '#aae9305a'
c.colors.messages.warning.fg = '#bbd2bd75'
c.colors.messages.warning.bg = '#77000000'
c.colors.messages.warning.border = '#aac2ad65'
c.colors.messages.info.fg = '#bbfefefe'
c.colors.messages.info.bg = '#66000000'
c.colors.messages.info.border = '#99000000'

# --- Prompts ---

c.colors.prompts.fg = base0F
# Border used around UI elements in prompts.
c.colors.prompts.border = '#ef39305a'
c.colors.prompts.bg = '#88000000'
c.colors.prompts.selected.bg = '#88000000'
c.colors.prompts.selected.fg = '#bbefefef'

# --- Status bar ---

c.colors.statusbar.normal.fg = '#bb97b7dc'
c.colors.statusbar.normal.bg = '#66000000'
c.colors.statusbar.insert.fg = '#bb000000'
c.colors.statusbar.insert.bg = '#999bb474'
c.colors.statusbar.passthrough.fg = '#bbe26239'
c.colors.statusbar.passthrough.bg = '#88000000'
# Foreground color of the statusbar in private browsing mode.
c.colors.statusbar.private.fg = '#bb000000'
# Background color of the statusbar in private browsing mode.
c.colors.statusbar.private.bg = '#99e26239'
c.colors.statusbar.command.fg = '#bbd2bd75'
c.colors.statusbar.command.bg = '#66000000'
c.colors.statusbar.command.private.fg = '#bb000000'
c.colors.statusbar.command.private.bg = '#99e26239'
c.colors.statusbar.caret.fg = base0D
c.colors.statusbar.caret.bg = '#66000000'
c.colors.statusbar.caret.selection.fg = base0D
c.colors.statusbar.caret.selection.bg = '#66000000'
c.colors.statusbar.progress.bg = '#aa97b7dc'

# --- Status bar URL ---

c.colors.statusbar.url.fg = '#bbf27248'
c.colors.statusbar.url.error.fg = base08
# Foreground color of the URL in the statusbar for hovered links.
c.colors.statusbar.url.hover.fg = '#bbd2bd75'
c.colors.statusbar.url.success.http.fg = '#bbf27248'
c.colors.statusbar.url.success.https.fg = '#bbf27248'
c.colors.statusbar.url.warn.fg = '#bbefefef'

# --- Tabs ---

c.colors.tabs.bar.bg = '#12000000'
c.colors.tabs.indicator.start = base03
c.colors.tabs.indicator.stop = base0B
c.colors.tabs.indicator.error = base08
c.colors.tabs.odd.fg = '#bbf9406a'
c.colors.tabs.odd.bg = '#66000000'
c.colors.tabs.even.fg = '#bbf9406a'
c.colors.tabs.even.bg = '#66101010'
c.colors.tabs.pinned.even.bg = '#66101010'
c.colors.tabs.pinned.even.fg = '#bbd2bd75'
c.colors.tabs.pinned.odd.bg = '#66000000'
c.colors.tabs.pinned.odd.fg = '#bbd2bd75'
c.colors.tabs.pinned.selected.even.bg = '#bbabc584'
c.colors.tabs.pinned.selected.even.fg = base00
c.colors.tabs.pinned.selected.odd.bg = '#bbabc584'
c.colors.tabs.pinned.selected.odd.fg = base00

# --- Selected tabs ---
c.colors.tabs.selected.odd.fg = '#bbabc584'
c.colors.tabs.selected.odd.bg = '#69000000'
c.colors.tabs.selected.even.fg = '#bbabc584'
c.colors.tabs.selected.even.bg = '#69101010'
# Default page background when there is none
c.colors.webpage.bg = '#ffffff'

config.load_autoconfig()

c.completion.height = "30%"
c.downloads.location.directory = "/home/babkock"
c.downloads.location.prompt = False
c.prompt.filebrowser = False
c.prompt.radius = 40
c.input.insert_mode.auto_load = True
c.input.insert_mode.auto_leave = True
c.downloads.prevent_mixed_content = True
c.downloads.position = "bottom"
c.window.transparent = True
c.completion.web_history.max_items = 30
c.completion.timestamp_format = "%a, %b %d %H:%M:%S"
c.completion.scrollbar.width = 18
c.content.default_encoding = "utf-8"
c.content.blocking.method = "adblock"
c.content.cookies.accept = "all"
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
c.hints.radius = 30
c.hints.uppercase = True
c.scrolling.bar = "always"
c.scrolling.smooth = False
c.qt.args = ["stylesheet /home/babkock/.local/share/qutebrowser/fix-tooltips.qss", "enable-gpu-rasterization", "use-gl=egl", "ignore-gpu-blocklist", "enable-accelerated-video-decode"]
c.qt.chromium.experimental_web_platform_features = "always"
c.statusbar.widgets = ["keypress", "search_match", "url", "progress", "clock"]
c.input.insert_mode.plugins = True

# --- Fonts ---

c.fonts.default_family = 'GoMono Nerd Font'
c.fonts.default_size = '16pt'
c.fonts.messages.error = '16pt GoMono Nerd Font'
c.fonts.messages.info = '16pt GoMono Nerd Font'
c.fonts.messages.warning = '16pt GoMono Nerd Font'
c.fonts.statusbar = '16pt GoMono Nerd Font'
c.fonts.downloads = '16pt GoMono Nerd Font'
c.fonts.prompts = '16pt GoMono Nerd Font'
c.fonts.keyhint = '16pt GoMono Nerd Font'
c.fonts.hints = '16pt GoMono Nerd Font'
c.fonts.contextmenu = '17pt GoMono Nerd Font'
c.fonts.completion.category = 'bold 16pt GoMono Nerd Font'
c.fonts.tooltip = '15pt Victor Mono Nerd Font'
c.fonts.completion.entry = '16pt GoMono Nerd Font'
c.fonts.tabs.selected = 'italic 16pt GoMono Nerd Font'
c.fonts.tabs.unselected = '16pt GoMono Nerd Font'
c.fonts.messages.info = 'italic 16pt GoMono Nerd Font'
c.fonts.messages.error = 'italic 16pt GoMono Nerd Font'
c.fonts.messages.warning = 'italic 16pt GoMono Nerd Font'

# --- Appearance ---

c.hints.padding = {
    "left": 4,
    "right": 4,
    "top": 3,
    "bottom": 4
}

c.colors.completion.fg = '#ccfedd83'
c.colors.downloads.start.fg = '#bbf9406a'
c.colors.downloads.start.bg = '#33000000'
c.colors.downloads.stop.bg = '#33000000'
c.colors.downloads.stop.fg = '#eeabc584'

c.tabs.mode_on_change = 'restore'
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
c.tabs.mode_on_change = "restore"
c.tabs.indicator.width = 0
c.tabs.favicons.scale = 1.3
c.tabs.show_switching_delay = 700
c.tabs.pinned.frozen = False
c.completion.shrink = True
c.auto_save.interval = 40000

# --- Search engines ---

c.url.open_base_url = True
c.url.start_pages = ["file:///home/babkock/.config/qutebrowser/index.html"]
c.url.searchengines = {
    'DEFAULT': 'https://4get.ca/web?s={}',
    '!a': 'https://wiki.archlinux.org/index.php?title=Special%3ASearch&search={}',
    '!b': 'https://bandcamp.com/search?q={}',
    '!d': 'https://duckduckgo.com/?ia=web&q={}',
    '!e': 'https://www.empornium.sx/torrents.php?taglist={}',
    '!f': 'https://find.4chan.org/?q={}',
    '!g': 'https://google.com/search?hl=en&q={}',
    '!h': 'https://github.com/search?q={}',
    '!i': 'https://google.com/search?hl=en&tbm=isch&q={}',
    '!l': 'https://letterboxd.com/search/{}/?adult',
    '!m': 'https://google.com/maps?q={}',
    '!n': 'https://yandex.ru/search/?text={}',
    '!o': 'https://odysee.com/$/search?q={}',
    '!p': 'https://orpheus.network/torrents.php?searchstr={}',
    '!r': 'https://www.morethantv.me/show/search?searchtext={}',
    '!t': 'https://www.tumblr.com/search/{}?src=typed_query',
    '!v': 'https://voidlinux.org/packages/?arch=x86_64&q={}',
    '!w': 'https://en.wikipedia.org/w/index.php?title=Special%3ASearch&search={}',
    '!y': 'https://youtube.com/results?search_query={}',
    '!z': 'https://4get.ca/images?s={}'
}

c.fileselect.handler = 'external'
#c.fileselect.single_file.command = ['st', '-e', 'ranger', '--choosefile={}']
c.fileselect.single_file.command = ['footclient', '-e', 'nnn', '-d', '-l', '2', '-U', '-D', '-R', '-i', '-x', '-GQ', '-p', '{}']
#c.fileselect.multiple_files.command = ['st', '-e', 'ranger', '--choosefiles={}']
c.fileselect.multiple_files.command = ['footclient', '-e', 'nnn', '-d', '-l', '2', '-U', '-D', '-R', '-i', '-x', '-GQ', '-p', '{}']
c.fileselect.folder.command = ['footclient', '-e', 'ranger', '--choosedir={}']

config.bind(',-', 'navigate prev')
config.bind(',=', 'navigate next')
config.bind(',/', 'navigate increment')
config.bind(',.', 'navigate decrement')

# --- Keybindings: Stylesheets ---

config.bind(',c', 'config-cycle content.user_stylesheets "" ""')
config.bind(',q', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/qutebrowser.css ""')

config.bind(',z', 'config-cycle fonts.default_size "16pt" "14pt"')
config.bind(',x', 'config-cycle fonts.statusbar "16pt GoMono Nerd Font" "14pt GoMono Nerd Font"')
config.bind(',p', 'config-cycle fonts.tabs.selected "italic 16pt GoMono Nerd Font" "italic 14pt GoMono Nerd Font"')
config.bind(',n', 'config-cycle fonts.completion.category "17pt GoMono Nerd Font" "14pt GoMono Nerd Font"')
config.bind(',m', 'config-cycle fonts.completion.entry "17pt GoMono Nerd Font" "14pt GoMono Nerd Font"')

# --- Keybindings: UI ---

config.bind('M', 'hint links spawn mpv --vo=gpu --hwdec=vaapi --ytdl-format=\"bestvideo[height<=720]+bestaudio\" --audio-device=\"pulse/alsa_output.pci-0000_00_1f.3.analog-stereo\" --script-opts=ytdl_hook-ytdl_path=yt-dlp \"{hint-url}\"')
config.bind('xx', 'config-cycle statusbar.show never never')
config.bind('yy', 'config-cycle statusbar.show always always')
config.bind('xy', 'config-cycle tabs.show switching switching')
config.bind('yx', 'config-cycle tabs.show multiple multiple')
config.bind('zz', 'history-clear')
config.bind('l', 'tab-pin')
config.bind('.', 'download-cancel')
