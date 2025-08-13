(put 'customize-face 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values
   '((eval c-set-offset 'innamespace 0)
     (whitespace-line-column . 80))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-lead-face ((t (:background "wheat" :foreground "#000000" :weight bold))))
 '(ccls-sem-global-variable-face ((t (:underline t :weight extra-bold))))
 '(lsp-face-highlight-read ((t (:background "sea green"))))
 '(lsp-face-highlight-write ((t (:background "brown4"))))
 '(lsp-ui-sideline-current-symbol ((t (:foreground "grey38" :box nil))))
 '(lsp-ui-sideline-symbol ((t (:foreground "grey30" :box nil)))))

;; 关闭启动动画
(setq inhibit-startup-message t)

;; 增加io性能
(setq process-adaptive-read-buffering nil)
(setq read-process-output-max (* 1024 1024))

(use-package gcmh
  :hook (emacs-startup . gcmh-mode)
  :init
  (setq gcmh-idle-delay 'auto
	  gcmh-auto-idle-delay-factor 10
	  gcmh-high-cons-threshold 33554432)) ; 32MB
