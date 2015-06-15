#!/usr/bin/env roseus
;; convert-drc-object-to-irtmodel.l
;; Author: Yuki Furuta <furushchev@jsk.imi.i.u-tokyo.ac.jp>

(when (null (find-package 'ros))
  (error "DO NOT USE roseus but irteusgl!!!!"))

#-:jsk
(jsk)
#-:rbrain-basic
(rbrain)

(defun convert-drc-object-to-irtmodel ()
  (let ((objs (make-drc-testbed-models)))
    (dolist (obj objs)
      (convert-to-irtmodel
       obj
;;       :model-name (send (class obj) :name)
       :output-directory "models"))))

(convert-drc-object-to-irtmodel)
