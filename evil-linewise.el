(defgroup evil-linewise nil
  "Useful linewise mappings for Evil inspired by unimpaired.vim"
  :prefix "evil-linewise-"
  :group 'evil)

(evil-define-command evil-linewise-blank-lines-above (&optional count argument)
  "Inserts blank lines above the cursor"
  (interactive "p")
  (evil-open-above count)
  (evil-normal-state)
  (evil-next-line)
  (message nil))

(evil-define-command evil-linewise-blank-lines-below (&optional count argument)
  "Inserts blank lines below the cursor"
  (interactive "p")
  (evil-open-below count)
  (evil-normal-state)
  (evil-previous-line count)
  (message nil))

(define-key evil-normal-state-map (kbd "[ SPC") 'evil-linewise-blank-lines-above)
(define-key evil-normal-state-map (kbd "] SPC") 'evil-linewise-blank-lines-below)

(provide 'evil-linewise)
