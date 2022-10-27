;;; private/my/+ui.el -*- lexical-binding: t; -*-

(setq
 doom-font  ;; (font-spec :family "CaskaydiaCove NF" :size 15 :weight 'normal)
(font-spec :family "CaskaydiaCove NF" :size 15)
 doom-variable-pitch-font (font-spec :family "CaskaydiaCove NF")
 doom-unicode-font (font-spec :family "CaskaydiaCove NF")
 )
(setq doom-big-font (font-spec :family "CaskaydiaCove NF" :size 17 ))
(remove-hook 'doom-init-ui-hook #'blink-cursor-mode)

;; (setq doom-theme 'doom-nord)
