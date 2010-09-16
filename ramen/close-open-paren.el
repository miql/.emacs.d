(defconst all-paren-syntax-table
  (let ((table (make-syntax-table)))
    (modify-syntax-entry ?{ "(}" table)
    (modify-syntax-entry ?} "){" table)
    (modify-syntax-entry ?\( "()" table)
    (modify-syntax-entry ?\) ")(" table)
    (modify-syntax-entry ?\[ "(]" table)
    (modify-syntax-entry ?\] ")[" table)
    table)
  "A syntax table giving all parenthesis parenthesis syntax.")

(defun close-open-paren ()
  (interactive)
  (condition-case nil
      (with-syntax-table all-paren-syntax-table
        (insert (save-excursion (up-list -1) (matching-paren (char-after)))))
    (error (message "No paren to close"))))
