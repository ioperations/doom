;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(load! "+bindings")
(load! "+org")
(load! "+ui")

;; enable it in most programming languages
(add-hook 'prog-mode-hook #'eglot-ensure)

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               `(c++-mode . ("clangd" "--completion-style=detailed" 
                             "--background-index" 
                             "--suggest-missing-includes" 
                             "--all-scopes-completion" 
                             "--header-insertion=iwyu" 
                             "--offset-encoding=utf-32" 
                             "--enable-config" 
                             "-log=verbose")
                                      )))

(add-hook 'prog-mode-hook #'tree-sitter-hl-mode)
(add-hook 'prog-mode-hook #'highlight-indent-guides-mode)
(add-hook 'prog-mode-hook #'eldoc-box-hover-mode)


(setq highlight-indent-guides-method 'column)
(global-git-gutter-mode +1)

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "aodong.qin"
    user-mail-address "ioperations.c@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)
;; editor enhancement
(setq display-line-numbers 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(custom-set-variables
 '(ediff-window-setup-function 'ediff-setup-windows-plain)
 '(ediff-diff-options "-w")
 '(ediff-split-window-function 'split-window-horizontally))

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
(use-package lsp-ui
  :ensure t)

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook ((lsp-mode . lsp-enable-which-key-integration)
         (lsp-managed-mode . lsp-modeline-diagnostics-mode)
         (lsp-mode . lsp-headerline-breadcrumb-mode)
         (lsp-mode . lsp-modeline-code-actions-mode)))

(use-package awesome-tab
  :config
  (awesome-tab-mode t))

(setq lsp-lens-enable nil)
