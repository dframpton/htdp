;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.2.5) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.2.5.rkt

;; Define the function extract>1, which consumes an inventory and creates an
;; inventory from those records whose prices are above one dollar.

;; An inventory is either
;; 1. empty
;; 2. (cons ir inv) 
;; where ir is an inventory record and inv is an inventory.

;; An inventory-record (short: ir) is: (make-ir name price)
;; - name is a symbol
;; - price is a (positive) number
(define-struct ir (name price))

;; extract>1 : inventory -> inventory
;; Create an inventory for those items that cost more than $1
(define (extract>1 inv)
  (cond
    [(empty? inv) empty]
    [else (cond
            [(> (ir-price (first inv)) 1.00)
             (cons (first inv) (extract>1 (rest inv)))]
            [else (extract>1 (rest inv))])]))

;; Tests
(extract>1 empty)
(extract>1 (cons (make-ir 'ball 0.75)
                 (cons (make-ir 'robot 10.20)
                       (cons (make-ir 'bat 0.99)
                             (cons (make-ir 'doll 5.30)
                                   empty)))))
