;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.3.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.3.3.rkt

;; Develop the function contains?, which consumes a symbol and a list of
;; symbols and determines whether or not the symbol occurs in the list.

;; contains? : symbol list-of-symbols -> boolean
;; Return true if list-of-symbols contains symbol, otherwise return false
(define (contains? s list-of-symbols)
  (cond
    [(empty? list-of-symbols) false]
    [else (or (symbol=? s (first list-of-symbols))
              (contains? s (rest list-of-symbols)))]))

;; Tests
(boolean=? (contains? 'doll empty) false)
(boolean=? (contains? 'doll (cons 'ball empty)) false)
(boolean=? (contains? 'doll (cons 'arrow (cons 'doll empty))) true)
(boolean=? (contains? 'doll (cons 'bow (cons 'arrow (cons 'ball empty)))) false)
