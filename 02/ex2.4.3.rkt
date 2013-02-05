;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.4.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.4.3.rkt

;; Evaluate the following grammatically legal Scheme expressions in DrScheme's
;; Interactions window and read the error messages.

(+ 5 (/ 1 0))
;; ]=> /: division by zero

(sin 10 20)
;; ]=> sin: expects only 1 argument, but found 2

(somef 10)
;; ]=> somef: this function is not defined
