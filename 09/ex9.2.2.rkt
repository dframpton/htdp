;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.2.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.2.2.rkt

;; Do all lists of two symbols also belong to the class list-of-symbols?
;; Provide a concise argument.

;; A list-of-symbols is either empty or a symbol cons'd onto a list of
;; symbols. The 'rest' of a list of symbols also has to belong to the class
;; list-of-symbols (itself consisting of 'first' and 'rest', and so on
;; recursively), so yes, all lists of two symbols belong to this class.
