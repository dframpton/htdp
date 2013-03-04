;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.1.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.1.1.rkt

(define-struct star (last first dob ssn))

;; Evaluate the following expressions by hand:

(number? (make-posn 2 3))
;; ]=> false

(number? (+ 12 10))
;; (number? 22)
;; ]=> true

(posn? 23)
;; ]=> false

(posn? (make-posn 23 3))
;; ]=> true

(star? (make-posn 23 3))
;; ]=> false
