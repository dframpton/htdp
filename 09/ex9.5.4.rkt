;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.5.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.5.4.rkt

;; Develop the function check-range1?, which consumes a list of temperature
;; measurements (represented as numbers) and checks whether all measurements
;; are between 5oC and 95oC.

;; Generalize the function to check-range?, which consumes a list of temperature
;; measurements and a legal interval and checks whether all measurements are
;; within the legal interval.

;; check-range1? : list-of-nums -> boolean
;; Compute whether a list of temperatures (numbers) are within a certain range
;; Examples:
;; (boolean=? (check-range1? empty)
;;            true)
;; (boolean=? (check-range1? (cons 5 empty))
;;            true)
;; (boolean=? (check-range1? (cons 10 (cons 20 (cons 30 empty))))
;;            true)
;; (boolean=? (not (check-range1? (cons 10 (cons 20 (cons 100 empty)))))
;;            true)
(define (check-range1? temps)
  (cond
    [(empty? temps) true]
    [else (and (<= 5 (first temps) 95)
               (check-range1? (rest temps)))]))

;; Tests
(boolean=? (check-range1? empty)
           true)
(boolean=? (check-range1? (cons 5 empty))
           true)
(boolean=? (check-range1? (cons 10 (cons 20 (cons 30 empty))))
           true)
(boolean=? (not (check-range1? (cons 10 (cons 20 (cons 100 empty)))))
           true)

;; check-range? : number number list-of-nums -> boolean
;; Compute whether a list of temperatures (numbers) are within a given range
;; Examples:
;; (boolean=? (check-range? 5 95 empty)
;;            true)
;; (boolean=? (check-range? 5 50 (cons 5 empty))
;;            true)
;; (boolean=? (check-range? 0 40 (cons 10 (cons 20 (cons 30 empty))))
;;            true)
;; (boolean=? (not (check-range? 0 40 (cons 10 (cons 20 (cons 100 empty)))))
;;            true)
(define (check-range? lower upper temps)
  (cond
    [(empty? temps) true]
    [else (and (<= lower (first temps) upper)
               (check-range1? (rest temps)))]))

;; Tests
(boolean=? (check-range? 5 95 empty)
           true)
(boolean=? (check-range? 5 50 (cons 5 empty))
           true)
(boolean=? (check-range? 0 40 (cons 10 (cons 20 (cons 30 empty))))
           true)
(boolean=? (not (check-range? 0 40 (cons 10 (cons 20 (cons 100 empty)))))
           true)
