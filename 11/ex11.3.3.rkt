;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.3.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.3.3.rkt

;; Develop the function create-temps. It consumes a natural number n and two
;; integers, called low and high. It produces a list of n integers that are
;; between low and high.

;; create-temps : N integer integer -> list-of-nums
;; Produce a list of n integers between the given low and high values
(define (create-temps n low high)
  (cond
    [(zero? n) empty]
    [else (cons (random-n-m low high)
                (create-temps (sub1 n) low high))]))

;; random-n-m : integer integer -> integer
;; Compute a random number between n and m-1
;; Assume: n < m
(define (random-n-m n m)
  (+ (random (- m n)) n))

;; Tests
(create-temps 0 20 100)
(create-temps 1 20 100)
(create-temps 5 20 100)

;; Use create-temps to test check-range from exercise 9.5.4.

;; check-range? : number number list-of-nums -> boolean
;; Compute whether a list of temperatures (numbers) are within a given range
(define (check-range? lower upper temps)
  (cond
    [(empty? temps) true]
    [else (and (<= lower (first temps) upper)
               (check-range? lower upper (rest temps)))]))

;; Tests
(check-range? 50 100 (create-temps 5 50 100))
(check-range? 50 100 (create-temps 5 10 100))

;; Finally, discuss the following questions. Can we simply feed the result of
;; create-temps into check-range or do we need to know the list that
;; create-temps produced? Are there values for low and high such that we don't
;; need to know the result of create-temps and yet we can predict the result of
;; the test? Which function tests which? What does this tell us about testing
;; with automatically generated test data?

;; We do need to know the list produced by create-temps, because a wide enough
;; range of numbers may not be produced every time. Using:
;; (check-range? 50 100 (create-temps 5 10 100))
;; as an example, because random numbers are being used, although the range
;; specified is 10-100, on some passes all 5 numbers may be larger than 50.
;; So automatically generated isn'r necessarily a good test for correctness.
