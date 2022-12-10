;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Tanner Babcock"
      user-mail-address "babkock@protonmail.com")

(setq gc-cons-threshold 100000000
      make-backup-files nil
      auto-save-default nil
      create-lockfiles nil)
(set-charset-priority 'unicode)
(prefer-coding-system 'utf-8-unix)
(global-set-key (kbd "C-<wheel-up>") 'text-scale-increase)
(global-set-key (kbd "C-<wheel-down>") 'text-scale-decrease)
(setq ranger-show-hidden t)
(setq scroll-conservatively 101
      mouse-wheel-scroll-amount '(3 ((shift) . 3))
      mouse-wheel-progressive-speed t
      mouse-wheel-follow-mouse 't
      writeroom-width 100
      writeroom-mode-line t
      writeroom-extra-line-spacing 0.1
      writeroom-maximize-window t
      +zen-text-scale 1)

; (setq doom-theme 'doom-tomorrow-night)
(setq doom-theme 'doom-peacock)
(setq which-key-idle-delay 0.3
      which-key-idle-secondary-delay 0.05
      +doom-dashboard-banner-padding '(0 . 1))

(setq doom-font (font-spec :family "Space Mono Nerd Font" :size 18 :height 1.0)
      doom-big-font (font-spec :family "Space Mono Nerd Font" :size 20 :height 1.0)
      doom-unicode-font (font-spec :family "Space Mono Nerd Font" :size 18 :height 1.0)
      doom-variable-pitch-font (font-spec :family "NotoSerif Nerd Font" :size 18 :height 1.1))
(set-frame-font "Space Mono Nerd Font 18" nil t)

(custom-set-faces
  '(mode-line ((t (:family "Space Mono Nerd Font" :size 18))))
  '(mode-line-active ((t (:family "Space Mono Nerd Font" :size 18))))
  '(mode-line-inactive ((t (:family "Space Mono Nerd Font" :size 18)))))

(setq-default ls-lisp-format-time-list '("%m/%d/%Y %I:%M:%S" "%m/%d/%Y %I:%M:%S"))
(setq ls-lisp-use-localized-time-format t
      display-time-format "%I:%M"
      display-time-default-load-average nil
      display-line-numbers-type 'relative
      confirm-kill-emacs t)
(setq-default shell-file-name "/bin/zsh")

(add-hook! 'writeroom-mode-enable-hook 'mixed-pitch-mode)
(add-hook! 'writeroom-mode-disable-hook 'mixed-pitch-mode)

(set-frame-parameter (selected-frame) 'alpha '(70 70))
(add-to-list 'default-frame-alist '(alpha 70 70))
(add-hook! 'dired-mode-hook 'all-the-icons-dired-mode)

(setq warning-minimum-level :emergency)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(after! modeline
    (setq doom-modeline-buffer-file-name-style 'relative-to-project
          doom-modeline-icon (display-graphic-p)
          doom-modeline-major-mode-icon t
          doom-modeline-major-mode-color-icon t
          doom-modeline-env-version t
          doom-modeline-persp-icon t
          doom-modeline-unicode-fallback nil
          doom-modeline-height 30
          doom-modeline-hud t
          doom-modeline-buffer-modification-icon nil))
(setq-default doom-modeline-major-mode-icon t
              doom-modeline-major-mode-color-icon t
              doom-modeline-buffer-file-name-style 'relative-to-project
              doom-modeline-env-version t
              doom-modeline-persp-icon t
              doom-modeline-unicode-fallback nil
              doom-modeline-hud t
              doom-modeline-height 30
              doom-modeline-buffer-modification-icon nil)

(after! org
    (require 'org-bullets)
    (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
    (setq org-directory "~/org/"
          org-agenda-files '("~/org/todo.org" "~/org/video.org")
          org-default-notes-file (expand-file-name "notes.org" org-directory)
          org-superstar-headline-bullets-list '("◉" "● " "○ " "◆" "●" "○" "◆")
          org-superstar-item-bullet-alist '((?+ . ?➤) (?- . ?✦))
          org-ellipsis "  "
          org-catch-invisible-edits 'smart
          org-log-done 'time
          org-journal-dir "~/org/journal/"
          org-hide-emphasis-markers t
          org-support-shift-select t)
    (custom-set-faces!
        '(org-document-title :height 1.3)
        '(org-level-1 :inherit outline-1 :weight extra-bold :height 1.35)
        '(org-level-2 :inherit outline-2 :weight bold :height 1.15)
        '(org-level-3 :inherit outline-3 :weight bold :height 1.12)
        '(org-level-4 :inherit outline-4 :weight bold :height 1.09)
        '(org-level-5 :inherit outline-5 :weight bold :height 1.06)
        '(org-level-6 :inherit outline-6 :weight semi-bold :height 1.03)
        '(org-level-7 :inherit outline-7 :weight semi-bold)
        '(org-level-8 :inherit outline-8 :weight semi-bold)))

(font-lock-add-keywords 'org-mode
    '(("^ *\\([-]\\) "
        (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(after! treemacs
    (setq doom-themes-treemacs-theme "doom-colors")
    (setq doom-themes-treemacs-enable-variable-pitch t))

(after! doom-themes
    (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
    (doom-themes-org-config)
    (doom-themes-visual-bell-config))

(custom-set-faces!
    '(font-lock-comment-face :slant italic)
    '(font-lock-keyword-face :slant italic))

(after! magit
    (custom-set-faces!
        '(magit-log-author :foreground "#f46")
        '(magit-log-date :foreground "#7fc")
        '(magit-hash :foreground "#0f3")
        '(magit-filename :foreground "#ff3")
        '(magit-branch-current :foreground "#e96"))
    (add-hook! magit-status-mode-hook (hide-mode-line-mode 1)))

(setq config-org-file-name "config.org"
      config-org-directory "~/.doom.d/"
      foot-org-file-name "foot.org"
      foot-org-directory "~/.config/foot/")

(defun open-config-org ()
    "Open your private Config.org file."
    (interactive)
    (find-file (expand-file-name config-org-file-name config-org-directory)))

(defun open-foot-org ()
    "Open the Foot configuration file."
    (interactive)
    (find-file (expand-file-name foot-org-file-name foot-org-directory)))

(defun open-tbcom ()
    "Opens TBcom repository"
    (interactive)
    (dired "~/TBcom"))

(setq-default +doom-dashboard-menu-sections
    '(("Kill All Buffers"
        :icon (all-the-icons-octicon "alert" :face 'all-the-icons-red)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action doom/kill-all-buffers)
      ("Open Recent File"
        :icon (all-the-icons-faicon "clock-o" :face 'all-the-icons-blue)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action consult-recent-file)
      ("Open Project"
        :icon (all-the-icons-octicon "repo" :face 'all-the-icons-red)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action projectile-find-file)
      ("Open TBcom"
        :icon (all-the-icons-alltheicon "git" :face 'all-the-icons-pink)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action open-tbcom)
      ("Open Elfeed"
        :icon (all-the-icons-faicon "rss" :face 'all-the-icons-yellow)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action elfeed)
      ("Open config.org"
        :icon (all-the-icons-faicon "cogs" :face 'all-the-icons-green)
        :when (file-directory-p doom-private-dir)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action open-config-org)
      ("Doom Reload"
        :icon (all-the-icons-faicon "refresh" :face 'all-the-icons-orange)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action doom/reload)
      ("Change Theme"
        :icon (all-the-icons-faicon "paint-brush" :face 'all-the-icons-purple)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action consult-theme)
      ("Music Player"
        :icon (all-the-icons-faicon "music" :face 'all-the-icons-cyan)
        :face (:inherit (doom-dashboard-menu-title bold))
        :action mpdel-playlist-open))
)

(require 'elfeed-goodies)
(after! elfeed
    (defun elfeed-search-format-date (date) (format-time-string "%m/%d/%Y %I:%M:%S" (seconds-to-time date)))
    (setq elfeed-search-filter "@2-weeks-ago +unread"
          elfeed-show-entry-switch #'pop-to-buffer
          elfeed-curl-max-connections 29
          elfeed-curl-timeout 14)
    (defface git-entry
        '((t :foreground "#f44"))
        "Entry for Git")
    (defface reddit-entry
        '((t :foreground "#ff3"))
        "Entry for Reddit")
    (defface youtube-entry
        '((t :foreground "#f46"))
        "Entry for YouTube")
    (defface torrents-entry
        '((t :foreground "#bfafac"))
        "Entry for torrents")
    (defface stack-entry
        '((t :foreground "#0f2"))
        "Entry for Stack")
    (defface news-entry
        '((t :foreground "#b4f"))
        "Entry for News")
    (defface tumblr-entry
        '((t :foreground "#28f"))
        "Entry for Tumblr")
    (defface tech-entry
        '((t :foreground "#f90"))
        "Entry for Tech")

    (push '(git git-entry) elfeed-search-face-alist)
    (push '(reddit reddit-entry) elfeed-search-face-alist)
    (push '(youtube youtube-entry) elfeed-search-face-alist)
    (push '(torrents torrents-entry) elfeed-search-face-alist)
    (push '(stack stack-entry) elfeed-search-face-alist)
    (push '(news news-entry) elfeed-search-face-alist)
    (push '(tumblr tumblr-entry) elfeed-search-face-alist)
    (push '(tech tech-entry) elfeed-search-face-alist)

    (custom-set-faces!
        '(elfeed-search-feed-face :foreground "#2f3")
        '(elfeed-search-tag-face :foreground "#ee0")
        '(elfeed-search-title-face :inherit variable-pitch :slant italic)
        '(elfeed-search-date-face :foreground "#0ef")
        '(elfeed-search-last-update-face :foreground "#2f3"))
    (add-hook! 'elfeed-search-update-hook (hide-mode-line-mode 1))
    (add-hook! 'elfeed-search-mode-hook (hide-mode-line-mode 1))
    (add-hook! 'elfeed-show-mode-hook (hide-mode-line-mode 1) (hl-line-mode -1))
    (add-hook! 'elfeed-search-mode-hook #'elfeed-update)
    (add-hook! 'elfeed-show-mode-hook #'elfeed-update)
    (add-hook! 'elfeed-show-mode-hook 'visual-line-mode))

(after! elfeed-goodies
    (elfeed-goodies/setup)
    (setq elfeed-goodies/entry-pane-size 0.5
          elfeed-goodies/powerline-default-separator 'wave
          elfeed-goodies/show-mode-padding 1
          elfeed-goodies/feed-source-column-width 20))

(after! circe
    (custom-set-faces!
        '(circe-prompt-face :foreground "#0ef")
        '(circe-server-face :foreground "#ee0")
        '(circe-my-message-face :weight bold :foreground "#f44")
        '(circe-originator-face :foreground "b4f")))

(custom-set-faces!
    '(mpdel-tablist-song-name-face :inherit variable-pitch :weight bold :foreground "#0ef")
    '(mpdel-tablist-artist-face :inherit variable-pitch :weight bold :foreground "#f44")
    '(mpdel-tablist-album-face :inherit variable-pitch :weight bold :slant italic :foreground "#b4f")
    '(mpdel-tablist-track-face :inherit variable-pitch :weight bold :foreground "#0e0")
    '(mpdel-playlist-current-song-face :inherit variable-pitch :weight bold :slant italic :foreground "#efefef" :background "#000")
    '(mpdel-tablist-disc-face :foreground "#ef0")
    '(mpdel-tablist-date-face :foreground "#ee0")
    '(header-line :height 1.1))
(after! mpdel
    (setq libmpdel-hostname "127.0.0.2")
    (require 'mpdel)
    (setq mpdel-prefix-key (kbd "SPC DEL"))
    (mpdel-mode))

;(after! emms
;    (evil-collection-emms-setup)
;    (setq emms-source-file-default-directory (expand-file-name "~/Music/"))
;    (setq emms-player-mpd-server-name "127.0.0.2"
;          emms-player-mpd-server-port "6600"
;          emms-player-mpd-music-directory "~/Music/")
;    (add-to-list 'emms-info-functions 'emms-info-mpd)
;    (add-to-list 'emms-player-list 'emms-player-mpd)
;    (emms-player-mpd-connect))
;(add-hook! 'emms-playlist-cleared-hook 'emms-player-mpd-clear)

(map!
    :m "C-h" #'evil-window-left
    :m "C-j" #'evil-window-down
    :m "C-k" #'evil-window-up
    :m "C-l" #'evil-window-right
    :m "C-w" #'evil-window-vsplit
    :m "C-o" #'evil-window-split
)

(setq +doom-dashboard-mode-map (make-sparse-keymap))
(map! :map +doom-dashboard-mode-map
    :desc "Find File" :ne "f" #'find-file
    :desc "Recent Files" :ne "r" #'consult-recent-file
    :desc "Doom Reload" :ne "R" #'doom/reload
    :desc "Open Project" :ne "p" #'projectile-find-file
    :desc "Config Dir" :ne "C" #'doom/open-private-config
    :desc "Open config.org" :ne "c" #'open-config-org
    :desc "Open init.org" :ne "i" (cmd! (find-file (expand-file-name "init.org" doom-private-dir)))
    :desc "Open ZSH Config" :ne "z" (cmd! (find-file "~/.zsh.org"))
    :desc "Open ZSH Theme" :ne "Z" (cmd! (find-file "~/.oh-my-zsh/themes/babkockicon.zsh-theme"))
    :desc "Open Qutebrowser Config" :ne "q" (cmd! (find-file "~/.config/qutebrowser/config.org"))
    :desc "Open Polybar Config" :ne "o" (cmd! (find-file "~/.config/polybar/config.org"))
    :desc "Open Foot Config" :ne "F" #'open-foot-org
    :desc "Open Waybar Config" :ne "w" (cmd! (find-file "~/.config/waybar/config.org"))
    :desc "Open Waybar Style" :ne "W" (cmd! (find-file "~/.config/waybar/style.org"))
    :desc "Open BSPWM Config" :ne "m" (cmd! (find-file "~/.config/bspwm/bspwm.org"))
    :desc "Open MPV Config" :ne "M" (cmd! (find-file "~/.config/mpv/mpv.conf"))
    :desc "Open Dotfile" :ne "d" (cmd! (doom-project-find-file "~/.config/"))
    :desc "Open TBcom" :ne "t" #'open-tbcom
    :desc "Open Dotfiles" :ne "D" (cmd! (doom-project-find-file "~/git/Dotfiles/"))
    :desc "Open Dotfiles Fetch" :ne "h" (cmd! (find-file "~/git/Dotfiles/fetch.org"))
    :desc "Open Dotfiles README" :ne "H" (cmd! (find-file "~/git/Dotfiles/README.org"))
    :desc "Open Xresources" :ne "X" (cmd! (find-file "~/.Xresources"))
    :desc "Open .xinitrc" :ne "x" (cmd! (find-file "~/.xinitrc"))
    :desc "Increase Font Size" :ne "+" #'doom/increase-font-size
    :desc "Decrease Font Size" :ne "-" #'doom/decrease-font-size
    :desc "Open MPDel Playlist" :ne ";" #'mpdel-playlist-open
    :desc "Open MPDel Browser" :ne "/" #'mpdel-browser-open
    :desc "Toggle Play/Pause" :ne "," #'libmpdel-playback-play-pause
    :desc "Open MPDel Artists" :ne "g" #'mpdel-core-open-artists
    :desc "Play Next Song" :ne "]" #'libmpdel-playback-next
    :desc "Play Previous Song" :ne "[" #'libmpdel-playback-previous
    :desc "Clear Current Playlist" :ne "O" #'mpdel-core-replace-current-playlist
    :desc "Open Circe" :ne "." #'circe
    :desc "Agenda" :ne "a" #'org-agenda
    :desc "Open todo.org" :ne "V" (cmd! (find-file "~/org/todo.org"))
    :desc "Kill All Buffers" :ne "k" #'doom/kill-all-buffers
    :desc "Switch Buffers" :ne "b" #'consult-buffer
    :desc "Previous Buffer" :ne "P" #'previous-buffer
    :desc "Open Elfeed" :ne "e" #'elfeed
    :desc "Open elfeed.org" :ne "E" (cmd! (find-file "~/org/elfeed.org"))
    :desc "Reset Elfeed" :ne "n" #'elfeed-db-unload
    :desc "Set Theme" :ne "T" #'consult-theme
    :desc "Open video.org" :ne "v" (cmd! (find-file "~/org/video.org"))
    :desc "Quit" :ne "Q" #'save-buffers-kill-terminal)

(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)

;(setq mpdel-nav-mode-map (make-sparse-keymap))

(after! elfeed-goodies
    (evil-define-key 'normal elfeed-show-mode-map
        (kbd "J") 'elfeed-goodies/split-show-next
        (kbd "K") 'elfeed-goodies/split-show-prev)
    (evil-define-key 'normal elfeed-search-mode-map
        (kbd "J") 'elfeed-goodies/split-show-next
        (kbd "K") 'elfeed-goodies/split-show-prev
        (kbd "q") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +tumblr +unread"))
        (kbd "e") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +reddit +unread"))
        (kbd "p") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +stack +unread"))
        (kbd "m") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +media +unread"))
        (kbd "o") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +news +unread"))
        (kbd "i") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +git +unread"))
        (kbd "x") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +youtube +unread"))
        (kbd "n") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +torrents +unread"))
        (kbd "v") (lambda () (interactive) (elfeed-search-set-filter "@2-weeks-ago +tech +unread"))
        (kbd "g") (lambda () (interactive) (elfeed-search-browse-url)))
    (map! :map +elfeed-search-mode-map
        :desc "Show selected entry" :ne "RET" #'elfeed-search-show-entry
        :desc "Kill buffer" :ne "q" #'elfeed-kill-buffer
        :desc "Set filter" :ne "S" #'elfeed-search-set-filter
        :desc "Clear filter" :ne "c" #'elfeed-search-clear-filter)
    (map! :map +elfeed-show-mode-map
        :desc "Show selected entry" :ne "RET" #'elfeed-search-show-entry
        :desc "Set filter" :ne "S" #'elfeed-search-set-filter
        :desc "Clear filter" :ne "c" #'elfeed-search-clear-filter))

;; SPC a
(map! :leader
    :desc "Toggle Zen" "a" #'+zen/toggle)
;; SPC b
(map! :leader
    :desc "Beacon Mode" "b" #'beacon-mode)
;; SPC r
(map! :leader
    :desc "Rainbow Mode" "r" #'rainbow-mode)
;; SPC z
(map! :leader
    :desc "Play song in MPDel" "z" #'mpdel-playlist-play)
;; SPC i
(map! :leader
    :desc "Toggle Fullscreen Zen" "i" #'+zen/toggle-fullscreen)
;; SPC l
(map! :leader
    :desc "Org Tangle" "l" #'org-babel-tangle)
;; SPC n
(map! :leader
    :desc "MPDel Browser" "n" #'mpdel-browser-open)
;; SPC m
(map! :leader
    :desc "MPDel Playlist" "m" #'mpdel-playlist-open)
;; SPC /
(map! :leader
    :desc "Add Song to MPDel Playlist" "/" #'mpdel-core-add-to-current-playlist)
;; SPC ]
(map! :leader
    :desc "MPDel Next Song" "]" #'libmpdel-playback-next)
;; SPC [
(map! :leader
    :desc "MPDel Previous Song" "[" #'libmpdel-playback-previous)
;; SPC DEL
(map! :leader
    :desc "Clear MPDel Playlist" "DEL" #'mpdel-core-replace-current-playlist)
;; SPC v
(map! :leader
    :desc "Vterm" "v" #'+vterm/toggle)
;; SPC d
(map! :leader
    :desc "Org Mark Done" "d" #'org-todo)
;; SPC x
(map! :leader
    :desc "Mixed Pitch Mode" "x" #'mixed-pitch-mode)
;; SPC y
(map! :leader
    :desc "Magit Status" "y" #'magit-status)
;; SPC u
(map! :leader
    :desc "Delete Buffer" "u" #'evil-delete-buffer)
;; SPC p
(map! :leader
    :desc "Org Export to HTML" "p" #'org-html-export-to-html)
;; SPC e
(map! :leader
    :desc "Magit Log" "e" #'magit-log-all)
;; SPC t
(map! :leader
    :desc "Magit Stage File" "t" #'magit-stage-file)
;; SPC k
(map! :leader
    :desc "Magit Push Remote" "k" #'magit-push-current-to-pushremote)
;; SPC j
(map! :leader
    :desc "Magit Pull" "j" #'magit-pull-from-pushremote)

(setq dired-guess-shell-alist-user
      '(("\\.pdf\\'" "mupdf -I")
        ("\\.\\(?:flac\\|mp3\\|m4a\\|ape\\|wav\\|ogg\\)\\'" "mpv --audio-device=auto --no-audio-display")
        ("\\.\\(?:mp4\\|mkv\\|avi\\|mpg\\|wmv\\)\\'" "mpv --audio-device=auto")
        ("\\.asc\\'" "gpg --decrypt")
        ("\\.\\(?:jpg\\|jpeg\\|png\\|gif\\|webp\\)\\'" "feh")))
