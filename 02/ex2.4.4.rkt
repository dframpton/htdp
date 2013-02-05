;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.4.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.4.4.rkt

;; Enter the following grammatically legal Scheme program into the Definitions
;; window and click the Execute button:

(define (somef x)
  (sin x x))

;; Then, in the Interactions window, evaluate the following expressions and
;; read the error messages. Also observe what DrScheme highlights.

(somef 10 20)
;; ]=> somef: expects only 1 argument, but found 2
;; DrScheme highlights the expression (somef 10 20)

(somef 10)
;; ]=> sin: expects only 1 argument, but found 2
;; DrScheme highlights the expression (sin x x) in the function body
