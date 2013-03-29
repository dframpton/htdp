;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.3.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.3.2.rkt

;; Develop the function tie-dyed. It consumes a natural number and produces a
;; list of that many numbers, each randomly chosen in the range from 20 and 120.
;; Use tie-dyed to apply draw-circles from exercise 9.5.8.

;; tie-dyed : number -> list-of-nums
;; Produce a list of random numbers in the range 20 - 120, of the size/length
;; of the given number.
(define (tie-dyed n)
  (cond
    [(zero? n) empty]
    [else (cons (random-n-m 20 120)
                (tie-dyed (sub1 n)))]))

;; random-n-m : integer integer -> integer
;; Compute a random number between n and m-1
;; Assume: n < m
(define (random-n-m n m)
  (+ (random (- m n)) n))

;; draw-shapes : posn list-of-nums -> boolean
;; Draw circles centered at a-posn with radii taken from a-lon
(define (draw-shapes a-posn a-lon)
  (cond
    [(empty? a-lon) true]
    [else (and (draw-circle a-posn (first a-lon))
               (draw-shapes a-posn (rest a-lon)))]))

;; Tests
(tie-dyed 0)
(tie-dyed 1)
(tie-dyed 10)

(start 240 240)
(draw-shapes (make-posn 120 120) (tie-dyed 10))
