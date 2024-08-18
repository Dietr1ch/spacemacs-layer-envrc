;;; packages.el --- envrc layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2024 Sylvain Benner & Contributors
;;
;; Author: Dietrich Daroch <dietr1ch@daroch.me>
;; URL: https://github.com/Dietr1ch/spacemacs-layer-envrc
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This file was created by ~configuration-layer/create-layer~

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;

;; Briefly, each package to be installed or configured by this layer should be
;; added to `envrc-packages'. Then, for each package PACKAGE:
(defconst envrc-packages
  '(
    envrc
    ))

;; Then, for each package PACKAGE:

;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `envrc/init-PACKAGE' to load and initialize the package.
(defun envrc/init-envrc ()
  "Initialization for packages not referenced by another Spacemacs layer"
  (use-package envrc
    :hook
    (after-init . envrc-global-mode)
    )
  )

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `envrc/pre-init-PACKAGE' and/or
;;   `envrc/post-init-PACKAGE' to customize the package as it is loaded.
