;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.3.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.3.2.rkt

;; Suppose the Definitions window contains:

;; f : number number  ->  number
(define (f x y)
  (+ (* 3 x) (* y y)))

;; Show how DrScheme evaluates the following expressions, step by step:

;; 1.
;; (+ (f 1 2) (f 2 1))

;; (+
;;  (+ (* 3 1) (* 2 2))
;;  (f 2 1))

;; (+
;;  (+ 3 (* 2 2))
;;  (f 2 1))

;; (+ (+ 3 4) (f 2 1))

;; (+ 7 (f 2 1))

;; (+ 7 (+ (* 3 2) (* 1 1)))

;; (+ 7 (+ 6 (* 1 1)))

;; (+ 7 (+ 6 1))

;; (+ 7 7)

;; 14

;; 2.
;; (f 1 (* 2 3))

;; (f 1 6)

;; (+ (* 3 1) (* 6 6))

;; (+ 3 (* 6 6))

;; (+ 3 36)

;; 39

;; 3.
;; (f (f 1 (* 2 3)) 19)

;; (f (f 1 6) 19)

;; (f (+ (* 3 1) (* 6 6)) 19)

;; (f (+ 3 (* 6 6)) 19)

;; (f (+ 3 36) 19)

;; (f 39 19)

;; (+ (* 3 39) (* 19 19))

;; (+ 117 (* 19 19))

;; (+ 117 361)

;; 478
