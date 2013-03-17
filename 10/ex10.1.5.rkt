;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.5) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.5.rkt

;; Develop the function eliminate-exp to eliminate expensive toys. The function
;; consumes a number and a list of toy prices, and produces a list of all those
;; prices that are below or equal the number.

;; eliminate-exp : number list-of-nums -> list-of-nums
;; Produce a list of all values from the input list below the specified limit
;; Example:
;; (eq? (eliminate-exp 3 (cons 1.25 (cons 2.50 (cons 3.75 empty))))
;;      (cons 1.25 (cons 2.50 empty)))
(define (eliminate-exp limit prices)
  (cond
    [(empty? prices) empty]
    [else (cond
            [(<= (first prices) limit)
             (cons (first prices) (eliminate-exp limit (rest prices)))]
            [else (eliminate-exp limit (rest prices))])]))

;; lists-equal? : list-of-nums list-of-nums -> boolean
;; Compare two lists to see if they are equal (basic)
(define (lists-equal? p q)
  (cond
    [(and (empty? p) (empty? q)) true]
    [else (and (eq? (first p) (first q))
               (lists-equal? (rest p) (rest q)))]))

;; Tests
(lists-equal? empty empty)
(lists-equal? (cons 2 empty) (cons 2 empty))
(lists-equal? (cons 1 (cons 2 empty)) (cons 1 (cons 2 empty)))
(not (lists-equal? (cons 1 (cons 2 empty)) (cons 2 (cons 1 empty))))

(lists-equal?
 (eliminate-exp 1.0 (cons 2.95 (cons .95 (cons 1.0 (cons 5 empty)))))
 (cons .95 (cons 1.0 empty)))
(lists-equal?
 (eliminate-exp 3 (cons 1.25 (cons 2.50 (cons 3.75 empty))))
 (cons 1.25 (cons 2.50 empty)))
