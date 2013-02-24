;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.4.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.4.1.rkt

;; Provide data definitions for the following structure definitions.
;; Make appropriate assumptions about what data goes with which field.

(define-struct movie (title producer))
;; A movie is a structure
;; where title and producer are symbols

(define-struct boyfriend (name hair eyes phone))
;; A boyfriend is a structure
;; where name, hair, and eyes are symbols, and phone is a number

(define-struct cheerleader (name number))
;; A cheerleader is a structure
;; where name is a symbol and number is a number

(define-struct CD (artist title price))
;; A CD is a structure
;; where artist and title are symbols, and price is a number

(define-struct sweater (material size producer))
;; A sweater is a structure
;; where material, size, and producer are symbols
