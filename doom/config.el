;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Danny Wilson"
      user-mail-address "dwlsn@pm.me")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; Adjust default frame size
(setq initial-frame-alist
      (append initial-frame-alist
              '((left   . 33)
                (top    . 0)
                (width  . 120)
                (height . 47))))

;; Set scroll margins on top and bottom
(setq scroll-margin 32)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;
;;(setq doom-theme 'base16-oxocarbon-dark)
(setq doom-theme 'base16-tomorrow-night-eighties)


;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; Replace doom capture template for todos
(after! org
  (setf (alist-get "t" org-capture-templates nil nil #'equal)
        '("New task" entry
          (file+headline +org-capture-notes-file "Tasks")
          "* TODO %?\n%i\n%a" :prepend t))
  (setf (alist-get "d" org-capture-templates nil nil #'equal)
        '("New sprint day" entry
          (file+headline +org-capture-notes-file "Sprints")
          "* %t\n*** Aim: \n*** Report:" :prepend t)))

;; Hide signs like "~" or "_" or "*"
(setq org-hide-emphasis-markers t)

;; Increase indenation in org-indent
(setq org-indent-indentation-per-level 0)
(setq org-startup-indented t)
(setq org-pretty-entities t)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Enable auto save and backups
(setq auto-save-default t
      make-backup-files t)


;; Company disable in org mode
(setq company-global-modes '(not org-mode))

;; Allow hash to be entered
(global-set-key (kbd "M-3") #'(lambda () (interactive) (insert "#")))

;; Modeline
(setq doom-modeline-buffer-file-name-style 'truncate-upto-root)
(setq doom-modeline-lsp-icon 'nil)
(setq doom-modeline-env-enable-python 'nil)
(setq doom-modeline-percent-position 'nil)
(setq doom-modeline-position-column-line-format 'nil)
(setq lsp-modeline-code-actions-enable 'nil)
(setq lsp-modeline-diagnostics-enable 'nil)
(setq doom-modeline-default-eol-type 0)

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
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

;; make title bar small
(add-hook 'doom-after-init-hook (lambda () (tool-bar-mode 1) (tool-bar-mode 0)))

(require 'tramp)
(add-to-list 'tramp-methods
             '("gcssh"
               (tramp-login-program        "gcloud workstations ssh")
               (tramp-login-args           (("%h")
                                            ("--region" "europe-west2")
                                            ("--cluster" "workstation-cluster")
                                            ("--config" "workstation-config")))
               (tramp-async-args           (("-q")))
               (tramp-remote-shell         "/bin/bash")
               (tramp-remote-shell-args    ("-c"))
               (tramp-gw-args              (("-o" "GlobalKnownHostsFile=/dev/null")
                                            ("-o" "UserKnownHostsFile=/dev/null")
                                            ("-o" "StrictHostKeyChecking=no")))
               (tramp-default-port         22)))
