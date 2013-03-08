;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.5.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.5.2.rkt

;; Develop checked versions of the functions profit (figure 5), is-between-5-6?
;; (section 4.2), reply (section 5), distance-to-0 (section 6.1), and perimeter
;; (in the left column of figure 19).

;; profit and auxiliary functions
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

(define (cost ticket-price)
  (+ 180 
     (* .04 (attendees ticket-price))))

(define (attendees ticket-price)
  (+ 120
     (* (/ 15 .10) (- 5.00 ticket-price))))

;; is-between-5-6?
(define (is-between-5-6? n)
  (and (< 5 n) (< n 6)))

;; reply
(define (reply s)
  (cond
    [(symbol=? s 'GoodMorning) 'Hi]
    [(symbol=? s 'HowAreYou?) 'Fine]
    [(symbol=? s 'GoodAfternoon) 'INeedANap]
    [(symbol=? s 'GoodEvening) 'BoyAmITired]
    [else 'IDontUnderstand]))

;; distance-to-0
(define (distance-to-0 a-posn)
  (sqrt
    (+ (sqr (posn-x a-posn))
       (sqr (posn-y a-posn)))))

;; perimeter
(define (perimeter a-shape)
  (cond
    [(circle? a-shape)
     (* (* 2 (circle-radius a-shape)) pi)]
    [(square? a-shape)
     (* (square-length a-shape) 4)]))

;; checked-profit : Scheme-value -> number
;; Compute profit, checking for a positive number as input
(define (checked-profit ticket-price)
  (cond
    [(and (number? ticket-price) (>= ticket-price 0))
     (profit ticket-price)]
    [else (error 'checked-profit "positive number expected")]))

;; checked-is-between-5-6? : Scheme-value -> boolean
;; Determine whether n is between 5 and 6 (exclusive), if a positive
;; number is given as input
(define (checked-is-between-5-6? n)
  (cond
    [(number? n) (is-between-5-6? n)]
    [else (error 'checked-is-between-5-6? "number expected")]))

;; checked-reply : Scheme-value -> symbol
;; Reply to a given input if it's a symbol
(define (checked-reply s)
  (cond
    [(symbol? s) (reply s)]
    [else (error 'checked-reply "symbol expected")]))

;; checked-distance-to-0 : Scheme-value -> number
;; Compute the distance of a posn from the origin, if a posn is given as input
(define (checked-distance-to-0 p)
  (cond
    [(posn? p) (distance-to-0 p)]
    [else (error 'checked-distance-to-0 "posn expected")]))

;; Data Definition:
(define-struct circle (center radius))
(define-struct square (nw length))
;; A shape is either
;; 1. a structure: (make-circle p s)
;;    where p is a posn, s a number
;; 2. a structure: (make-square p s)
;;    where p is a posn, s a number

;; checked-perimeter : Scheme-value -> number
;; Compute the perimeter of a shape, if a shape is given as input
(define (checked-perimeter s)
  (cond
    [(or (circle? s) (square? s))
     (perimeter s)]
    [else (error 'checked-perimeter "shape expected")]))

;; Tests
(checked-profit 5)
(checked-profit 'bad)

(checked-is-between-5-6? 5.9)
(checked-is-between-5-6? 'bad)

(checked-reply 'HowAreYou?)
(checked-reply 'Bonjour)
(checked-reply 3.14159)

(checked-distance-to-0 (make-posn 5 5))
(checked-distance-to-0 'bad)

(checked-perimeter (make-circle (make-posn 50 50) 50))
(checked-perimeter 'bad)
