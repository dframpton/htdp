;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.2.1.rkt

;; Define the program Fahrenheit->Celsius, which consumes a temperature
;; measured in Fahrenheit and produces the Celsius equivalent.

(define (fahrenheit->celsius f)
  (* (- f 32) 5/9))

(fahrenheit->celsius 212)
(fahrenheit->celsius 32)
