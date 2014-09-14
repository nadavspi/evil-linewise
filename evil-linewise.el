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

(evil-define-command evil-linewise-paste-newline-below
  "Pastes in a new line below"
  (interactive)
  ;; (move-end-of-line 1)
  ;; (newline-and-indent)
  (evil-open-below 1)
  (evil-normal-state)
  (evil-paste-after 1)
  (message nil))

(evil-define-command evil-linewise-paste-newline-above
  "Pastes in a new line above"
  (interactive)
  (evil-open-above 1)
  (evil-normal-state)
  (evil-paste-after 1)
  (message nil))

(define-key evil-normal-state-map (kbd "[ SPC") 'evil-linewise-blank-lines-above)
(define-key evil-normal-state-map (kbd "] SPC") 'evil-linewise-blank-lines-below)

(define-key evil-normal-state-map (kbd "[ e") 'evil-linewise-move-text-up)
(define-key evil-normal-state-map (kbd "] e") 'evil-linewise-move-text-down)

(define-key evil-normal-state-map (kbd "[ p") 'evil-linewise-paste-newline-above)
(define-key evil-normal-state-map (kbd "] p") 'evil-linewise-paste-newline-below)

(provide 'evil-linewise)
