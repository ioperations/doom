;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.

(package! affe)
(package! fzf)
(package! rg)
(package! tree-sitter)
(package! tree-sitter-langs)
(package! highlight-indent-guides)
(package! avy)
(package! lispyville)
(package! annotate)
(package! eshell-autojump)
(package! evil-collection)
(package! evil-nerd-commenter)
(package! frog-jump-buffer)
(package! git-link)
(package! link-hint)
(package! htmlize)
(package! rg)
(package! smart-forward)
(package! symbol-overlay)
(package! tldr)
(package! try)
(package! eldoc-box)
;; (package! awesome-tab)
(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

(setq centaur-tabs-set-icons t)
(setq centaur-tabs-icon-type 'all-the-icons)  ; or 'nerd-icons
(setq centaur-tabs-height 32)

(use-package recentf
  :commands (recentf-open-files)
  :hook (after-init . recentf-mode)
  :bind ("C-x C-r" . recentf-open-files)
  :init (setq recentf-max-saved-items 500
              recentf-exclude
              '("\\.?cache" ".cask" "url" "COMMIT_EDITMSG\\'" "bookmarks"
                "\\.\\(?:gz\\|gif\\|svg\\|png\\|jpe?g\\|bmp\\|xpm\\)$"
                "\\.?ido\\.last$" "\\.revive$" "/G?TAGS$" "/.elfeed/"
                "^/tmp/" "^/var/folders/.+$" ; "^/ssh:"
                (lambda (file) (file-in-directory-p file package-user-dir))))
  :config
  (push (expand-file-name recentf-save-file) recentf-exclude))

(package! company-irony)
(package! company-irony-c-headers)
(package! flycheck-irony)
(package! irony)
(package! irony-eldoc)

(package! racer :disable t)

(package! function-args)

(package! selectrum)
(package! lsp-ui)

(package! lsp-mode)

(package! markdown-mode)
(package! yasnippet)
(package! all-the-icons)

;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;; (package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;; (package! another-package
;;   :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;; (package! this-package
;;   :recipe (:host github :repo "username/repo"
;;            :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;; (package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;; (package! builtin-package :recipe (:nonrecursive t))
;; (package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;; (package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;; (package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;; (unpin! pinned-package)
;; ...or multiple packages
;; (unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;; (unpin! t)
