;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.4.rkt

;; Develop the function convert-euro, which converts a list of U.S. dollar
;; amounts into a list of euro amounts. Assume the exchange rate is 1.22 euro
;; for each dollar.

(define RATE 1.22)

;; convert-euro : list-of-nums -> list-of-nums
;; Convert a list of dollar amounts into euros
;; Examples:
;; (= (convert-euro (cons 245 (cons 50 (cons 1 empty))))
;;    (cons 200.82 (cons 40.98 (cons 0.82 empty))))
(define (convert-euro dollar-list)
  (cond
    [(empty? dollar-list) empty]
    [else (cons (dollar->euro (first dollar-list))
                (convert-euro (rest dollar-list)))]))

;; dollar->euro : number -> number
;; Convert an amount in dollars into euros
(define (dollar->euro d)
  (/ d RATE))

;; Tests
(convert-euro (cons 245 (cons 50 (cons 1 empty))))
;; ]=> (cons 200.82 (cons 40.98 (cons 0.82 empty)))

;; Generalize convert-euro to the function convert-euro-1, which consumes an
;; exchange rate and a list of dollar amounts and converts the latter into a
;; list of euro amounts.

(define (dollar->euro-1 d rate)
  (/ d rate))

;; convert-euro-1 : number list-of-nums -> list-of-nums
;; Convert a list of dollar amounts into euros
;; Examples:
;; (= (convert-euro-1 1.31 (cons 245 (cons 50 (cons 1 empty))))
;;    (cons 187.02 (cons 38.17 (cons 0.76 empty))))
(define (convert-euro-1 rate dollar-list)
  (cond
    [(empty? dollar-list) empty]
    [else (cons (dollar->euro-1 (first dollar-list) rate)
                (convert-euro-1 rate (rest dollar-list)))]))

;; Tests
(convert-euro-1 1.31 (cons 245 (cons 50 (cons 1 empty))))
;; ]=> (cons 187.02 (cons 38.17 (cons 0.76 empty)))
