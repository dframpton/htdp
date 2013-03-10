;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.6.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.6.3.rkt

;; Evaluate the following sequence of definitions.

(define PRICE 5)
;; (define PRICE 5)

(define SALES-TAX (* .08 PRICE))
;; (define SALES-TAX (* .08 5))
;; (define SALES-TAX 0.4)

(define TOTAL (+ PRICE SALES-TAX))
;; (define TOTAL (+ 5 0.4))
;; (define TOTAL 5.4)
