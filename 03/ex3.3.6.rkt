;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.3.6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.3.6.rkt

;; Recall the program Fahrenheit->Celsius from exercise 2.2.1. The program
;; consumes a temperature measured in Fahrenheit and produces the Celsius
;; equivalent. Develop the program Celsius->Fahrenheit, which consumes a
;; temperature measured in Celsius and produces the Fahrenheit equivalent.

;; celsius->fahrenheit : number -> number
;; Convert a temperature in Celsius to Fahrenheit.
(define (celsius->fahrenheit c)
  (+ (* c 9/5) 32))

;; fahrenheit->celsius : number -> number
;; Convert a temperature in Fahrenheit to Celsius.
(define (fahrenheit->celsius f)
  (* (- f 32) 5/9))

;; Tests
(fahrenheit->celsius 212)
(fahrenheit->celsius 32)
(celsius->fahrenheit 100)
(celsius->fahrenheit 0)

;; Now consider the function:
;; I : number  ->  number
;; to convert a Fahrenheit temperature to Celsius and back 
(define (I f)
  (celsius->fahrenheit (fahrenheit->celsius f)))

;; Evaluate (I 32) by hand and using DrScheme's stepper. What does this suggest
;; about the composition of the two functions?
(I 32)

;; These two function compose to produce the identity function on numbers.
;; That is, a function that always returns I always returns its input.
;; The above is from the solution. I don't totally understand the wording in
;; relation to the function compositions, although I can see that I returns
;; its input.
