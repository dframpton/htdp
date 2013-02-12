;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.1.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.1.2.rkt

;; What are the results of the following expressions for (a) x = 4, (b) x = 2,
;; and (c) x = 7/2?

(> x 3)
;; ]=> true, false, true

(and (> 4 x) (> x 3))
;; ]=> false, false, true

(= (* x x) x)
;; ]=> false, false false
