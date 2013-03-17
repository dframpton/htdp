;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.6) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.6.rkt

;; Develop the function name-robot, which consumes a list of toy descriptions
;; (names) and produces an equivalent list of more accurate descriptions.
;; Specifically, it replaces all occurrences of 'robot with 'r2d2 and otherwise
;; retains the toy descriptions in the same order.

;; name-robot : list-of-symbols -> list-of-symbols
;; Replace all occurences of 'robot with 'r2d2 in a list
;; Examples:
;; (name-robot (cons 'robot empty))
;; ]=> (cons 'r2d2 empty)
;; (name-robot (cons 'ball (cons 'robot empty)))
;; ]=> (cons 'ball (cons 'r2d2 empty))
;; (name-robot (cons 'robot (cons 'ball (cons 'robot (cons 'doll empty)))))
;; ]=> (cons 'r2d2 (cons 'ball (cons 'r2d2 (cons 'doll empty))))
(define (name-robot toys)
  (cond
    [(empty? toys) empty]
    [else (cond
            [(symbol=? (first toys) 'robot)
             (cons 'r2d2 (name-robot (rest toys)))]
            [else (cons (first toys) (name-robot (rest toys)))])]))

;; lists-equal? : list-of-nums list-of-nums -> boolean
;; Compare two lists to see if they are equal (basic)
(define (lists-equal? p q)
  (cond
    [(and (empty? p) (empty? q)) true]
    [else (and (eq? (first p) (first q))
               (lists-equal? (rest p) (rest q)))]))

;; Tests
(lists-equal?
 (name-robot (cons 'robot empty))
 (cons 'r2d2 empty))
(lists-equal?
 (name-robot (cons 'ball (cons 'robot empty)))
 (cons 'ball (cons 'r2d2 empty)))
(lists-equal?
 (name-robot (cons 'robot (cons 'ball (cons 'robot (cons 'doll empty)))))
 (cons 'r2d2 (cons 'ball (cons 'r2d2 (cons 'doll empty)))))

;; Generalize name-robot to the function substitute. The new function consumes
;; two symbols, called new and old, and a list of symbols. It produces a new
;; list of symbols by substituting all occurrences of old by new.

;; substitute : symbol symbol list-of-symbols -> list-of-symbols
;; Produce a new list of symbols, substituting old for new
;; Example:
;; (substitute 'doll 'Barbie (cons 'robot (cons 'doll (cons 'dress empty))))
;; ]=> (cons 'robot (cons 'Barbie (cons 'dress empty)))
(define (substitute old new symbol-list)
  (cond
    [(empty? symbol-list) empty]
    [else (cond
            [(symbol=? (first symbol-list) old)
             (cons new (substitute old new (rest symbol-list)))]
            [else (cons (first symbol-list)
                        (substitute old new (rest symbol-list)))])]))

;; Tests
(lists-equal?
 (substitute 'doll 'Barbie (cons 'robot (cons 'doll (cons 'dress empty))))
 (cons 'robot (cons 'Barbie (cons 'dress empty))))
