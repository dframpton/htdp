;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.1.rkt

;; How do we have to change the function in figure 27 if we want to give
;; everyone a raise to $14?

;; The best way to change the hourly rate would be to define it as a separate
;; value, so it only has to be changed once, regardless of where or how many
;; times it is used.
(define RATE 14)

;; hours->wages : list-of-numbers -> list-of-numbers
;; Create a list of weekly wages from a list of weekly hours
;; Examples:
;; (= (hours->wages empty)
;;    empty)
;; (= (hours->wages (cons 28 empty))
;;    (cons 336 empty))
;; (= (hours->wages (cons 40 (cons 28 empty)))
;;    (cons 480 (cons 336 empty)))
(define (hours->wages hours)
  (cond
    [(empty? hours) empty]
    [else (cons (wage (first hours)) (hours->wages (rest hours)))]))

;; wage : number -> number
;; Compute the total wage (at $12 per hour) for h hours
(define (wage h)
  (* RATE h))

;; Tests
(hours->wages empty)
;; ]=> empty
(hours->wages (cons 28 empty))
;; ]=> (cons 392 empty)
(hours->wages (cons 40 (cons 28 empty)))
;; ]=> (cons 560 (cons 392 empty))
