;;; private/my/+ui.el -*- lexical-binding: t; -*-

(setq
 doom-font (font-spec :family "CaskaydiaCove Nerd Font" :size 21)
 doom-variable-pitch-font (font-spec :family "CaskaydiaCove Nerd Font")
 doom-unicode-font (font-spec :family "CaskaydiaCove Nerd Font")
 )
(setq doom-big-font (font-spec :family "CaskaydiaCove Nerd Font" :size 22))
(remove-hook 'doom-init-ui-hook #'blink-cursor-mode)

;; (setq doom-theme 'doom-nord)
