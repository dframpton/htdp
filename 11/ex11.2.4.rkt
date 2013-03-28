;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.2.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.2.4.rkt

;; Lists may contain lists that contain lists and so on. Here is a data
;; definition that takes this idea to an extreme:

;; A deep-list is either
;; 1. s where s is some symbol
;; 2. (cons dl empty), where dl is a deep list

;; Develop the function depth, which consumes a deep list and determines how
;; many times cons was used to construct it.

;; depth : deep-list -> number
;; Determine how many times cons was used to construct a deep list
(define (depth deep-list)
  (cond
    [(symbol? deep-list) 0]
    [else (add1 (depth (first deep-list)))]))

;; Tests
;; I needed to use the solution's tests for this to help get my head around
;; the nested lists. I still don't totally get it, I think because I've got in
;; to the mindset of ... (first list) ... (rest list) ... for simpler lists.
(depth 'bottom)
(depth (cons 'one empty))
(depth (cons
        (cons
         (cons
          (cons 'bottom empty)
          empty)
         empty)
        empty))

;; Develop the function make-deep, which consumes a symbol s and a natural
;; number and produces a deep list containing s and constructed with n conses.

;; make-deep : symbol number -> deep-list
;; Produces a deep list containing s constructed with n conses.
(define (make-deep s n)
  (cond
    [(zero? n) s]
    [else (cons (make-deep s (sub1 n)) empty)]))

;; Tests
(make-deep 'bottom 0)
(make-deep 'bottom 4)
