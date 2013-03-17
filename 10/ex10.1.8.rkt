;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.8) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.8.rkt

;; Develop quadratic-roots, which solves quadratic equations: see exercises
;; 4.4.4 and 5.1.4. The function accepts the coefficients a, b, and c. The
;; computations it performs depend on the input:

;; 1. if a = 0, its output is 'degenerate.

;; 2. if b^2 < 4 * a * c, the quadratic equation has no solution;
;; quadratic-roots produces 'none in this case.

;; 3. if b^2 = 4 * a * c, the equation has one solution: -b / 2 * a
;; the solution is the result.

;; 4. if b^2 > 4 * a * c, the equation has two solutions:
;; (/ (+ (- b) (sqrt (- (sqr b) (* 4 a c)))) (* 2 a))
;; and
;; (/ (- (- b) (sqrt (- (sqr b) (* 4 a c)))) (* 2 a))
;; the result is a list of two numbers: the first solution followed by the
;; second solution.

;; quadratic-roots : number number number -> symbol
;; Computes quadratic equations
(define (quadratic-roots a b c)
  (cond
    [(= a 0)
     'degenerate]
    [(< (sqr b) (* 4 a c))
     'none]
    [(= (sqr b) (* 4 a c))
     (/ (- b) (* 2 a))]
    [(> (sqr b) (* 4 a c))
     (cons (/ (+ (- b)
                 (sqrt (- (sqr b) (* 4 a c))))
              (* 2 a))
           (cons (/ (- (- b)
                       (sqrt (- (sqr b) (* 4 a c))))
                    (* 2 a))
                 empty))]))

;; Tests
(quadratic-roots 1 2 1) "should be" -1
(quadratic-roots 3 4 1) "should be" (list -1/3 -1)
(quadratic-roots 2 4 3) "should be" 'none
(quadratic-roots 1 0 -1) "should be" (list 1 -1)
(quadratic-roots 2 4 2) "should be" -1
(quadratic-roots 0 1 1) "should be" 'degenerate
