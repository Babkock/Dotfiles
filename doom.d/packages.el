;; -*- no-byte-compile: t; -*-
(package! with-editor
          :pin "bbc60f68ac190f02da8a100b6fb67cf1c27c53ab"
          :recipe (:host github :repo "magit/with-editor"))
(package! transient
      :pin "c2bdf7e12c530eb85476d3aef317eb2941ab9440"
      :recipe (:host github :repo "magit/transient"))

(package! all-the-icons)
(package! beacon)         ;; Honestly really nice
(package! cl-libify)      ;; This is important to suppress errors
(package! dired-sidebar)
(package! dired-hacks)
(package! elfeed-org)     ;; Elfeed
(package! elfeed-goodies) ;; Elfeed
(package! fancy-battery)  ;; Not neccessary but neat
(package! helm-org-rifle)
(package! ivy-mpdel)
(package! libmpdel)
(package! mastodon)
(package! mpdel)
(package! org-fancy-priorities)
(package! org-modern)
(package! pinentry)
(package! sx)
