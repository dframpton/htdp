;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.2.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.2.1.rkt

;; Develop structure and data definitions for a collection of zoo animals.
;; The collection includes:

;; Spiders, whose relevant attributes are the number of remaining legs (we
;; assume that spiders can lose legs in accidents) and the space they need in
;; case of transport.
;; Elephants, whose only attributes are the space they need in case of transport.
;; Monkeys, whose attributes are intelligence and space needed for transportation.

;; Then develop a template for functions that consume zoo animals.

;; Develop the function fits?. The function consumes a zoo animal and the volume
;; of a cage. It determines whether the cage is large enough for the animal.

(define-struct spider (legs space))
(define-struct elephant (space))
(define-struct monkey (intelligence space))

;; A zoo-animal is either:
;; (make-spider legs space)
;; (make-elephant space)
;; (make-monkey intelligence space)
;; Where legs and space are numbers, and intelligence is a symbol.

;; fn-template : zoo-animal -> ???
;; (define (f zoo-animal)
;;   (cond
;;     [(spider? zoo-animal)
;;      ... (spider-legs zoo-animal) ... (spider-space zoo-animal) ...]
;;     [(elephant? zoo-animal)
;;      ... (elephant-space zoo-animal) ...]
;;     [(monkey? zoo-animal)
;;      ... (monkey-intelligence zoo-animal) ... (monkey-space zoo-animal) ...]))

;; fits? : zoo-animal number -> boolean
;; Determine whether the animal will fit in the given cage
(define (fits? zoo-animal volume)
  (cond
    [(spider? zoo-animal) (< (spider-space zoo-animal) volume)]
    [(elephant? zoo-animal) (< (elephant-space zoo-animal) volume)]
    [(monkey? zoo-animal) (< (monkey-space zoo-animal) volume)]))

;; Tests
(define SPIDER (make-spider 8 0.015))
(define ELEPHANT (make-elephant 1000))
(define MONKEY (make-monkey 'smart 8))

(eq? (fits? SPIDER 1) true)
(eq? (fits? MONKEY 10) true)
(eq? (fits? ELEPHANT 500) false)
