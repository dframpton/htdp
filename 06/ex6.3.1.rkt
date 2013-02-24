;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.3.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.3.1.rkt

;; For the following structure definitions, what are the names of the
;; constructors and the selectors that each of them adds to Scheme?

(define-struct movie (title producer))
;; make-movie movie-title movie-producer

(define-struct boyfriend (name hair eyes phone))
;; make-boyfriend boyfriend-name boyfriend-hair boyfriend-eyes boyfriend-phone

(define-struct cheerleader (name number))
;; make-cheerleader cheerleader-name cheerleader-number

(define-struct CD (artist title price))
;; make-CD CD-artist CD-title CD-price

(define-struct sweater (material size producer))
;; make-sweater sweater-material sweater-size sweater-producer
