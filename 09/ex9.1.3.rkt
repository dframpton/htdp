;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.1.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.1.3.rkt

;; Finish the development of add-up-3, that is, define the body and test the
;; complete function on some examples.

;; add-up-3 : list-of-3-numbers -> number
;; Add up the three numbers in a-list-of-3-numbers
(define (add-up-3 a-list-of-3-numbers)
  (+ (first a-list-of-3-numbers)
     (first (rest a-list-of-3-numbers))
     (first (rest (rest a-list-of-3-numbers)))))

;; Tests
(= (add-up-3 (cons 2 (cons 1 (cons 3 empty)))) 6)
(= (add-up-3 (cons 0 (cons 1 (cons 0 empty)))) 1)

;; Use the template for add-up-3 to develop distance-to-0-for-3, which computes
;; the distance of a 3-dimensional point to the origin.

;; A list of three numbers is one possible representation for 3-dimensional
;; points. The distance of a 3-dimensional point to the origin of the
;; coordinate grid is computed in the same manner as that of 2-dimensional
;; point: by squaring the numbers, adding them up, and taking the square root.

;; distance-to-0-for-3 : list-of-3-numbers -> number
;; Compute the distance of a 3-dimensional point to the origin
(define (distance-to-0-for-3 p)
  (sqrt (+ (sqr (first p))
           (sqr (first (rest p)))
           (sqr (first (rest (rest p)))))))
