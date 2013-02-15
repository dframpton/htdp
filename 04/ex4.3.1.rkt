;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4.3.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex4.3.1.rkt

;; Decide which of the following two cond-expressions is legal:

(cond
  [(< n 10) 20]
  [(> n 20) 0]
  [else 1])
                        	
(cond
  [(< n 10) 20]
  [(and (> n 20) (<= n 30))]
  [else 1])

;; The first cond-expression is legal. The second is illegal because the
;; second condition only has one expression.

;; Why is the following illegal?

(cond [(< n 10) 20]
      [* 10 n]
      [else 555])

;; This is illegal because the second condition isn't properly formed. There
;; are not two expressions, where the first will evaluate to a boolean.
