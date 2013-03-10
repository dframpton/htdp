;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex8.2.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex8.2.1.rkt

;; Why are the following sentences syntactically legal expressions?

;; 1. x
;; 2. (= y z)
;; 3. (= (= y z) 0)

;; 1. x is a variable.
;; 2. The correct prefix notation is used for the '=' operation, and is
;; surrounded by parens.
;; 3. As above, except expression #2 is now nested using the same form.

;; Explain why the following sentences are illegal expressions.

;; 1. (3 + 4)
;; 2. empty?(l)
;; 3. (x)

;; 1. Not using prefix notation. A primitive, variable or cond must follow
;; and opening paren.
;; 2. Should be within parens if not a primitive.
;; 3. A variable on its own can't be within parens; an expression should
;; follow for it to be legal.
