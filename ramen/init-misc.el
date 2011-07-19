;;; init-misc.el --- Things that don't fit anywhere else

(blink-cursor-mode 1)
(column-number-mode 1)
(delete-selection-mode 1)
(winner-mode 1)

(mapc (lambda (cmd) (put cmd 'disabled nil))
      '(downcase-region
        upcase-region
        narrow-to-page
        narrow-to-region
        scroll-left))

(setq auto-save-default nil
      initial-scratch-message nil
      line-move-visual nil
      mark-even-if-inactive t
      mode-line-in-non-selected-windows nil
      parens-require-spaces nil
      ring-bell-function 'ignore
      scroll-preserve-screen-position t
      sentence-end-double-space nil
      tramp-default-method "sshx"
      uniquify-buffer-name-style 'post-forward-angle-brackets)

(setq-default fill-column 78)
