(require 'package)
;; Desabilitar inicializacao do gerenciador default
(setq package-enable-at-startup nil)

;; Repositorio MELPA
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize) ;; start packages

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Installing 'try' package
(use-package try
  :ensure t)

