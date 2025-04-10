;; config evil-terminal-cursor-changer
(unless (display-graphic-p)
  (require 'evil-terminal-cursor-changer)
  (evil-terminal-cursor-changer-activate))

(setq evil-motion-state-cursor 'box)  ; █
(setq evil-visual-state-cursor 'box)  ; █
(setq evil-normal-state-cursor 'box)  ; █
(setq evil-insert-state-cursor 'bar)  ; ⎸
(setq evil-emacs-state-cursor  'hbar) ; _

;; alias jk = escape
(setq-default evil-escape-key-sequence "jk")
;; set tab width 4
(setq-default c-basic-offset 4)
(setq-default tab-width 4)
;; 用空格替代 Tab
(setq-default indent-tabs-mode nil)
;; set fill-column to 120
;; (setq-default fill-column 120)
;; (setq fill-column 120)
;; 全局启用垂直参考线
;; (global-display-fill-column-indicator-mode t)
;; 编程模型下开启
(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)
(provide 'init-config)
