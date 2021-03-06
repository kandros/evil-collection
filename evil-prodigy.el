;;; evil-prodigy.el --- Evil bindings for prodigy -*- lexical-binding: t -*-

;; Copyright (C) 2017 James Nguyen

;; Author: James Nguyen <james@jojojames.com>
;; Maintainer: James Nguyen <james@jojojames.com>
;; Pierre Neidhardt <ambrevar@gmail.com>
;; URL: https://github.com/jojojames/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, prodigy, tools

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
;; Evil bindings for `prodigy'.

;;; Code:
(require 'evil)
(require 'prodigy nil t)

(defun evil-prodigy-setup ()
  (evil-define-key 'normal prodigy-mode-map
    "q" 'quit-window
    "j" 'prodigy-next
    "k" 'prodigy-prev
    "gg" 'prodigy-first
    "G" 'prodigy-last

    ;; TODO: Marking subject to change.
    "m" 'prodigy-mark
    "*t" 'prodigy-mark-tag
    "M" 'prodigy-mark-all
    "u" 'prodigy-unmark
    "*T" 'prodigy-unmark-tag
    "U" 'prodigy-unmark-all

    "s" 'prodigy-start
    "S" 'prodigy-stop
    "gr" 'prodigy-restart
    "`" 'prodigy-display-process
    (kbd "RET") 'prodigy-browse
    "it" 'prodigy-add-tag-filter
    "in" 'prodigy-add-name-filter
    "I" 'prodigy-clear-filters
    "Jm" 'prodigy-jump-magit
    "Jd" 'prodigy-jump-dired

    "gj" 'prodigy-next-with-status
    "gk" 'prodigy-prev-with-status
    (kbd "C-j") 'prodigy-next-with-status
    (kbd "C-k") 'prodigy-prev-with-status
    (kbd "Y") 'prodigy-copy-cmd)

  (evil-define-key 'normal prodigy-view-mode-map
    "x" 'prodigy-view-clear-buffer))

(provide 'evil-prodigy)
;;; evil-prodigy.el ends here
