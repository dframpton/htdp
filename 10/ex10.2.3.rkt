;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.2.3) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.2.3.rkt

;; Develop the function price-of, which consumes the name of a toy and an
;; inventory and produces the toy's price.

;; An inventory is either
;; 1. empty
;; 2. (cons ir inv) 
;; where ir is an inventory record and inv is an inventory.

;; An inventory-record (short: ir) is: (make-ir name price)
;; - name is a symbol
;; - price is a (positive) number
(define-struct ir (name price))

;; price-of : symbol inventory -> number
;; Find the price of a toy if in the inventory, otherwise return false
(define (price-of toy inv)
  (cond
    [(empty? inv) false]
    [else
     (cond
       [(symbol=? (ir-name (first inv)) toy)
        (ir-price (first inv))]
       [else (price-of toy (rest inv))])]))

;; Tests
(define TOYS
  (cons (make-ir 'ball 1.25)
        (cons (make-ir 'robot 35.50)
              empty)))

(eq? (price-of 'ball empty) false)
(eq? (price-of 'ball TOYS) 1.25)
(eq? (price-of 'doll TOYS) false)
