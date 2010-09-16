(defun comment-line ()
  (interactive)
  (if (= (line-beginning-position) (line-end-position))
      (next-line 1)
    (progn
      (back-to-indentation)
      (set-mark-command nil)
      (end-of-line nil)
      (comment-dwim nil)
      (back-to-indentation)
      (next-line 1))))

(defun duplicate-line ()
  (interactive)
  (let ((col (current-column)))
    (beginning-of-line 1)
    (kill-new "")
    (kill-line 1)
    (yank)
    (yank)
    (previous-line 1)
    (move-to-column col)))

(defun indent-current-region-by (num-spaces)
  (indent-rigidly (region-beginning) (region-end) num-spaces))

(defun indent-current-region ()
  (interactive)
  (indent-current-region-by tab-width))

(defun dedent-current-region ()
  (interactive)
  (indent-current-region-by (- tab-width)))

(unless (fboundp 'kill-whole-line)
  (defun kill-whole-line (&optional arg)
    (interactive "p")
    (unwind-protect
        (mark-line arg)
      (kill-region (region-beginning) (region-end)))))

(defun mark-line (arg)
  (interactive "p")
  (beginning-of-line nil)
  (set-mark-command nil)
  (forward-line arg))

(defun scroll-down-1 ()
  (interactive)
  (scroll-down 1))

(defun scroll-up-1 ()
  (interactive)
  (scroll-up 1))
