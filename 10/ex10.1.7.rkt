;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.7) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.7.rkt

;; Develop the function recall to eliminate specific toys from a list. The
;; function consumes the name of a toy and a list of names, and produces a
;; list of names that contains all components except the specified toy.

;; recall : symbol list-of-symbols -> list-of-symbols
;; Eliminate a specific toy from a list of toys
;; Examples:
;; (recall 'robot (cons 'robot (cons 'doll (cons 'dress empty))))
;; ]=> (cons 'doll (cons 'dress empty))
;; (recall 'ball (cons 'ball (cons 'car (cons 'ball empty))))
;; ]=> (cons 'car empty)
(define (recall toy toy-list)
  (cond
    [(empty? toy-list) empty]
    [else (cond
            [(symbol=? (first toy-list) toy)
             (recall toy (rest toy-list))]
            [else (cons (first toy-list) (recall toy (rest toy-list)))])]))

;; lists-equal? : list-of-nums list-of-nums -> boolean
;; Compare two lists to see if they are equal (basic)
(define (lists-equal? p q)
  (cond
    [(and (empty? p) (empty? q)) true]
    [else (and (eq? (first p) (first q))
               (lists-equal? (rest p) (rest q)))]))

;; Tests
(lists-equal?
 (recall 'robot (cons 'robot (cons 'doll (cons 'dress empty))))
 (cons 'doll (cons 'dress empty)))
(lists-equal?
 (recall 'ball (cons 'ball (cons 'car (cons 'ball empty))))
 (cons 'car empty))
