;;;; -*- Mode: Lisp; indent-tabs-mode: nil -*-
;;;; ==========================================================================
;;;; package.lisp --- The time package
;;;;
;;;; Copyright (c) 2013, Nikhil Shetty <nikhil.j.shetty@gmail.com>
;;;;   All rights reserved.
;;;;
;;;; Redistribution and use in source and binary forms, with or without
;;;; modification, are permitted provided that the following conditions
;;;; are met:
;;;;
;;;;  o Redistributions of source code must retain the above copyright
;;;;    notice, this list of conditions and the following disclaimer.
;;;;  o Redistributions in binary form must reproduce the above copyright
;;;;    notice, this list of conditions and the following disclaimer in the
;;;;    documentation and/or other materials provided with the distribution.
;;;;  o Neither the name of the author nor the names of the contributors may
;;;;    be used to endorse or promote products derived from this software
;;;;    without specific prior written permission.
;;;;
;;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;;;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;;;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
;;;; A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT
;;;; OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
;;;; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
;;;; LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
;;;; DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
;;;; THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
;;;; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
;;;; OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
;;;; ==========================================================================

(defpackage :base-time-backend
  (:use :cl :cepl-utils)
  (:export :tcompile-obj
           :with-t-obj
           :merge-tcompile-obj
           :add-time-syntax
           :def-time-condition
           :t-code
           :t-run-test
           :t-expired-test
           :t-local-vars
           :t-closed-vars
           :t-override))
(defpackage :base-time
  (:use :cl :cepl-utils :base-time-backend)
  (:nicknames :ct :ctime)
  (:export :tlambda
           :tdefun
           :make-stepper
           :def-time-units
           :make-time-source
           :with-time-source
           :from-now
           :beforep
           :afterp
           :betweenp
           :before
           :after
           :between
           :then
           :repeat
           :once
           :make-stepper
           :each*
           :milliseconds
           :seconds
           :minutes
           :hours))
(defpackage :time-syntax)

(defpackage :conditional-functions
  (:use :cl)
  (:nicknames :cfunc)
  (:export :signal-expired
           :with-expired
           :defcfun
           :expiredp))

(defpackage :tiny-time-manager
  (:use :cl :cepl-utils :base-time)
  (:nicknames :ttm)
  (:export :update :add :release :clean))
