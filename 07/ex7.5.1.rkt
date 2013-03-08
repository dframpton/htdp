;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.5.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.5.1.rkt

;; A checked version of area-of-disk can also enforce that the arguments to the
;; function are positive numbers, not just arbitrary numbers. Modify
;; checked-area-of-disk in this way.

;; area-of-disk : number -> number
;; Compute the area of a disk with radius r
(define (area-of-disk r) 
  (* 3.14 (* r r)))

;; checked-area-of-disk : Scheme-value -> number
;; Compute the area of a disk with radius r, if r is a number
(define (checked-area-of-disk r)
  (cond
    [(and (number? r) (>= r 0))
     (area-of-disk r)]
    [else (error 'checked-area-of-disk "positive number expected")]))

;; Tests
(checked-area-of-disk 5)
(checked-area-of-disk 0)
(checked-area-of-disk -5)
