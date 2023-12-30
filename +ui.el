;;; private/my/+ui.el -*- lexical-binding: t; -*-

(setq
 doom-font (font-spec :family "CaskaydiaCove Nerd Font Bold" :size 21)
 doom-variable-pitch-font (font-spec :family "CaskaydiaCove Nerd Font Bold")
 doom-unicode-font (font-spec :family "CaskaydiaCove Nerd Font Bold")
 )
(setq doom-big-font (font-spec :family "CaskaydiaCove Nerd Font Bold" :size 22))
(remove-hook 'doom-init-ui-hook #'blink-cursor-mode)

;; (setq doom-theme 'doom-nord)
