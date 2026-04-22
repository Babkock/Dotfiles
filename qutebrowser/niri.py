#               __       __
#  ____ ___  __/ /____  / /_  _________ _      __________  _____
# / __ `/ / / / __/ _ \/ __ \/ ___/ __ \ | /| / / ___/ _ \/ ___/
#/ /_/ / /_/ / /_/  __/ /_/ / /  / /_/ / |/ |/ (__  )  __/ /
#\__, /\__,_/\__/\___/_.___/_/   \____/|__/|__/____/\___/_/
#  /_/

c.colors.completion.fg = '#ccefefef'
c.colors.completion.odd.bg = '#88000000'
c.colors.completion.even.bg = '#88000000'

c.colors.completion.category.fg = '#ee87efe8'
c.colors.completion.category.bg = '#88000000'
c.colors.completion.category.border.top = '#88e09690'
c.colors.completion.category.border.bottom = '#88ddff78'
c.colors.completion.item.selected.fg = '#ee000000'
c.colors.completion.item.selected.bg = '#eef36c97'
c.colors.completion.item.selected.border.top = '#eee56f95'
c.colors.completion.item.selected.border.bottom = '#eee56f95'
c.colors.completion.item.selected.match.fg = '#ee000000'
c.colors.completion.match.fg = '#ee93eab9'
c.colors.completion.scrollbar.fg = '#dd6be8fc'
c.colors.completion.scrollbar.bg = '#99101010'

c.colors.tooltip.bg = '#aa000000'
c.colors.tooltip.fg = '#eeffffff'

c.colors.contextmenu.disabled.bg = '#77000000'
c.colors.contextmenu.disabled.fg = '#eeff2800'
c.colors.contextmenu.menu.bg = '#88000000'
c.colors.contextmenu.menu.fg = '#eefefefe'
c.colors.contextmenu.selected.bg = '#ddf36c97'
c.colors.contextmenu.selected.fg = '#ee000000'

c.colors.downloads.bar.bg = '#77000000'
c.colors.downloads.start.fg = '#ee12e5b8'
c.colors.downloads.start.bg = '#00010101'
c.colors.downloads.stop.fg = '#ee93eab9'
c.colors.downloads.stop.bg = '#00010101'
c.colors.downloads.error.fg = '#eeff2800'
c.colors.downloads.system.bg = 'hsv'

c.colors.messages.error.fg = '#eeff2800'
c.colors.messages.error.bg = '#66000000'
c.colors.messages.error.border = '#eee04a00'
c.colors.messages.warning.fg = '#eefdcb46'
c.colors.messages.warning.bg = '#66000000'
c.colors.messages.warning.border = '#eee3af67'
c.colors.messages.info.fg = '#eeffffff'
c.colors.messages.info.bg = '#66000000'
c.colors.messages.info.border = '#99000000'

c.colors.statusbar.normal.fg = '#ee6be8fc'
c.colors.statusbar.normal.bg = '#66000000'
c.colors.statusbar.insert.fg = '#ee000000'
c.colors.statusbar.insert.bg = '#bb93eab9'
c.colors.statusbar.passthrough.fg = '#ee000000'
c.colors.statusbar.passthrough.bg = '#aaefefef'
c.colors.statusbar.private.fg = '#eeefefef'
c.colors.statusbar.private.bg = '#ee770066'
c.colors.statusbar.command.fg = '#eee09690'
c.colors.statusbar.command.bg = '#66000000'
c.colors.statusbar.progress.bg = '#ee6be8fc'

c.colors.statusbar.url.fg = '#eefdcb46'
c.colors.statusbar.url.error.fg = '#eeff2800'
c.colors.statusbar.url.hover.fg = '#ee6be8fc'
c.colors.statusbar.url.success.http.fg = '#eeff2800'
c.colors.statusbar.url.success.https.fg = '#eefdcb46'
c.colors.statusbar.url.warn.fg = '#eeff2800'

c.colors.tabs.bar.bg = '#10000000'
c.colors.tabs.indicator.start = '#eeffe379'
c.colors.tabs.indicator.stop = '#aae0c04c'
c.colors.tabs.indicator.error = '#eee09690'
c.colors.tabs.odd.fg = '#ee93eab9'
c.colors.tabs.odd.bg = '#66000000'
c.colors.tabs.even.fg = '#ee93eab9'
c.colors.tabs.even.bg = '#66000000'
c.colors.tabs.pinned.even.bg = '#66000000'
c.colors.tabs.pinned.even.fg = '#eefefefe'
c.colors.tabs.pinned.odd.bg = '#66000000'
c.colors.tabs.pinned.odd.fg = '#eefefefe'

c.colors.tabs.selected.odd.fg = '#eef36c97'
c.colors.tabs.selected.odd.bg = '#77000000'
c.colors.tabs.selected.even.fg = '#eef36c97'
c.colors.tabs.selected.even.bg = '#77000000'

c.colors.prompts.bg = '#99000000'
c.colors.prompts.fg = '#ffefefef'
c.colors.prompts.border = '1px solid black'
c.colors.prompts.selected.bg = '#aa101010'
c.colors.prompts.selected.fg = '#ffffffff'

c.colors.webpage.darkmode.policy.images = "never"
c.colors.webpage.preferred_color_scheme = "dark"

# Default page background when there is none
c.colors.webpage.bg = '#ffffff'

config.load_autoconfig()

c.completion.height = "30%"
c.completion.web_history.max_items = 20
c.downloads.location.directory = "/home/babkock"
c.downloads.location.prompt = False
c.prompt.filebrowser = False
c.prompt.radius = 40
c.input.insert_mode.auto_load = True
c.input.insert_mode.auto_leave = True
c.downloads.prevent_mixed_content = True
c.downloads.position = "bottom"
c.window.transparent = True
c.completion.timestamp_format = "%a, %b %d %H:%M:%S"
c.completion.scrollbar.width = 18
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
c.content.tls.certificate_errors = "ask-block-thirdparty"
c.content.geolocation = False
c.content.javascript.clipboard = "access"
c.content.prefers_reduced_motion = True
c.hints.radius = 30
c.hints.uppercase = True
c.scrolling.bar = "always"
c.scrolling.smooth = False
c.qt.args = ["stylesheet /home/babkock/.local/share/qutebrowser/fix-tooltips.qss", "enable-gpu-rasterization", "ignore-gpu-blocklist", "use-gl=egl", "enable-accelerated-video-decode"]
c.qt.chromium.experimental_web_platform_features = "always"

c.content.blocking.method = "adblock"
c.statusbar.widgets = ["keypress", "search_match", "url", "progress", "clock"]

# --- Fonts ---

c.fonts.default_family = 'GoMono Nerd Font Propo'
c.fonts.default_size = '16pt'
c.fonts.messages.error = '16pt GoMono Nerd Font'
c.fonts.messages.info = '16pt GoMono Nerd Font'
c.fonts.messages.warning = '16pt GoMono Nerd Font'
c.fonts.statusbar = '16pt GoMono Nerd Font Propo'
c.fonts.downloads = '16pt GoMono Nerd Font Propo'
c.fonts.prompts = '16pt Victor Mono Nerd Font'
c.fonts.keyhint = '16pt GoMono Nerd Font'
c.fonts.hints = '16pt GoMono Nerd Font'
c.fonts.contextmenu = '16pt GoMono Nerd Font Propo'
c.fonts.completion.category = 'bold 17pt GoMono Nerd Font Propo'
c.fonts.tooltip = '16pt Victor Mono Nerd Font'
c.fonts.completion.entry = '16pt GoMono Nerd Font Propo'
c.fonts.tabs.selected = 'italic 16pt GoMono Nerd Font Propo'
c.fonts.tabs.unselected = '16pt GoMono Nerd Font Propo'
c.fonts.messages.info = 'italic 16pt GoMono Nerd Font Propo'
c.fonts.messages.error = 'italic 16pt GoMono Nerd Font Propo'
c.fonts.messages.warning = 'italic 16pt GoMono Nerd Font Propo'

# --- Appearance ---

c.hints.padding = {
    "left": 4,
    "right": 4,
    "top": 3,
    "bottom": 4
}

c.colors.completion.fg = '#ccfedd83'
c.colors.downloads.start.fg = '#bbfe0219'
c.colors.downloads.start.bg = '#00000000'
c.colors.downloads.stop.bg = '#00000000'
c.colors.downloads.stop.fg = '#eea9df11'

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
c.auto_save.interval = 20000
c.input.insert_mode.plugins = True

c.completion.cmd_history_max_items = 30
c.completion.favorite_paths = ["file:///home/babkock/.config/qutebrowser/index.html"]

# --- Search engines ---

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

config.bind(',-', 'navigate prev')
config.bind(',=', 'navigate next')
config.bind(',/', 'navigate increment')
config.bind(',.', 'navigate decrement')

# --- Keybindings: UI elements ---
config.bind(',m', 'config-cycle fonts.completion.entry "17pt GoMono Nerd Font Propo" "15pt GoMono Nerd Font Propo"')
config.bind(',n', 'config-cycle fonts.completion.category "17pt GoMono Nerd Font Propo" "15pt GoMono Nerd Font Propo"')
config.bind(',x', 'config-cycle fonts.statusbar "18pt GoMono Nerd Font Propo" "16pt GoMono Nerd Font Propo"')

# --- Keybindings: Stylesheets ---

config.bind(',c', 'config-cycle content.user_stylesheets "" ""')
config.bind(',q', 'config-cycle content.user_stylesheets ~/.config/qutebrowser/qutebrowser.css ""')


# --- Keybindings: UI ---

config.bind('M', 'hint links spawn mpv --vo=gpu --hwdec=vaapi --ytdl-format=\"bestvideo[height<=720]+bestaudio\" --audio-device=\"pulse/alsa_output.pci-0000_00_1f.3.analog-stereo\" --script-opts=ytdl_hook-ytdl_path=yt-dlp \"{hint-url}\"')
config.bind('xx', 'config-cycle statusbar.show never never')
config.bind('yy', 'config-cycle statusbar.show always always')
config.bind('xy', 'config-cycle tabs.show switching switching')
config.bind('yx', 'config-cycle tabs.show multiple multiple')
config.bind('zz', 'history-clear')
config.bind('l', 'tab-pin')
config.bind('.', 'download-cancel')
