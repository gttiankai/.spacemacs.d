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
(provide 'init-config)
