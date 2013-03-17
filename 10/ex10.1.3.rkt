;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.3.rkt

;; Develop convertFC. The function converts a list of Fahrenheit measurements
;; to a list of Celsius measurements.

;; convertFC : list-of-nums -> list-of-nums
;; Convert a list of Fahrenheit measurements to Celsius measurements
;; Examples:
;; (= (convertFC (cons 32 (cons 104 (cons 212 empty))))
;;    (cons 0 (cons 40 (cons 100 empty))))
(define (convertFC f-list)
  (cond
    [(empty? f-list) empty]
    [else (cons (f->c (first f-list))
                (convertFC (rest f-list)))]))

;; f->c : number -> number
;; Convert a temperature from Fahrenheit to Celsius
(define (f->c f)
  (* (- f 32) 5/9))

;; Tests
(convertFC (cons 32 (cons 104 (cons 212 empty))))
;; ]=> (cons 0 (cons 40 (cons 100 empty))))
