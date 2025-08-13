;;; private/my/+ui.el -*- lexical-binding: t; -*-

(setq
 doom-font (font-spec :family "UbuntuSansMono Nerd Font" :size 25)
 doom-variable-pitch-font (font-spec :family "UbuntuSansMono Nerd Font")
 doom-unicode-font (font-spec :family "UbuntuSansMono Nerd Font")
 )
(setq doom-big-font (font-spec :family "UbuntuSansMono Nerd Font" :size 27))
(remove-hook 'doom-init-ui-hook #'blink-cursor-mode)
(defun my-font-installed-p (font-name)
  "Check if font with FONT-NAME is available."
  (find-font (font-spec :name font-name)))

(defun my-setup-fonts ()
  "Setup fonts."
  (when (display-graphic-p)
    ;; Set default font
    (cl-loop for font in '("UbuntuSansMono Nerd Font" "CaskaydiaCove NFP" "Fira Code" "Jetbrains Mono"
                           "SF Mono" "Hack" "Source Code Pro" "Menlo"
                           "Monaco" "DejaVu Sans Mono" "Consolas")
             when (my-font-installed-p font)
             return (set-face-attribute 'default nil
                                        :family font
                                        :height 120))

    ;; Specify font for all unicode characters
    (cl-loop for font in '("Segoe UI Emoji" "Apple Symbols" "Symbola" "Symbol")
             when (my-font-installed-p font)
             return (set-fontset-font t 'symbol (font-spec :family font) nil 'prepend))

    ;; Emoji
    (cl-loop for font in '("Segoe UI Emoji" "Noto Color Emoji" "Apple Color Emoji")
             when (my-font-installed-p font)
             return (set-fontset-font t
                                      (if (< emacs-major-version 28)'symbol 'emoji)
                                      (font-spec :family font) nil 'prepend))

    ;; Specify font for Chinese characters
    (cl-loop for font in '("微软雅黑" "WenQuanYi Micro Hei Mono")
             when (my-font-installed-p font)
             return (set-fontset-font t 'han (font-spec :family font)))))

(my-setup-fonts)
(add-hook 'window-setup-hook #'my-setup-fonts)
(add-hook 'server-after-make-frame-hook #'my-setup-fonts)

;; (ignore-errors
;;   (load-theme 'modus-operandi-tinted :no-confirm))
;; 
(use-package nerd-icons
  :init
  (cl-loop for font in '("UbuntuSansMono Nerd Font" "CaskaydiaCove NFP" "Symbols Nerd Font Mono")
           when (my-font-installed-p font)
           return (setq nerd-icons-font-family font)))

;; (setq doom-theme 'doom-nord)
