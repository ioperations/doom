;;; private/my/+ui.el -*- lexical-binding: t; -*-

(setq
 doom-font (font-spec :family "UbuntuSansMono Nerd Font" :size 25)
 doom-variable-pitch-font (font-spec :family "UbuntuSansMono Nerd Font")
 doom-unicode-font (font-spec :family "UbuntuSansMono Nerd Font")
 )
(setq doom-big-font (font-spec :family "UbuntuSansMono Nerd Font" :size 27))
(remove-hook 'doom-init-ui-hook #'blink-cursor-mode)

;; (setq doom-theme 'doom-nord)
