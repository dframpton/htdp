;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.2.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.2.5.rkt

;; A typical exercise in an algebra book asks the reader to evaluate an
;; expression like n/3 + 2 for n=2, n=5, and n=9. Using Scheme, we can
;; formulate such an expression as a program and use the program as many times
;; as necessary. Here is the program that corresponds to the above expression:

(define (f n)
  (+ (/ n 3) 2))

;; First determine the result of the expression at n=2, n=5, and n=9 by hand,
;; then with DrScheme's stepper.

(f 2) ;; ]=> 2.(6)
(f 5) ;; ]=> 3.(6)
(f 9) ;; ]=> 5

;; Also formulate the following three expressions as programs:
;; 1. n^2 + 10
;; 2. (1/2) * n^2 + 20
;; 3. 2 - (1/n)

(define (f1 n)
  (+ (sqr n) 10))

(define (f2 n)
  (+ (* 1/2 (sqr n))
     20))

(define (f3 n)
  (- (/ 1 n) 2))

;; Determine their results for n=2 and n=9 by hand and with DrScheme.

(f1 2) ;; ]=> 14
(f1 9) ;; ]=> 91
(f2 2) ;; ]=> 22
(f2 9) ;; ]=> 60.5
(f3 2) ;; ]=> -1.5
(f3 9) ;; ]=> -1.(8)
