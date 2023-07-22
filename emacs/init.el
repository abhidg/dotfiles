(require 'use-package)
(require 'package)

(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(use-package magit :ensure t)
(load-theme 'modus-vivendi)
(setq send-mail-function 'sendmail-send-it
      sendmail-program "/opt/homebrew/bin/msmtp"
      mail-specify-envelope-from t
      mail-envelope-from 'header
      message-sendmail-envelope-from 'header
      notmuch-fcc-dirs nil)
(use-package notmuch :ensure t)

