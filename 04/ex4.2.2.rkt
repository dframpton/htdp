;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.2.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.2.2.rkt

;; Translate the following three Scheme functions into intervals on the line
;; of reals:

;; 1.
;; in-interval-1? : number -> boolean
;; Examples:
;; (in-interval-1? -4) ]=> false
;; (in-interval-1? -3) ]=> false
;; (in-interval-1? -2) ]=> true
;; (in-interval-1?  0) ]=> false
;; (in-interval-1?  1) ]=> false
;; (define (in-interval-1? x)
;;   (and (< -3 x) (< x 0)))
;;
;; -----(==========)------
;; -4  -3  -2  -1  0  1  2

;; 2.
;; in-interval-2? : number -> boolean
;; Examples:
;; (in-interval-2? 0) ]=> true
;; (in-interval-2? 1) ]=> false
;; (in-interval-2? 2) ]=> false
;; (in-interval-2? 3) ]=> true
;; (define (in-interval-2? x)
;;   (or (< x 1) (> x 2)))
;;
;; =======)--(======
;; -1  0  1  2  3  4

;; 3.
;; in-interval-3? : number -> boolean
;; Examples:
;; (in-interval-3? 0) ]=> true
;; (in-interval-3? 1) ]=> false
;; (in-interval-3? 3) ]=> false
;; (in-interval-3? 5) ]=> false
;; (in-interval-3? 6) ]=> true
;; (define (in-interval-3? x)
;;   (not (and (<= 1 x) (<= x 5))))
;;
;; =======)-----------(======
;; -1  0  1  2  3  4  5  6  7

;; Evaluate the following expressions by hand:

;; (in-interval-1? -2)
;; (and (< -3 -2) (< -2 0))
;; (and true (< -2 0))
;; (and true true)
;; true

;; (in-interval-2? -2)
;; (or (< -2 1) (> -2 2))
;; (or true (> -2 2))
;; true

;; (in-interval-3? -2)
;; (not (and (<= 1 -2) (<= -2 5)))
;; (not (and false (<= -2 5)))
;; (not false)
;; true
