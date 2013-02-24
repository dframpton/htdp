;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.3.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex6.3.2.rkt

;; Consider the following structure definition:

(define-struct movie (title producer))

;; and evaluate the following expressions:

(movie-title (make-movie 'ThePhantomMenace 'Lucas))
(movie-producer (make-movie 'TheEmpireStrikesBack 'Lucas))

;; Now evaluate the following expressions, assuming x and y stand for
;; arbitrary symbols:

;; (movie-title (make-movie x y))
;; will return x
;; (movie-producer (make-movie x y))
;; will return y

;; Formulate equations that state general laws concerning the relationships
;; of movie-title and movie-producer and make-movie.
