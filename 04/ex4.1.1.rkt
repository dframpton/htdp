;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.1.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.1.1.rkt

;; What are the results of the following Scheme conditions?

(and (> 4 3) (<= 10 100))
;; ]=> true

(or (> 4 3) (= 10 100))
;; ]=> true

(not (= 2 3))
;; ]=> true
