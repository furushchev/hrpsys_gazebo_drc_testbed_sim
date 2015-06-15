#!/usr/bin/env roseus
;; make-73b2-env-for-gazebo.l
;; Author: Yuki Furuta <furushchev@jsk.imi.i.u-tokyo.ac.jp>

(ros::roseus "make_drc_testbed_env_for_gazebo")

(require :hrpsys-gazebo-utils "package://hrpsys_gazebo_tutorials/euslisp/hrpsys-gazebo-utils.l")

(require :drc-testbed-models "package://drc_task_common/euslisp/drc-testbed-models.l")


(defun make-drc-testbed-scene ()
  (let ((objlist (make-drc-testbed-models)))
    (instance scene :init
              :name "test_bed"
              :objects objlist)))



(generate-room-models "make-drc-testbed-scene")
