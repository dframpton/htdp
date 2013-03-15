;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.5.5) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.5.5.rkt

;; Develop the function convert. It consumes a list of digits and produces the
;; corresponding number. The first digit is the least significant, and so on.

;; convert : list-of-digits -> number
;; Convert a list of digits into the corresponding number
;; Examples:
;; (= (list-of-digits empty)
;;    0)
;; (= (list-of-digits (cons 8 empty))
;;    8
;; (= (list-of-digits (cons 2 (cons 4 empty)))
;;    42
;; (= (list-of-digits (cons 4 (cons 3 (cons 2 (cons 1 empty)))))
;;    1234
(define (convert list-of-digits)
  (cond
    [(empty? list-of-digits) 0]
    [else (+ (first list-of-digits)
             (* (convert (rest list-of-digits)) 10))]))

;; Tests
(= (convert empty)
   0)
(= (convert (cons 8 empty))
   8)
(= (convert (cons 2 (cons 4 empty)))
   42)
(= (convert (cons 4 (cons 3 (cons 2 (cons 1 empty)))))
   1234)

;; Also develop the function check-guess-for-list. It implements a general
;; version of the number-guessing game of exercise 5.1.3. The function consumes
;; a list of digits, which represents the player's guess, and a number, which
;; represents the randomly chosen and hidden number. Depending on how the
;; converted digits relate to target, check-guess-for-list produces one of the
;; following three answers: 'TooSmall, 'Perfect, or 'TooLarge.

;; check-guess-for-list : list-of-digits number -> symbol
;; Convert list of digits to a number, then compare against target
;; Examples:
;; (eq? (check-guess-for-list (cons 2 (cons 4 empty)) 100)
;;      'TooSmall)
;; (eq? (check-guess-for-list (cons 0 (cons 0 (cons 1 empty))) 42)
;;      'TooLarge)
;; (eq? (check-guess-for-list (cons 0 (cons 0 (cons 1 empty))) 100)
;;      'Perfect)
(define (check-guess-for-list digits target)
  (cond
    [(< (convert digits) target) 'TooSmall]
    [(> (convert digits) target) 'TooLarge]
    [else 'Perfect]))

;; Tests
(eq? (check-guess-for-list (cons 2 (cons 4 empty)) 100)
     'TooSmall)
(eq? (check-guess-for-list (cons 0 (cons 0 (cons 1 empty))) 42)
     'TooLarge)
(eq? (check-guess-for-list (cons 0 (cons 0 (cons 1 empty))) 100)
     'Perfect)
