;;; $DOOMDIR/config.el -*- lexical-binding: t; no-byte-compile: t; coding: utf-8-unix; -*-

(setq user-full-name "Tanner Babcock"
      user-mail-address (concat "babkock" "@" "protonmail" "." "com"))
(use-package all-the-icons)

(setq gc-cons-threshold 134217738
      gc-cons-percentage 0.1
      make-backup-files nil
      auto-save-default nil
      create-lockfiles nil
      vc-follow-symlinks t
      native-comp-async-report-warnings-errors nil
      load-prefer-newer t)
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
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(delete-selection-mode t)
(setq ranger-show-hidden t)
(setq scroll-conservatively 101
      battery-update-interval 2
      focus-follows-mouse t
      mouse-wheel-scroll-amount '(2 ((shift) . 2))
      mouse-wheel-progressive-speed t
      mouse-wheel-follow-mouse 't
      display-line-numbers-type t
      scroll-step 1
      scroll-margin 3
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
(setq evil-vsplit-window-right t
      evil-split-window-below t)

(add-hook! 'minibuffer-setup-hook 'garbage-collect)
(add-hook! '+popup-mode-hook (hide-mode-line-mode 1))
(add-hook! '+popup-mode-hook 'garbage-collect)

(setq doom-theme 'doom-city-lights)
(setq which-key-idle-delay 0.2
      which-key-idle-secondary-delay 0.05
      +doom-dashboard--width 95
      +doom-dashboard-banner-padding '(0 . 0))
(add-hook! 'doom-switch-buffer-hook 'garbage-collect)

(setq doom-font (font-spec :family "GoMono Nerd Font Propo" :size 19 :height 1.0)
      doom-big-font (font-spec :family "GoMono Nerd Font Propo" :size 21 :height 1.0)
      doom-unicode-font (font-spec :family "GoMono Nerd Font Propo" :size 19 :height 1.0)
      doom-variable-pitch-font (font-spec :family "NotoSerif Nerd Font" :size 18 :height 1.1)
      doom-serif-font (font-spec :family "NotoSerif Nerd Font" :size 18))
(set-frame-font "GoMono Nerd Font 19" nil t)

(custom-set-faces
  '(mode-line ((t (:family "GoMono Nerd Font Propo" :size 19))))
  '(mode-line-active ((t (:family "GoMono Nerd Font" :size 19))))
  '(mode-line-inactive ((t (:family "GoMono Nerd Font" :size 19)))))

(setq-default ls-lisp-format-time-list '("%m/%d/%Y %I:%M:%S" "%m/%d/%Y %I:%M:%S"))
(setq ls-lisp-use-localized-time-format t
      display-time-format "%I:%M"
      display-time-default-load-average nil
      confirm-kill-emacs t
      confirm-kill-processes nil
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
(set-frame-parameter (selected-frame) 'alpha 90)
(add-to-list 'default-frame-alist '(alpha 90 90))
;(add-hook! 'dired-mode-hook 'nerd-icons-dired-mode)
(add-hook! 'dired-mode-hook 'all-the-icons-dired-mode)
(add-hook! 'dired-mode-hook 'garbage-collect)

(setq warning-minimum-level :emergency)
(menu-bar-mode -1)
(tool-bar-mode -1)
;(scroll-bar-mode -1)

(after! doom-themes
    (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
    (doom-themes-org-config)
    (doom-themes-visual-bell-config)
    (doom-themes-neotree-config)
    (doom-themes-treemacs-config))

(custom-set-faces!
    '(font-lock-comment-face :slant italic)
    '(font-lock-keyword-face :slant italic))

(add-hook! 'doom-dashboard-mode-hook 'garbage-collect)
(add-hook! 'doom-dashboard-mode-hook (hide-mode-line-mode 1))
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

(evil-define-key 'normal dired-mode-map
    (kbd "J") 'image-dired-previous-line-and-display
    (kbd "K") 'image-dired-next-line-and-display)

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

(defun tb/open-config-org ()
    "Open your private Config.org file."
    (interactive)
    (find-file (expand-file-name config-org-file-name config-org-directory)))

(defun tb/open-agenda-org ()
    "Open your agenda.org file."
    (interactive)
    (find-file (expand-file-name agenda-org-file-name agenda-org-directory)))

(defun tb/open-foot-org ()
    "Open the Foot configuration file."
    (interactive)
    (find-file (expand-file-name foot-org-file-name foot-org-directory)))

(defun tb/open-tbcom ()
    "Opens TBcom repository"
    (interactive)
    (dired "~/TBcom"))

(defun tb/open-dotfiles ()
    "Opens Dotfiles repository"
    (interactive)
    (dired "~/git/Dotfiles"))

(defun tb/gnus1 ()
    "Connect to Eternal September Usenet"
    (interactive)
    (setq gnus-select-method '(nntp "news.eternal-september.org")
          nntp-open-connection-function 'nntp-open-tls-stream
          nntp-port-number 563
          gnus-posting-styles '((".*"
                                 (name "Anonymous")
                                 (address "babkock@protonmail.com")
                                 (reply-to "babkock@protonmail.com"))))
    (gnus))

(defun tb/gnus2 ()
    "Connect to Gwene Usenet"
    (interactive)
    (setq gnus-select-method '(nntp "gwene" (nntp-address "news.gwene.org")))
    (gnus))

(setq-default +doom-dashboard-menu-sections
    '(("Kill All Buffers"
        :icon (all-the-icons-octicon "alert" :face 'all-the-icons-red :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lred) :height 0.95)
        :action doom/kill-all-buffers)
      ("Open Recent File"
        :icon (all-the-icons-faicon "clock-o" :face 'all-the-icons-blue :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lblue) :height 0.95)
        :action helm-recentf)
      ("Open Project"
        :icon (all-the-icons-octicon "repo" :face 'all-the-icons-red :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lred) :height 0.95)
        :action projectile-find-file)
      ("Open TBcom"
        :icon (all-the-icons-alltheicon "git" :face 'all-the-icons-pink :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lpink) :height 0.95)
        :action tb/open-tbcom)
      ; ("Org Agenda"
      ;  :icon (all-the-icons-faicon "calendar" :face 'all-the-icons-maroon :height 0.95)
      ;  :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lmaroon) :height 0.95)
      ;  :action org-agenda)
      ("Open Dotfiles"
        :icon (all-the-icons-faicon "floppy-o" :face 'all-the-icons-blue :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lblue) :height 0.95)
        :action tb/open-dotfiles)
      ("RSS Feeds"
        :icon (all-the-icons-faicon "rss" :face 'all-the-icons-yellow :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lyellow) :height 0.95)
        :action elfeed)
      ("Open config.org"
        :icon (all-the-icons-faicon "cogs" :face 'all-the-icons-green :height 0.95)
        :when (file-directory-p doom-private-dir)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lgreen) :height 0.95)
        :action tb/open-config-org)
      ("Usenet News"
        :icon (all-the-icons-faicon "newspaper-o" :face 'all-the-icons-maroon :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lmaroon) :height 0.95)
        :action tb/gnus1)
      ("Doom Reload"
        :icon (all-the-icons-faicon "refresh" :face 'all-the-icons-orange :height 0.95)
        :face (:inherit (doom-dashboard-menu-title bold) :inherit (all-the-icons-lorange) :height 0.95)
        :action doom/reload)))

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
    :desc "Open config.org" :ne "c" #'tb/open-config-org
    :desc "Open init.org" :ne "i" (cmd! (find-file (expand-file-name "init.org" doom-private-dir)))
    :desc "Open ZSH Config" :ne "z" (cmd! (find-file "~/.zsh.org"))
    :desc "Open Qutebrowser Config" :ne "q" (cmd! (find-file "~/.config/qutebrowser/config.org"))
    :desc "Open Polybar Config" :ne "o" (cmd! (find-file "~/.config/polybar/config.org"))
    :desc "Open Foot Config" :ne "F" #'tb/open-foot-org
    :desc "Open Waybar Config" :ne "w" (cmd! (find-file "~/.config/waybar/config.org"))
    :desc "Open Waybar Style" :ne "W" (cmd! (find-file "~/.config/waybar/style.org"))
    :desc "Calendar" :ne "m" #'calendar 
    :desc "Open TBcom" :ne "t" #'tb/open-tbcom
    :desc "Open Dotfiles" :ne "D" #'tb/open-dotfiles
    :desc "Open Dotfiles Fetch" :ne "h" (cmd! (find-file "~/git/Dotfiles/fetch.org"))
    :desc "Open Dotfiles README" :ne "H" (cmd! (find-file "~/git/Dotfiles/README.org"))
    :desc "GNUs Gwene News Server" :ne "X" #'tb/gnus2
    :desc "GNUs Eternal September News Server" :ne "x" #'tb/gnus1
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
    :desc "Set Theme" :ne "T" #'load-theme
    :desc "Open eww.org" :ne "y" (cmd! (find-file "~/.config/eww/eww.org"))
    :desc "Open video.org" :ne "v" (cmd! (find-file "~/org/video.org"))
    :desc "Quit" :ne "Q" #'save-buffers-kill-terminal)

;(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-loaded)
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)
(add-hook! '+doom-dashboard-functions (hide-mode-line-mode))

(require 'elfeed-goodies)
(require 'elfeed-org)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(after! elfeed
    (elfeed-set-timeout 30)
    (defun elfeed-search-format-date (date) (format-time-string "%m/%d/%Y %I:%M:%S" (seconds-to-time date)))
    (setq elfeed-search-filter "@1-weeks-ago +unread"
          elfeed-show-entry-switch #'pop-to-buffer
          url-queue-timeout 5
          elfeed-use-curl t
          elfeed-curl-max-connections 8
          elfeed-curl-timeout 6
          elfeed-curl-extra-arguments '("--insecure" "--fail-early" "--tcp-fastopen" "--ssl-allow-beast"))
    (defface git-entry
        '((t :foreground "#d04b4e"))
        "Entry for Git")
    (defface reddit-entry
        '((t :foreground "#f28735"))
        "Entry for Reddit")
    (defface youtube-entry
        '((t :foreground "#f74e8b"))
        "Entry for YouTube")
    (defface torrents-entry
        '((t :foreground "#fdeadb"))
        "Entry for torrents")
    (defface stack-entry
        '((t :foreground "#25c192"))
        "Entry for Stack")
    (defface news-entry
        '((t :foreground "#49a6d0"))
        "Entry for News")
    (defface tumblr-entry
        '((t :foreground "#d8a89a"))
        "Entry for Tumblr")
    (defface tech-entry
        '((t :foreground "#ffff00"))
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
    '(elfeed-search-feed-face :foreground "#25c192")
    '(elfeed-search-tag-face :foreground "#f28735")
    '(elfeed-search-title-face :inherit variable-pitch :slant italic)
    '(elfeed-search-date-face :foreground "#d8a89a")
    '(elfeed-search-last-update-face :foreground "#49a6d0"))
(add-hook! 'elfeed-search-update-hook (hide-mode-line-mode 1))
(add-hook! 'elfeed-search-mode-hook (hide-mode-line-mode 1))
(add-hook! 'elfeed-show-mode-hook (hide-mode-line-mode 1) (hl-line-mode -1))
(add-hook! 'elfeed-search-mode-hook #'elfeed-update)
(add-hook! 'elfeed-search-mode-hook (elcord-mode -1))
(add-hook! 'elfeed-show-mode-hook #'visual-line-mode)
(add-hook! 'elfeed-show-mode-hook #'mixed-pitch-mode)
(add-hook! 'elfeed-show-mode-hook 'garbage-collect)
(add-hook! 'elfeed-show-mode-hook (elcord-mode -1))
(add-hook! 'elfeed-search-mode-hook (setq header-line-format nil))
(add-hook! 'elfeed-show-mode-hook (setq header-line-format nil)))

(after! elfeed-goodies
    (elfeed-goodies/setup)
    (setq elfeed-goodies/entry-pane-size 0.5
          elfeed-goodies/wide-threshold 0.2
          elfeed-goodies/show-mode-padding 1
          elfeed-goodies/feed-source-column-width 20
          elfeed-goodies/tag-column-width 20))

(require 'elfeed-tube)
(elfeed-tube-setup)
(setq elfeed-tube-auto-save-p t)
(define-key! elfeed-show-mode-map (kbd "F") 'elfeed-tube-fetch)
(define-key! elfeed-search-mode-map (kbd "F") 'elfeed-tube-fetch)

(require 'elfeed-tube-mpv)
(define-key! elfeed-show-mode-map (kbd "f") 'elfeed-tube-mpv-follow-mode)
(define-key! elfeed-show-mode-map (kbd "w") 'elfeed-tube-mpv-where)

;(elfeed-tube-add-feeds '("https://www.youtube.com/@BarelySociable"
;                         "https://www.youtube.com/@MentalOutlaw"
;                         "https://www.youtube.com/@ShroudedHand"))

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
    (setq helm-show-completion-min-window-height 10))

(after! helm-org-rifle
    (setq helm-org-rifle-show-path t
          helm-org-rifle-show-level-stars t)
    (add-hook! 'helm-org-rifle-after-init-hook 'mixed-pitch-mode))

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
    :desc "Calendar" "m" #'calendar
    :desc "Add Song to MPDel Playlist" "/" #'mpdel-core-add-to-current-playlist
    :desc "MPDel Next Song" "]" #'libmpdel-playback-next
    :desc "MPDel Previous Song" "[" #'libmpdel-playback-previous
    :desc "Helm Org Rifle Org" "f" #'helm-org-rifle-org-directory
    :desc "Helm Org Rifle Directories" "v" #'helm-org-rifle-directories
    :desc "Org Mark Done" "d" #'org-todo
    :desc "Mixed Pitch Mode" "x" #'mixed-pitch-mode
    :desc "Magit Status" "y" #'magit-status
    :desc "Delete Buffer" "u" #'evil-delete-buffer
    :desc "Org Export to HTML" "p" #'org-html-export-to-html
    :desc "Multiple Cursors Toggle" "c" #'+multiple-cursors/evil-mc-toggle-cursors
    :desc "Dired Sidebar" "s" #'dired-sidebar-toggle-sidebar
    :desc "Magit Log" "e" #'magit-log-all
    :desc "Magit Stage File" "t" #'magit-stage-file
    :desc "Magit Push Remote" "k" #'magit-push-current-to-pushremote
    :desc "Magit Pull" "j" #'magit-pull-from-pushremote
    :desc "Switch Buffer" "," #'helm-buffers-list
    :desc "Mastodon Toggle Favorite" "-" #'mastodon-toot--toggle-favourite
    :desc "Toggle Elcord Mode" "o" (cmd! (elcord-mode 'toggle))
    :desc "Org Time Stamp" "=" #'org-time-stamp
    :desc "Org Priority Up" "\\" #'org-priority-up
    :desc "Org Priority Down" "'" #'org-priority-down)

(after! magit
    (custom-set-faces!
        '(magit-log-author :foreground "#d04b4e")
        '(magit-log-date :foreground "#f28735")
        '(magit-hash :foreground "#25c192")
        '(magit-filename :foreground "#49a6d0")
        '(magit-branch-current :foreground "#f74e8b"))
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
    (display-time-mode 1)
    (setq doom-modeline-buffer-file-name-style 'relative-to-project
          doom-modeline-icon t
          doom-modeline-irc t
          doom-modeline-irc-buffers t
          doom-modeline-gnus t
          doom-modeline-major-mode-icon t
          doom-modeline-major-mode-color-icon t
          doom-modeline-env-version t
          doom-modeline-persp-icon t
          doom-modeline-persp-name t
          doom-modeline-unicode-fallback nil
          doom-modeline-buffer-state-icon nil
          doom-modeline-height 30
          doom-modeline-hud t
          doom-modeline-vcs-icon t
          doom-modeline-indent-info t
          doom-modeline-buffer-modification-icon t
          doom-modeline-time t
          doom-modeline-time-icon t
          doom-modeline-time-live-icon t
          doom-modeline-time-clock-size 0.8
          doom-modeline-time-analogue-clock t)
    (add-hook! 'doom-modeline-mode-hook 'garbage-collect))
(setq-default doom-modeline-major-mode-icon t
              doom-modeline-icon t
              doom-modeline-irc t
              doom-modeline-irc-buffers t
              doom-modeline-gnus t
              doom-modeline-major-mode-color-icon t
              doom-modeline-buffer-file-name-style 'relative-to-project
              doom-modeline-env-version t
              doom-modeline-persp-icon t
              doom-modeline-persp-name t
              doom-modeline-buffer-state-icon nil
              doom-modeline-unicode-fallback nil
              doom-modeline-hud t
              doom-modeline-height 30
              doom-modeline-vcs-icon t
              doom-modeline-indent-info t
              doom-modeline-buffer-modification-icon t
              doom-modeline-time t
              doom-modeline-time-icon t
              doom-modeline-time-live-icon t
              doom-modeline-time-clock-size 0.8
              doom-modeline-time-analogue-clock t)

(defun mpdnotify ()
    (interactive)
    (shell-command "/home/babkock/.ncmpcpp/ncmpcpp-ueberzug/ncmpcpp_cover_art.sh")
    (notifications-notify
        :title (shell-command-to-string "mpc --host=127.0.0.2 -f %title% | head -1")
        :body (concat (shell-command-to-string "mpc --host=127.0.0.2 -f %artist% | head -1") "<i>" (shell-command-to-string "mpc --host=127.0.0.2 -f %album% | head -1") "</i>")
        :image-path "/tmp/mpd_cover.jpg"
))

(defun mpdnotify-play ()
    (interactive)
    (mpdel-playlist-play)
    (mpdnotify))

(custom-set-faces!
    '(mpdel-tablist-song-name-face :inherit variable-pitch :weight bold :foreground "#f74e8b")
    '(mpdel-tablist-artist-face :inherit variable-pitch :weight bold :foreground "#d04b4e")
    '(mpdel-tablist-album-face :inherit variable-pitch :weight bold :slant italic :foreground "#25c192")
    '(mpdel-tablist-track-face :inherit variable-pitch :weight bold :foreground "#49a6d0")
    '(mpdel-playlist-current-song-face :inherit variable-pitch :weight bold :slant italic :foreground "#fdeadb" :background "#000")
    '(mpdel-tablist-disc-face :foreground "#d8a89a")
    '(mpdel-tablist-date-face :foreground "#f28735"))

(add-hook! 'mpdel-playlist-mode-hook 'garbage-collect)
(add-hook! 'mpdel-playlist-mode-hook (hide-mode-line-mode 1))
(add-hook! 'mpdel-playlist-mode-hook '(hl-line-mode))
(add-hook! 'mpdel-playlist-mode-hook (setq header-line-format nil))
(add-hook! 'mpdel-playlist-mode-hook 'mpdnotify)
(add-hook! 'libmpdel-current-song-changed-hook 'mpdnotify)
(add-hook! 'mpdel-tablist-mode-hook 'garbage-collect)
(add-hook! 'mpdel-browser-mode-hook '(hl-line-mode))
(add-hook! 'mpdel-browser-mode-hook (setq header-line-format nil))
(add-hook! 'navigel-tablist-mode-hook '(hl-line-mode))
(add-hook! 'navigel-tablist-mode-hook (setq header-line-format nil))
(add-hook! 'mpdel-tablist-mode-hook (setq header-line-format nil))
(add-hook! 'mpdel-tablist-mode-hook (hide-mode-line-mode 1))
(add-hook! 'navigel-tablist-mode-hook (hide-mode-line-mode 1))
(after! mpdel
    (setq libmpdel-hostname "127.0.0.2")
    (require 'mpdel)
    (mpdel-mode))

(setq mpdel-playlist-mode-map (make-sparse-keymap))
(map! :map mpdel-playlist-mode-map
    :desc "Play/Pause" :ne "p" #'libmpdel-playback-play-pause
    :desc "Browser" :ne "b" #'mpdel-browser-open
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
    (add-hook! 'org-mode-hook #'org-modern-mode)
    (add-hook! 'org-agenda-finalize-hook #'org-modern-agenda)
    (add-hook! 'org-mode-hook 'org-fancy-priorities-mode)
    (setq org-directory "~/org/"
          org-agenda-files '("~/org/todo.org" "~/org/video.org" "~/org/agenda.org")
          org-agenda-block-separator 8411
          org-tags-column 0
          org-pretty-entities t
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
    (setq org-fancy-priorities-list '("#A" "#B" "#C")
          org-priority-faces
              '((?A :foreground "#e93479" :weight bold)
                (?B :foreground "#ffffff" :weight bold)
                (?C :foreground "#5879fe" :weight bold))))

(font-lock-add-keywords 'org-mode
    '(("^ *\\([-]\\) "
        (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

(after! sx
    (add-hook! 'sx-question-mode-hook (setq header-line-format nil))
    (add-hook! 'sx-question-list-mode-hook (setq header-line-format nil))
    (add-hook! 'sx-question-list-mode-hook (hide-mode-line-mode 1))
    (setq sx-question-list-mode-map (make-sparse-keymap))
    (map! :map sx-question-list-mode-map
        :desc "Display Question" :ne "RET" #'sx-display-question)
    (custom-set-faces!
        '(markdown-inline-code-face :inherit fixed-pitch :height 1.05)
        '(markdown-markup-face :inherit variable-pitch)
        '(sx-question-list-unread-question :inherit variable-pitch :weight bold :height 1.09)
        '(sx-question-list-read-question :inherit variable-pitch :height 1.09)
        '(sx-question-mode-title :inherit variable-pitch :height 1.21)))

(after! treemacs
    (setq doom-themes-treemacs-theme "doom-colors")
    (setq doom-themes-treemacs-enable-variable-pitch t))
