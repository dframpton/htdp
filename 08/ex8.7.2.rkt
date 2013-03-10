;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.7.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.7.2.rkt

;; Which of the following are values?

(make-point 1 2 3)
;; Value. 1, 2, and 3 are values.

(make-point (make-point 1 2 3) 4 5)
;; Value. As above, and 4 and 5 are also values.

(make-point (+ 1 2) 3 4)
;; 3 and 4 are values, but (+ 1 2) is *not* a value, although it does
;; evaluate to one.
