;;; evil-comint.el --- Bindings for `comint-mode'. -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, comint

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; Bindings for `comint-mode'.

;;; Code:
(require 'comint)
(require 'evil)

(defun evil-comint-setup ()
  (when evil-want-C-d-scroll
    (evil-define-key 'normal comint-mode-map
      (kbd "C-d") #'evil-scroll-down))

  (evil-define-key 'normal comint-mode-map
    (kbd "C-j") #'comint-next-input
    (kbd "C-k") #'comint-previous-input
    (kbd "gj") #'comint-next-input
    (kbd "gk") #'comint-previous-input
    (kbd "]") #'comint-next-input
    (kbd "[") #'comint-previous-input)

  (evil-define-key 'insert comint-mode-map
    (kbd "<up>") #'comint-previous-input
    (kbd "<down>") #'comint-next-input))

(provide 'evil-comint)
;;; evil-comint.el ends here
