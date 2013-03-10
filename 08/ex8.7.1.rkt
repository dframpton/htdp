;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.7.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.7.1.rkt

;; Distinguish legal from illegal sentences. Explain why the sentences are
;; legal define-struct definitions or how they fail to be legal define-struct
;; definitions.

(define-struct personnel-record (name salary dob ssn))
;; Legal. Correct form of 'define-struct', identifier, then names.
 
(define-struct oops ())
;; Legal. As above, but without a sequence of names.

(define-struct child (dob date (- date dob)))
;; Illegal. '-' is not a legal field name.

(define-struct (child person) (dob date))
;; Illegal. '(child person)' is not a legal identifier.

(define-struct child (parents dob date))
;; Legal. As #1; 'define-struct', identifier, then field names.
