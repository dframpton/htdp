;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5.1.5) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp")))))

;; ex5.1.5.rkt

;; Develop the function check-color. It implements a key portion of a color
;; guessing game. One player picks two colors for two squares; we call those
;; targets. The other one tries to guess which color is assigned to which
;; square; they are guesses. The first player's response to a guess is to check
;; the colors and to produce one of the following answers:

;; 1. 'Perfect, if the first target is equal to the first guess and the second
;; target is equal to the second guess.

;; 2. 'OneColorAtCorrectPosition, if the first guess is equal to the first
;; target or the second guess is equal to the second target.

;; 3. 'OneColorOccurs, if either guess is one of the two targets.

;; 4. 'NothingCorrect, otherwise.

;; The function check-color simulates the first player's checking action. It
;; consumes four colors; for simplicity, we assume that a color is a symbol,
;; say, 'red. The first two arguments to check-color are "targets", the
;; latter two are "guesses". The function produces one of the four answers.

;; check-color : symbol symbol symbol symbol -> symbol
;; Compare the players guesses to the color of the targets.
;; Examples:
;; (check-color 'red 'blue 'red 'blue) should give 'Perfect
;; (check-color 'red 'blue 'red 'green) should give 'OneColorAtCorrectPosition
;; (check-color 'red 'blue 'blue 'green) should give 'OneColorOccurs
;; (check-color 'red 'blue 'green 'yellow) should give 'NothingCorrect
(define (check-color target1 target2 guess1 guess2)
  (cond
    [(and (symbol=? target1 guess1)
          (symbol=? target2 guess2))
     'Perfect]
    [(or  (symbol=? target1 guess1)
          (symbol=? target2 guess2))
     'OneColorAtCorrectPosition]
    [(or  (symbol=? target1 guess2)
          (symbol=? target2 guess1))
     'OneColorOccurs]
    [else 'NothingCorrect]))

;; Tests
(symbol=? (check-color 'red 'blue 'red 'blue) 'Perfect)
(symbol=? (check-color 'red 'blue 'red 'green) 'OneColorAtCorrectPosition)
(symbol=? (check-color 'red 'blue 'blue 'green) 'OneColorOccurs)
(symbol=? (check-color 'red 'blue 'green 'yellow) 'NothingCorrect)