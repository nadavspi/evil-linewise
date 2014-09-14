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

(evil-define-command evil-linewise-move-text-down (&optional count argument)
  "Moves line arg lines down. Uses move-text.el"
  (interactive "p")
  (move-text-down count))

(evil-define-command evil-linewise-move-text-up (&optional count argument)
  "Moves line arg lines up. Uses move-text.el"
  (interactive "p")
  (move-text-up count))

(define-key evil-normal-state-map (kbd "[ SPC") 'evil-linewise-blank-lines-above)
(define-key evil-normal-state-map (kbd "] SPC") 'evil-linewise-blank-lines-below)

(define-key evil-normal-state-map (kbd "[ e") 'evil-linewise-move-text-up)
(define-key evil-normal-state-map (kbd "] e") 'evil-linewise-move-text-down)

(provide 'evil-linewise)
