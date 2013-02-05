;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.2.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex2.2.2.rkt

;; Define the program dollar->euro, which consumes a number of dollars and
;; produces the euro equivalent.

(define (dollar->euro dollar)
  (* dollar 0.73600))
