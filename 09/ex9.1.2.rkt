;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.1.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.1.2.rkt

;; Let l be the list.

(cons 10 (cons 20 (cons 5 empty)))

;; What are the values of the following expressions?

;; (rest l)
;; ]=> (cons 20 (cons 5 empty))

;; (first (rest l))
;; ]=> 20

;; (rest (rest l))
;; ]=> (cons 5 empty)

;; (first (rest (rest l)))
;; ]=> 5

;; (rest (rest (rest l)))
;; ]=> empty
