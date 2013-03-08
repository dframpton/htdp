;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.5.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.5.3.rkt

;; Take a look at these structure and data definitions:

(define-struct vec (x y))
;; A speed-vector (vec) is a structure: (make-vec x y)  
;; where both x and y are positive numbers.

;; Develop the function checked-make-vec, which should be understood as a
;; checked version of the primitive operation make-vec. It ensures that the
;; arguments to make-vec are positive numbers, and not just arbitrary numbers.
;; In other words, checked-make-vec enforces our informal data definition.

;; checked-make-vec : Scheme-value Scheme-value -> vec
;; Ensure arguments to make-vec are positive numbers
(define (checked-make-vec x y)
  (cond
    [(and (number? x)
          (number? y)
          (>= x 0)
          (>= y 0))
     (make-vec x y)]
    [else (error 'checked-make-vec "two positive numbers expected")]))

;; Tests
(checked-make-vec 2 5)
(checked-make-vec 2 'bad)
