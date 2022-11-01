;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Danny Wilson"
      user-mail-address "dwlsn@pm.me")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
 (setq doom-font (font-spec :family "JetBrains Mono" :size 15 :weight 'medium))

;; Adjust default frame size
(setq initial-frame-alist
      (append initial-frame-alist
              '((left   . 33)
                (top    . 0)
                (width  . 140)
                (height . 50))))

;; Set scroll margins on top and bottom
(setq scroll-margin 32)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'base16-woodland)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Replace doom capture template for todos
(after! org
  (setf (alist-get "t" org-capture-templates nil nil #'equal)
        '("new custom todo" entry
          (file+headline +org-capture-todo-file "Inbox")
          "* TODO %?\n%i\n%a" :prepend t)))

;; Hide signs like "~" or "_" or "*"
(setq org-hide-emphasis-markers t)

;; Increase indenation in org-indent
(setq org-indent-indentation-per-level 6)
(setq org-indent-boundary-char ?　)


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Enable auto save and backups
(setq auto-save-default t
      make-backup-files t)


;; Here are some additional functions/macros that could help you configure Doom:
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
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
