;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Tanner Babcock"
      user-mail-address "babkock@protonmail.com")

(setq gc-cons-threshold 134217738
      gc-cons-percentage 0.1
      make-backup-files nil
      auto-save-default nil
      create-lockfiles nil)
(set-language-environment "UTF-8")
(set-locale-environment "en_US.UTF-8")
(set-selection-coding-system 'utf-8-unix)
(set-charset-priority 'unicode)
(prefer-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(set-clipboard-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(global-set-key (kbd "C-<wheel-up>") 'text-scale-increase)
(global-set-key (kbd "C-<wheel-down>") 'text-scale-decrease)
(setq ranger-show-hidden t)
(setq scroll-conservatively 101
      battery-update-interval 2
      focus-follows-mouse t
      mouse-wheel-scroll-amount '(2 ((shift) . 2))
      mouse-wheel-progressive-speed t
      mouse-wheel-follow-mouse 't
      scroll-step 1
      scroll-margin 2
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01
      hscroll-step 1
      hscroll-margin 1
      writeroom-width 100
      writeroom-mode-line t
      writeroom-extra-line-spacing 0.1
      writeroom-maximize-window t
      +zen-text-scale 1)
(setq fancy-battery-show-percentage t)

(add-hook! 'minibuffer-setup-hook 'garbage-collect)
(add-hook! '+popup-mode-hook (hide-mode-line-mode 1))
(add-hook! '+popup-mode-hook 'garbage-collect)

; (setq doom-theme 'doom-tomorrow-night)
(setq doom-theme 'doom-peacock)
(setq which-key-idle-delay 0.3
      which-key-idle-secondary-delay 0.05
      +doom-dashboard--width 95
      +doom-dashboard-banner-padding '(0 . 0))
(add-hook! 'doom-switch-buffer-hook 'garbage-collect)

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
      confirm-kill-emacs t
      tab-width 4
      indent-tabs-mode t
      indent-line-function 'insert-tab
      require-final-newline t
      next-line-add-newlines nil
      inhibit-startup-message t
      initial-scratch-message nil
      large-file-warning-threshold nil)
(setq-default shell-file-name "/bin/zsh")

(add-hook! 'helpful-mode-hook 'mixed-pitch-mode)
(add-hook! 'writeroom-mode-enable-hook 'mixed-pitch-mode)
(add-hook! 'writeroom-mode-disable-hook 'mixed-pitch-mode)

;(set-frame-parameter (selected-frame) 'alpha '(70 70))
(set-frame-parameter (selected-frame) 'alpha 70)
(add-to-list 'default-frame-alist '(alpha 70 70))
(add-hook! 'dired-mode-hook 'all-the-icons-dired-mode)
(add-hook! 'dired-mode-hook 'garbage-collect)

(setq warning-minimum-level :emergency)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(after! doom-themes
    (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
    (doom-themes-org-config)
    (doom-themes-visual-bell-config))

(custom-set-faces!
    '(font-lock-comment-face :slant italic)
    '(font-lock-keyword-face :slant italic))

(add-hook! 'doom-dashboard-mode-hook 'garbage-collect)
(add-hook! 'doom-load-theme-hook 'garbage-collect)
(add-hook! 'doom-first-file-hook 'garbage-collect)
(add-hook! 'kill-emacs-hook 'garbage-collect)
(add-hook! 'after-init-hook 'garbage-collect)
(add-hook! 'after-init-hook 'beacon-mode)
(add-hook! 'doom-init-ui-hook 'garbage-collect)
(add-hook! 'doom-after-init-modules-hook 'garbage-collect)
(add-hook! 'eww-mode-hook 'garbage-collect)

(after! circe
    (custom-set-faces!
        '(circe-prompt-face :foreground "#0ef")
        '(circe-server-face :foreground "#ee0")
        '(circe-my-message-face :weight bold :foreground "#f44")
        '(circe-originator-face :foreground "b4f"))
    (add-hook! 'circe-mode-hook 'garbage-collect))

(setq dired-open-extensions '(("jpg" . "sxiv")
                              ("png" . "sxiv")
                              ("mkv" . "mpv")
                              ("mp4" . "mpv")))

(require 'notifications)
(notifications-notify
    :title "Emacs Started"
    :body "Emacs configuration loaded. Welcome!")

(defvar splash-phrase-source-folder
    (expand-file-name "phrases/" doom-private-dir)
    "A folder of text files with a fun phrase on each line.")

(defvar splash-phrase-sources
    (let* ((files (directory-files splash-phrase-source-folder nil "\\.txt\\'"))
        (sets (delete-dups (mapcar
            (lambda (file)
            (replace-regexp-in-string "\\(?:-[0-9]+-\\w+\\)?\\.txt" "" file))
            files))))
            (mapcar (lambda (sset)
            (cons sset
                (delq nil (mapcar
                    (lambda (file)
                        (when (string-match-p (regexp-quote sset) file) file))
                    files))))
            sets))
    "A list of cons giving the phrase set name, and a list of files which contain phrase components.")

(defvar splash-phrase-set
    (nth (random (length splash-phrase-sources)) (mapcar #'car splash-phrase-sources)))

(defun splase-phrase-set-random-set ()
    "Set a new random splash phrase set."
    (interactive)
    (setq splash-phrase-set
        (nth (random (1- (length splash-phrase-sources)))
            (cl-set-difference (mapcar #'car splash-phrase-sources) (list splash-phrase-set))))
    (+doom-dashboard-reload t))

(defvar splase-phrase--cache nil)

(defun splash-phrase-get-from-file (file)
    "Fetch a random line from FILE."
    (let ((lines (or (cdr (assoc file splase-phrase--cache))
        (cdar (push (cons file
            (with-temp-buffer
                (insert-file-contents (expand-file-name file splash-phrase-source-folder))
                    (split-string (string-trim (buffer-string)) "\n")))
                splase-phrase--cache)))))
            (nth (random (length lines)) lines)))

(defun splash-phrase (&optional set)
    "Construct a splash phrase from SET. See `splash-phrase-sources'."
    (mapconcat
    #'splash-phrase-get-from-file
    (cdr (assoc (or set splash-phrase-set) splash-phrase-sources)) " "))

(defun doom-dashboard-phrase ()
    "Get a splash phrase, flow it over multiple lines as needed, and make fontify it."
    (mapconcat
        (lambda (line)
            (+doom-dashboard--center
            +doom-dashboard--width
            (with-temp-buffer
                (insert-text-button line
                 'action
                 (lambda (_) (+doom-dashboard-reload t))
                 'face 'doom-dashboard-menu-title
                 'mouse-face 'doom-dashboard-menu-title
                 'help-echo "Welcome to DOOM Emacs!"
                 'follow-link t)
        (buffer-string))))
        (split-string
            (with-temp-buffer
                (insert (splash-phrase))
                 (setq fill-column (min 70 (/ (* 2 (window-width)) 3)))
                 (fill-region (point-min) (point-max))
                 (buffer-string))
        "\n")
    "\n"))

(defadvice! doom-dashboard-widget-loaded-with-phrase ()
    :override #'doom-dashboard-widget-loaded
    (insert
        (propertize
            (+doom-dashboard--center
            +doom-dashboard--width
            (doom-display-benchmark-h 'return))
            'face 'doom-dashboard-footer-icon)
        "\n"
        (doom-dashboard-phrase)
    "\n"))

(global-set-key (kbd "C-S-<mouse-1>") '+multiple-cursors/evil-mc-toggle-cursor-here)
(global-set-key (kbd "C-S-<mouse-3>") '+multiple-cursors/evil-mc-undo-cursor)

(setq config-org-file-name "config.org"
      config-org-directory "~/.doom.d/"
      agenda-org-file-name "agenda.org"
      agenda-org-directory "~/org/"
      foot-org-file-name "foot.org"
      foot-org-directory "~/.config/foot/")

(defun open-config-org ()
    "Open your private Config.org file."
    (interactive)
    (find-file (expand-file-name config-org-file-name config-org-directory)))

(defun open-agenda-org ()
    "Open your agenda.org file."
    (interactive)
    (find-file (expand-file-name agenda-org-file-name agenda-org-directory)))

(defun open-foot-org ()
    "Open the Foot configuration file."
    (interactive)
    (find-file (expand-file-name foot-org-file-name foot-org-directory)))

(defun open-tbcom ()
    "Opens TBcom repository"
    (interactive)
    (dired "~/TBcom"))

(defun open-dotfiles ()
    "Opens Dotfiles repository"
    (interactive)
    (dired "~/git/Dotfiles"))

(setq-default +doom-dashboard-menu-sections
    '(("Kill All Buffers"
        :icon (all-the-icons-octicon "alert" :face 'all-the-icons-red :height 0.94)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lred) :height 0.95)
        :action doom/kill-all-buffers)
      ("Open Recent File"
        :icon (all-the-icons-faicon "clock-o" :face 'all-the-icons-blue :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lblue) :height 0.95)
        :action helm-recentf)
      ("Open Project"
        :icon (all-the-icons-octicon "repo" :face 'all-the-icons-red :height 0.94)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lred) :height 0.95)
        :action projectile-find-file)
      ("Open TBcom"
        :icon (all-the-icons-alltheicon "git" :face 'all-the-icons-pink :height 0.94)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lpink) :height 0.95)
        :action open-tbcom)
      ("Org Agenda"
        :icon (all-the-icons-faicon "calendar" :face 'all-the-icons-maroon :height 0.94)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lmaroon) :height 0.95)
        :action org-agenda)
      ("Open Dotfiles"
        :icon (all-the-icons-faicon "floppy-o" :face 'all-the-icons-blue :height 0.94)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lblue) :height 0.95)
        :action open-dotfiles)
      ("RSS Feeds"
        :icon (all-the-icons-faicon "rss" :face 'all-the-icons-yellow :height 0.94)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lyellow) :height 0.95)
        :action elfeed)
      ("Open config.org"
        :icon (all-the-icons-faicon "cogs" :face 'all-the-icons-green :height 0.94)
        :when (file-directory-p doom-private-dir)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lgreen) :height 0.95)
        :action open-config-org)
      ("Doom Reload"
        :icon (all-the-icons-faicon "refresh" :face 'all-the-icons-orange :height 0.94)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lorange) :height 0.95)
        :action doom/reload)
;      ("Change Theme"
;        :icon (all-the-icons-faicon "paint-brush" :face 'all-the-icons-purple :height 0.94)
;        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lpurple) :height 0.95)
;        :action consult-theme)
      ("Music Player"
        :icon (all-the-icons-faicon "music" :face 'all-the-icons-cyan :height 0.94)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lcyan) :height 0.95)
        :action mpdel-playlist-open)))

(setq +doom-dashboard-mode-map (make-sparse-keymap))
(map! :map +doom-dashboard-mode-map
    :desc "Forward" :ne "<down>" #'+doom-dashboard/forward-button
    :desc "Backward" :ne "<up>" #'+doom-dashboard/backward-button
    :desc "Find File" :ne "f" #'helm-find-files
    :desc "Recent Files" :ne "r" #'helm-recentf
    :desc "Doom Reload" :ne "R" #'doom/reload
    :desc "Open Project" :ne "p" #'projectile-find-file
    :desc "Config Dir" :ne "C" #'doom/open-private-config
    :desc "Open Dired" :ne "j" (cmd! (dired "."))
    :desc "Open Dired in Home Directory" :ne "J" (cmd! (dired "~/"))
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
    :desc "Open Dotfiles" :ne "D" #'open-dotfiles
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
    :desc "Doom Help" :ne "?" #'doom/help
    :desc "Open Circe" :ne "." #'circe
    :desc "Agenda" :ne "a" #'org-agenda
    :desc "Open agenda.org" :ne "A" #'open-agenda-org
    :desc "Open todo.org" :ne "V" (cmd! (find-file "~/org/todo.org"))
    :desc "Kill All Buffers" :ne "k" #'doom/kill-all-buffers
    :desc "Switch Buffers" :ne "b" #'helm-buffers-list
    :desc "Previous Buffer" :ne "P" #'previous-buffer
    :desc "Open Elfeed" :ne "e" #'elfeed
    :desc "Open elfeed.org" :ne "E" (cmd! (find-file "~/org/elfeed.org"))
    :desc "Reset Elfeed" :ne "n" #'elfeed-db-unload
    :desc "Set Theme" :ne "T" #'consult-theme
    :desc "Open video.org" :ne "v" (cmd! (find-file "~/org/video.org"))
    :desc "Quit" :ne "Q" #'save-buffers-kill-terminal)

;(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-loaded)
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)

(require 'elfeed-goodies)
(after! elfeed
    (defun elfeed-search-format-date (date) (format-time-string "%m/%d/%Y %I:%M:%S" (seconds-to-time date)))
    (setq elfeed-search-filter "@2-weeks-ago +unread"
          elfeed-show-entry-switch #'pop-to-buffer
          elfeed-curl-max-connections 27
          elfeed-curl-timeout 12)
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
(add-hook! 'elfeed-search-mode-hook 'garbage-collect)
(add-hook! 'elfeed-show-mode-hook #'elfeed-update)
(add-hook! 'elfeed-show-mode-hook 'visual-line-mode)
(add-hook! 'elfeed-show-mode-hook 'garbage-collect)
(add-hook! 'elfeed-update-init-hook 'garbage-collect)
(add-hook! 'elfeed-db-unload-hook 'garbage-collect))

(after! elfeed-goodies
    (elfeed-goodies/setup)
    (setq elfeed-goodies/entry-pane-size 0.5
          elfeed-goodies/powerline-default-separator 'wave
          elfeed-goodies/show-mode-padding 1
          elfeed-goodies/feed-source-column-width 20))

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

(after! helm
    (setq helm-show-completion-min-window-height 9))

(map!
    :m "C-h" #'evil-window-left
    :m "C-j" #'evil-window-down
    :m "C-k" #'evil-window-up
    :m "C-l" #'evil-window-right
    :m "C-w" #'evil-window-vsplit
    :m "C-o" #'evil-window-split
)

(map! :leader
    :desc "Toggle Zen" "a" #'+zen/toggle
    :desc "Beacon Mode" "b" #'beacon-mode
    :desc "Rainbow Mode" "r" #'rainbow-mode
    :desc "Play song in MPDel" "z" #'mpdnotify-play
    :desc "Toggle Fullscreen Zen" "i" #'+zen/toggle-fullscreen
    :desc "Org Tangle" "l" #'org-babel-tangle
    :desc "MPDel Playlist" "m" #'mpdel-playlist-open
    :desc "Add Song to MPDel Playlist" "/" #'mpdel-core-add-to-current-playlist
    :desc "MPDel Next Song" "]" #'libmpdel-playback-next
    :desc "MPDel Previous Song" "[" #'libmpdel-playback-previous
    :desc "Vterm" "v" #'+vterm/toggle
    :desc "Org Mark Done" "d" #'org-todo
    :desc "Mixed Pitch Mode" "x" #'mixed-pitch-mode
    :desc "Magit Status" "y" #'magit-status
    :desc "Delete Buffer" "u" #'evil-delete-buffer
    :desc "Org Export to HTML" "p" #'org-html-export-to-html
    :desc "Magit Log" "e" #'magit-log-all
    :desc "Magit Stage File" "t" #'magit-stage-file
    :desc "Magit Push Remote" "k" #'magit-push-current-to-pushremote
    :desc "Magit Pull" "j" #'magit-pull-from-pushremote
    :desc "Switch Buffer" "," #'helm-buffers-list
    :desc "Org Agenda" "-" #'org-agenda
    :desc "Org Time Stamp" "=" #'org-time-stamp
    :desc "Org Priority Up" "\\" #'org-priority-up
    :desc "Org Priority Down" "'" #'org-priority-down)

(after! magit
    (custom-set-faces!
        '(magit-log-author :foreground "#f46")
        '(magit-log-date :foreground "#7fc")
        '(magit-hash :foreground "#0f3")
        '(magit-filename :foreground "#ff3")
        '(magit-branch-current :foreground "#e96"))
    (add-hook! 'magit-status-mode-hook (hide-mode-line-mode 1))
    (add-hook! 'magit-log-mode-hook (hide-mode-line-mode 1))
    (add-hook! 'magit-mode-hook 'garbage-collect)
    (add-hook! 'magit-log-mode-hook 'garbage-collect)
    (add-hook! 'magit-status-mode-hook 'garbage-collect)
    (add-hook! 'magit-popup-mode-hook 'garbage-collect))

(after! diff-hl
    (global-diff-hl-mode)
    (diff-hl-margin-mode)
    (diff-hl-flydiff-mode)
    (diff-hl-dired-mode)
    (diff-hl-show-hunk-mouse-mode))

(add-hook! 'magit-pre-refresh-hook 'diff-hl-magit-pre-refresh)
(add-hook! 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)

(after! modeline
    (setq doom-modeline-buffer-file-name-style 'relative-to-project
          doom-modeline-icon (display-graphic-p)
          doom-modeline-major-mode-icon t
          doom-modeline-major-mode-color-icon t
          doom-modeline-env-version t
          doom-modeline-persp-icon t
          doom-modeline-unicode-fallback nil
          doom-modeline-buffer-state-icon nil
          doom-modeline-height 30
          doom-modeline-hud t
          doom-modeline-buffer-modification-icon nil)
    (add-hook! 'doom-modeline-mode-hook 'garbage-collect))
(setq-default doom-modeline-major-mode-icon t
              doom-modeline-major-mode-color-icon t
              doom-modeline-buffer-file-name-style 'relative-to-project
              doom-modeline-env-version t
              doom-modeline-persp-icon t
              doom-modeline-buffer-state-icon nil
              doom-modeline-unicode-fallback nil
              doom-modeline-hud t
              doom-modeline-height 30
              doom-modeline-buffer-modification-icon nil)

(defun mpdnotify ()
    (interactive)
    (shell-command "/home/babkock/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp_cover_art.sh")
    (notifications-notify
        :title (shell-command-to-string "mpc --host 127.0.0.2 -f %title% | head -1")
        :body (concat (shell-command-to-string "mpc --host 127.0.0.2 -f %artist% | head -1") "<i>" (shell-command-to-string "mpc --host 127.0.0.2 -f %album% | head -1") "</i>")
        :image-path "/tmp/mpd_cover.jpg"
))

(defun mpdnotify-play ()
    (interactive)
    (mpdel-playlist-play)
    (mpdnotify))

(custom-set-faces!
    '(mpdel-tablist-song-name-face :inherit variable-pitch :weight bold :foreground "#0ef")
    '(mpdel-tablist-artist-face :inherit variable-pitch :weight bold :foreground "#f44")
    '(mpdel-tablist-album-face :inherit variable-pitch :weight bold :slant italic :foreground "#b4f")
    '(mpdel-tablist-track-face :inherit variable-pitch :weight bold :foreground "#0e0")
    '(mpdel-playlist-current-song-face :inherit variable-pitch :weight bold :slant italic :foreground "#efefef" :background "#000")
    '(mpdel-tablist-disc-face :foreground "#ef0")
    '(mpdel-tablist-date-face :foreground "#ee0")
    '(header-line :height 1.1))

(add-hook! 'mpdel-playlist-mode-hook 'garbage-collect)
(add-hook! 'mpdel-playlist-mode-hook (hide-mode-line-mode 1))
(add-hook! 'mpdel-playlist-mode-hook 'mpdnotify)
(add-hook! 'libmpdel-current-song-changed-hook 'mpdnotify)
(add-hook! 'mpdel-tablist-mode-hook 'garbage-collect)
(add-hook! 'mpdel-tablist-mode-hook (hide-mode-line-mode 1))
(add-hook! 'navigel-tablist-mode-hook (hide-mode-line-mode 1))
(after! mpdel
    (setq libmpdel-hostname "127.0.0.2")
    (require 'mpdel)
    (mpdel-mode))

(setq mpdel-playlist-mode-map (make-sparse-keymap))
(map! :map mpdel-playlist-mode-map
    :desc "Play/Pause" :ne "p" #'libmpdel-playback-play-pause
    :desc "Play" :ne "RET" #'mpdnotify-play
    :desc "Increase Volume" :ne "<right>" #'mpdel-core-volume-increase
    :desc "Decrease Volume" :ne "<left>" #'mpdel-core-volume-decrease
    :desc "Clear Playlist" :ne "c" #'mpdel-core-replace-current-playlist
    :desc "Dired" :ne "e" #'mpdel-core-dired
    :desc "Set Random" :ne "z" #'libmpdel-playback-set-random
    :desc "Unset Random" :ne "Z" #'libmpdel-playback-unset-random
    :desc "Set Single" :ne "y" #'libmpdel-playback-set-single-once
    :desc "Unset Single" :ne "Y" #'libmpdel-playback-set-single-never
    :desc "Next Song" :ne ">" #'libmpdel-playback-next
    :desc "Previous Song" :ne "<" #'libmpdel-playback-previous)

(after! org
    (add-hook! 'org-mode-hook 'garbage-collect)
    (add-hook! 'org-mode-hook 'org-fancy-priorities-mode)
    (setq org-directory "~/org/"
          org-agenda-files '("~/org/todo.org" "~/org/video.org" "~/org/agenda.org")
          org-agenda-block-separator 8411
          org-default-notes-file (expand-file-name "notes.org" org-directory)
          org-superstar-headline-bullets-list '("◉" "● " "○ " "◆" "●" "○" "◆")
          org-superstar-item-bullet-alist '((?+ . ?➤) (?- . ?✦))
          org-ellipsis "  "
          org-catch-invisible-edits 'smart
          org-log-done 'time
          org-journal-dir "~/org/journal/"
          org-hide-emphasis-markers t
          org-support-shift-select t
          org-src-preserve-indentation nil
          org-src-tab-acts-natively t
          org-edit-src-content-indentation 0)
    (setq org-todo-keywords
          '((sequence "TODO(t)" "NEXT(n)" "VIDEO(v)" "IDEA(i)" "DONE(d)" "EVENT(e)"))
          org-todo-keyword-faces
          '(("TODO" . 'all-the-icons-red)
            ("NEXT" . 'all-the-icons-blue)
            ("VIDEO" . 'all-the-icons-yellow)
            ("IDEA" . 'all-the-icons-green)
            ("DONE" . 'all-the-icons-orange)
            ("EVENT" . 'all-the-icons-cyan)))
    (setq org-agenda-custom-commands
          '(("v" "Better Agenda View"
            ((tags "PRIORITY=\"A\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "High-priority unfinished tasks:")))
            (tags "PRIORITY=\"B\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "Medium-priority unfinished tasks:")))
            (tags "PRIORITY=\"C\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "Low-priority unfinished tasks:")))
            (agenda "")
            (alltodo "")))))
    (custom-set-faces!
        '(org-agenda-calendar-event :inherit variable-pitch)
        '(org-agenda-calendar-sexp :inherit variable-pitch)
        '(org-agenda-filter-category :inherit variable-pitch)
        '(org-agenda-filter-tags :inherit variable-pitch)
        '(org-agenda-date :inherit variable-pitch :weight bold :height 1.09)
        '(org-agenda-date-weekend :inherit variable-pitch :weight bold :height 1.06)
        '(org-agenda-done :inherit variable-pitch :weight bold)
        '(org-agenda-date-today :inherit variable-pitch :weight bold :slant italic :height 1.12)
        '(org-agenda-date-weekend-today :inherit variable-pitch :weight bold :height 1.09)
        '(org-agenda-dimmed-todo-face :inherit variable-pitch :weight bold)
        '(org-agenda-current-time :inherit variable-pitch :weight bold)
        '(org-agenda-clocking :inherit variable-pitch :weight bold))
    (add-hook! 'org-agenda-mode-hook 'mixed-pitch-mode)
    (add-hook! 'org-agenda-mode-hook (hide-mode-line-mode 1))
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

(after! org-fancy-priorities
    (setq org-fancy-priorities-list '("🔴" "⚪" "🔵")
          org-priority-faces
              '((?A :foreground "#ff0000" :weight bold)
                (?B :foreground "#ffffff" :weight bold)
                (?C :foreground "#0099ff" :weight bold))))

(font-lock-add-keywords 'org-mode
    '(("^ *\\([-]\\) "
        (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(after! treemacs
    (setq doom-themes-treemacs-theme "doom-colors")
    (setq doom-themes-treemacs-enable-variable-pitch t))
