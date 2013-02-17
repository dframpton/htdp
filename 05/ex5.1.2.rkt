;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5.1.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp")))))

;; ex5.1.2.rkt

;; Develop the function check-guess. It consumes two numbers, guess and target.
;; Depending on how guess relates to target, the function produces one of the
;; following three answers: 'TooSmall, 'Perfect, or 'TooLarge.

;; check-guess : number number -> symbol
;; Let the player roughly know how close their guess was to the target.
;; Examples:
;; (check-guess 2 5) should give 'TooSmall
;; (check-guess 5 5) should give 'Perfect
;; (check-guess 7 5) should give 'TooLarge
(define (check-guess guess target)
  (cond
    [(= guess target) 'Perfect]
    [(> guess target) 'TooLarge]
    [else 'TooSmall]))

;; Tests
(symbol=? (check-guess 2 5) 'TooSmall)
(symbol=? (check-guess 5 5) 'Perfect)
(symbol=? (check-guess 7 5) 'TooLarge)
