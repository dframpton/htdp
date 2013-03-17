;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.2.rkt

;; No employee could possibly work more than 100 hours per week. To protect
;; the company against fraud, the function should check that no item of the
;; input list of hours->wages exceeds 100. If one of them does, the function
;; should immediately signal the error "too many hours".

;; How do we have to change the function in figure 27 if we want to perform
;; this basic reality check?

(define RATE 14)

;; checked-hours->wages : list-of-numbers -> list-of-numbers
;; Check that no list item exceeds 100 hours
;; Examples:
;; (= (checked-hours->wages empty)
;;    empty)
;; (= (checked-hours->wages (cons 28 empty))
;;    (cons 392 empty))
;; (= (checked-hours->wages (cons 40 (cons 28 empty)))
;;    (cons 560 (cons 392 empty)))
;; (= (checked-hours->wages (cons 101 (cons 60 empty)))
;;    checked-hours->wages: Cannot exceed 100 hours)
(define (checked-hours->wages hours)
  (cond
    [(empty? hours) empty]
    [else (cond
            [(> (first hours) 100)
             (error 'checked-hours->wages "Cannot exceed 100 hours")]
            [else
             (cons (wage (first hours)) (checked-hours->wages (rest hours)))])]))

;; wage : number -> number
;; Compute the total wage for h hours
(define (wage h)
  (* RATE h))

;; Tests
(checked-hours->wages empty)
;; ]=> empty
(checked-hours->wages (cons 28 empty))
;; ]=> (cons 392 empty)
(checked-hours->wages (cons 40 (cons 28 empty)))
;; ]=> (cons 560 (cons 392 empty))
(checked-hours->wages (cons 101 (cons 60 empty)))
;; ]=> checked-hours->wages: Cannot exceed 100 hours
