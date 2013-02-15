;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.2.1.rkt

;; Translate the following five intervals on the real line into Scheme
;; functions that accept a number and return true if the number is in the
;; interval and false if it is outside:

;; General contract
;; function-name : number -> boolean

;; 1. the interval (3,7]
(define (greater-than-3-and-less-or-equal-7 n)
  (and (> n 3) (<= n 7)))

(greater-than-3-and-less-or-equal-7 3) ;; false
(greater-than-3-and-less-or-equal-7 4) ;; true
(greater-than-3-and-less-or-equal-7 7) ;; true
(greater-than-3-and-less-or-equal-7 8) ;; false

;; 2. the interval [3,7]
(define (greater-or-equal-3-and-less-or-equal-7 n)
  (and (>= n 3) (<= n 7)))

(greater-or-equal-3-and-less-or-equal-7 3) ;; true
(greater-or-equal-3-and-less-or-equal-7 4) ;; true
(greater-or-equal-3-and-less-or-equal-7 7) ;; true
(greater-or-equal-3-and-less-or-equal-7 8) ;; false

;; 3. the interval [3,9)
(define (greater-or-equal-3-and-less-than-9 n)
  (and (>= n 3) (< n 9)))

(greater-or-equal-3-and-less-than-9 3) ;; true
(greater-or-equal-3-and-less-than-9 4) ;; true
(greater-or-equal-3-and-less-than-9 8) ;; true
(greater-or-equal-3-and-less-than-9 9) ;; false

;; 4. the union of (1,3) and (9,11)
(define (is-between-1-3-or-between-9-11 n)
  (or (and (> n 1) (< n 3))
      (and (> n 9) (< n 11))))

(is-between-1-3-or-between-9-11 1)  ;; false
(is-between-1-3-or-between-9-11 2)  ;; true
(is-between-1-3-or-between-9-11 3)  ;; false
(is-between-1-3-or-between-9-11 5)  ;; false
(is-between-1-3-or-between-9-11 9)  ;; false
(is-between-1-3-or-between-9-11 10) ;; true
(is-between-1-3-or-between-9-11 11) ;; false

;; 5. the range of numbers outside of [1,3]
(define (outside-1-3 n)
  (or (< n 1) (> n 3)))

(outside-1-3 -1) ;; true
(outside-1-3  0) ;; true
(outside-1-3  1) ;; false
(outside-1-3  2) ;; false
(outside-1-3  3) ;; false
(outside-1-3  4) ;; true
