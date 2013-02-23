;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.1.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp")))))

;; ex6.1.1.rkt

;; Evaluate the following expressions by hand. Assume that sqr performs its
;; computation in a single step. Check the results with DrScheme's stepper.

;; distance-to-0 : posn -> number
;; Compute the distance of a-posn to the origin.
(define (distance-to-0 a-posn)
  (sqrt
    (+ (sqr (posn-x a-posn))
       (sqr (posn-y a-posn)))))

;; 1.
;; (distance-to-0 (make-posn 3 4))

;; (sqrt
;;  (+ (sqr (posn-x (make-posn 3 4)))
;;     (sqr (posn-y (make-posn 3 4)))))

;; (sqrt
;;  (+ (sqr 3)
;;     (sqr (posn-y (make-posn 3 4)))))

;; (sqrt
;;  (+ 9
;;     (sqr (posn-y (make-posn 3 4)))))

;; (sqrt (+ 9 (sqr 4)))

;; (sqrt (+ 9 16))

;; (sqrt 25)

;; 5

;; 2.
;; (distance-to-0 (make-posn (* 2 3) (* 2 4)))

;; (distance-to-0 (make-posn 6 (* 2 4)))

;; (distance-to-0 (make-posn 6 8))

;; (sqrt
;;  (+ (sqr (posn-x (make-posn 6 8)))
;;     (sqr (posn-y (make-posn 6 8)))))

;; (sqrt
;;  (+ (sqr 6)
;;     (sqr (posn-y (make-posn 6 8)))))

;; (sqrt
;;  (+ 36
;;     (sqr (posn-y (make-posn 6 8)))))

;; (sqrt (+ 36 (sqr 8)))

;; (sqrt (+ 36 64))

;; (sqrt 100)

;; 10

;; 3.
;; (distance-to-0 (make-posn 12 (- 6 1)))

;; (distance-to-0 (make-posn 12 5))

;; (sqrt
;;  (+ (sqr (posn-x (make-posn 12 5)))
;;     (sqr (posn-y (make-posn 12 5)))))

;; (sqrt
;;  (+ (sqr 12)
;;     (sqr (posn-y (make-posn 12 5)))))

;; (sqrt
;;  (+ 144
;;     (sqr (posn-y (make-posn 12 5)))))

;; (sqrt (+ 144 (sqr 5)))

;; (sqrt (+ 144 25))

;; (sqrt 169)

;; 13
