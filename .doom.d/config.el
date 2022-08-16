;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-




;;;;;;;;;;;;;;;;;
;;; CONFIG.EL ;;;
;;;;;;;;;;;;;;;;;




;;RELEVANT INFO
;;===============================================================================
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;
;;===============================================================================



;; BASIC DOOM CONFIG ;;
;;---------------------



(setq doom-theme 'doom-dracula)
(setq display-line-numbers-type 'relative)
(setq org-directory "~/org/")


;; CUSTOMIZATION OF PACKAGES I INSTALLED ;;
;;-----------------------------------------


;;Vterm
(after! vterm
(setq vterm-shell "/usr/bin/fish"))

;;Matlab
(after! matlab-mode
  (add-to-list 'auto-mode-alist '("\\.m$" . matlab-mode)))


;; EMAIL MU4E ;;
;;--------------


;;email personnal
(set-email-account! "1-gmail-pers"
  '((mu4e-sent-folder       . "/1-gmail-pers/Sent Mail")
    (mu4e-drafts-folder     . "/1-gmail-pers/Drafts")
    (mu4e-trash-folder      . "/1-gmail-pers/Trash")
    (mu4e-refile-folder     . "/1-gmail-pers/All Mail")
    (user-mail-address      . "kalalindon@gmail.com")
    (user-full-name         . "Grégoire Richard")
    (smtpmail-smtp-user     . "kalalindon@gmail.com")
    (smtpmail-smtp-server   . "smtp.gmail.com")
    (smtpmail-smtp-service  . 465)
    (smtpmail-stream-type   . ssl))
  t)

;;email profesional
(set-email-account! "2-gmail-prof"
  '((mu4e-sent-folder       . "/2-gmail-prof/Sent Mail")
    (mu4e-drafts-folder     . "/2-gmail-prof/Drafts")
    (mu4e-trash-folder      . "/2-gmail-prof/Trash")
    (mu4e-refile-folder     . "/2-gmail-prof/All Mail")
    (user-mail-address      . "gregoire.a.richard@gmail.com")
    (user-full-name         . "Grégoire Richard")
    (smtpmail-smtp-user     . "gregoire.a.richard@gmail.com")
    (smtpmail-smtp-server   . "smtp.gmail.com")
    (smtpmail-smtp-service  . 465)
    (smtpmail-stream-type   . ssl))
  t)

;;email variables
(after! mu4e
(setq message-send-mail-function 'smtpmail-send-it)
(setq mu4e-headers-include-related nil)
(setq mu4e-context-policy 'ask-if-none
      mu4e-compose-context-policy 'always-ask)
(setq mu4e-search-threads nil)
(setq +mu4e-gmail-accounts '(("kalalindon@gmail.com" . "/1-gmail-pers")
                             ("gregoire.a.richard@gmail.com" . "/2-gmail-prof"))))




;; FONTS ;;
;;---------


(setq doom-font (font-spec :family "JetBrains Mono" :size 16.0))


;; KEYBINDS ;;
;;------------


;;custom plugin keybinds
(map! :leader
      (:prefix ("z" ."custom plugin keybinds" )
        (:prefix ("t" ."Treemacs" )
                "p" #'treemacs-rename-project
                "s" #'treemacs-switch-workspace
                "a" #'treemacs-add-project-to-workspace)

        (:prefix ("e" ."mu4e email" )
                "q" #'mu4e-quit)
        (:prefix ("m" ."Matlab" )
                "m" #'matlab-toggle-show-mlint-warnings)))
