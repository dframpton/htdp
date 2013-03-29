;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.3.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.3.1.rkt

;; Scheme provides the operation random. It consumes a natural number n greater
;; than 1, and produces a random integer between 0 and n - 1:

;; random :  N -> N
;; Compute a natural number between 0 and n-1
;; (define (random n) ...)

;; Two successive uses of (random n) may produce two distinct results.

;; Now consider the following definition. Formulate a succinct and precise
;; purpose statement for random-n-m. Use a number line with an interval to
;; explain the result of (random n). Use a symbolic evaluation to support your
;; explanation.

;; random-n-m : integer integer -> integer
;; Compute a random number between n and m-1
;; Assume: n < m
(define (random-n-m n m)
  (+ (random (- m n)) n))

;; Step through
;; (random-n-m 2 6)
;; (+ (random (- 6 2)) 2)
;; (+ (random 4) 2)
;; (+ 2 2)
;; 4

;; NB: Number lines from the solution -- come back to this.

;; (random n) returns a number in this interval:
;; --------[-----------------)---
;;    -1   0   1   2   ...   n

;; (random (- m n)) returns a number in this interval:
;; --------[------------------)----
;;    -1   0   1   2   ...   m-n

;; (+ (random (- m n)) n) returns a number in this interval:
;; --------[-----------------------)-----
;;    -1   n   n+1   n+2   ...   m-n+n

;; That interval is the same as this one. So (+ (random (- m n)) n)
;; returns a number in this interval:
;; --------[---------------------)---
;;    -1   n   n+1   n+2   ...   m
