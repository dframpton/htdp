;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.3.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.3.3.rkt

;; Provide a structure definition that represents an airforce's jet fighters.
;; Assume that a fighter has four essential properties: designation ('f22,
;; 'tornado, or 'mig22), acceleration, top-speed, and range. Then develop the
;; function within-range. The function consumes a fighter record and the
;; distance of a target from the (fighter's) base. It determines whether the
;; fighter can reach the intended target. Also develop the function
;; reduce-range. The function consumes a fighter record and produces one in
;; which the range field is reduced to 80% of the original value.

(define-struct fighter (designation acceleration top-speed range))

;; within-range : fighter number -> boolean
;; Determine whether fighter can reach the intended target
(define (within-range a-fighter target)
  (>= (fighter-range a-fighter) target))

;; reduce-range : fighter -> fighter
;; Reduce range field by 80%
(define (reduce-range a-fighter)
  (make-fighter (fighter-designation a-fighter)
                (fighter-acceleration a-fighter)
                (fighter-top-speed a-fighter)
                (* (fighter-range a-fighter) 0.8)))

;; Tests
(within-range (make-fighter 'f22 4 1000 600) 400)
(within-range (make-fighter 'cessna 1 200 300) 400)
(reduce-range (make-fighter 'f22 4 1000 600))
