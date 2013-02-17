;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5.1.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp")))))

;; ex5.1.2.rkt

;; Develop the function check-guess3. It implements a larger portion of the
;; number guessing game of exercise 5.1.2 than the function check-guess. Now
;; the teachpack hands over the digits that the user guesses, not the number
;; that they form.

;; To simplify the problem a little bit, the game works with only three
;; numbers. Thus, check-guess3 consumes three digits and a number. The first
;; digit is the least significant, the third one is the most significant. The
;; number is called target and represents the randomly chosen number.
;; Depending on how guess, the number determined by the three digits, relates
;; to target, check-guess3 produces one of the following three answers:
;; 'TooSmall, 'Perfect, or 'TooLarge.

;; check-guess3 : number number number number -> symbol
;; Respond to the player's guess (now 3 digits instead of a number).
(define (check-guess3 least middle most target)
  (cond
    [(= (convert3 least middle most) target) 'Perfect]
    [(> (convert3 least middle most) target) 'TooLarge]
    [else 'TooSmall]))
  
;; convert3 : number number number -> number
;; Convert 3 separate digits into a number
(define (convert3 a b c)
  (+ (* c 100) (* b 10) a))

;; Tests
(symbol=? (check-guess3 0 0 1 321) 'TooSmall)
(symbol=? (check-guess3 1 2 3 321) 'Perfect)
(symbol=? (check-guess3 4 5 6 321) 'TooLarge)
