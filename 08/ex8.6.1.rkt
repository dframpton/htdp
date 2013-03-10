;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.6.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.6.1.rkt

;; Make up five examples of variable definitions. Use constants and expressions
;; on the right-hand side.

(define RADIUS 10)

(define DIAMETER (* 2 RADIUS))

;; area : number  ->  number
;; to compute the area of a disk with radius r
(define (area r)
  (* 3.14 (* r r)))

(define AREA-OF-RADIUS (area RADIUS))

(define EDITOR 'vim)

(define LANG 'Scheme)
