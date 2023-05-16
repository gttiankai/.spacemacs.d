(global-set-key (kbd "C-c f") 'helm-for-files)

(global-set-key (kbd "C-c i") 'helm-imenu)

(global-set-key (kbd "C-x C-f") 'ido-find-file)

(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

(global-set-key (kbd "C-x f") nil)

;; 使用f8快捷键删除行末多余的空格
(global-set-key [f8] 'delete-trailing-whitespace)

(defun window-move-up (&optional arg)
  "Current window move-up 2 lines."
  (interactive "P")
  (if arg
      (scroll-up arg)
    (scroll-up 2)))

(defun window-move-down (&optional arg)
  "Current window move-down 3 lines."
  (interactive "P")
  (if arg
      (scroll-down arg)
    (scroll-down 3)))

(defun other-window-move-up (&optional arg)
  "Other window move-up 1 lines."
  (interactive "p")
  (scroll-other-window arg))

(defun other-window-move-down (&optional arg)
  "Other window move-down 2 lines."
  (interactive "P")
  (if arg
      (scroll-other-window-down arg)
    (scroll-other-window-down 2)))


(global-set-key [(meta v)] 'scroll-down)
;; 下面这两个键模拟Vi的光标不动屏幕动效果, 我很喜欢, 几乎总在使用.
(global-set-key [(meta n)] 'window-move-up)
(global-set-key [(meta p)] 'window-move-down)

;; (global-set-key [(meta n)] 'next-line)
;; (global-set-key [(meta p)] 'previous-line)
;; 同上, 但是是另一个buffer窗口上下移动. 常常查看帮助用这个.
(global-set-key [(meta N)] 'other-window-move-down)
(global-set-key [(meta P)] 'other-window-move-up)

(provide 'init-keymap)
