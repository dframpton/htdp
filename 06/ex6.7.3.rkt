;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.7.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.7.3.rkt

;; Develop the function reveal. It consumes three arguments:

;; 1. the chosen word, which is the word that we have to guess.
;; 2. the status word, which shows which portion of the word has been revealed
;;    so far.
;; 3. a letter, which is our current guess.

;; The function produces a new status word, that is, a word that contains
;; ordinary letters and '_. The fields in the new status word are determined by
;; comparing the guess with each pair of letters from the status word and the
;; chosen word:
;; If the guess is equal to the letter in the chosen word, the guess is the
;; corresponding letter in the new status word.
;; Otherwise, the new letter is the corresponding letter from the status word.

(define-struct word (first second third))
;; where first, second, and third are symbols

#|
;; fun-for-word : word -> ???
(define (fun-for-word w)
  ... (word-first w) ...
  ... (word-second w) ...
  ... (word-third w) ...)
|#

;; reveal : word word symbol -> word
;; Update the status word depending on the player's guess
(define (reveal chosen status guess)
  (make-word (check-char (word-first chosen) (word-first status) guess)
             (check-char (word-second chosen) (word-second status) guess)
             (check-char (word-third chosen) (word-third status) guess)))

;; check-char : symbol symbol symbol -> symbol
;; Compare the chosen symbol against and status and guess
(define (check-char chosen status guess)
  (cond
    [(eq? chosen status) chosen]
    [(eq? chosen guess) guess]
    [else status]))

;; Tests
(eq? (check-char 'a 'a 'b) 'a)
(eq? (check-char 'a 'b 'a) 'a)
(eq? (check-char 'a 'b 'c) 'b)

(reveal (make-word 't 'e 'a) (make-word '_ 'e '_) 'u)
;; expected value
;; (make-word '_ 'e '_)

(reveal (make-word 'a 'l 'e) (make-word 'a '_  '_) 'e)
;; expected value: 
;; (make-word 'a '_ 'e)

(reveal (make-word 'a 'l 'l) (make-word '_ '_ '_) 'l)
;; expected value
;; (make-word '_ 'l 'l)
