;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.4.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.4.3.rkt

;; Provide a structure definition and a data definition for representing
;; three-letter words. A word consists of letters, which we represent with the
;; symbols 'a through 'z.

(define-struct 3-letter-word (first second third))
;; A 3-letter-word is a structure
;; where first, second, and third are symbols
