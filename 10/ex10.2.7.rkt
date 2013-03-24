;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.2.7) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.2.7.rkt

;; Develop the function raise-prices, which consumes an inventory and produces
;; an inventory in which all prices are raised by 5%.

;; An inventory is either
;; 1. empty
;; 2. (cons ir inv) 
;; where ir is an inventory record and inv is an inventory.

;; An inventory-record (short: ir) is: (make-ir name price)
;; - name is a symbol
;; - price is a (positive) number
(define-struct ir (name price))

;; raise-prices : inventory -> inventory
;; Produce an inventory whose prices are raised by 5%
(define (raise-prices inv)
  (cond
    [(empty? inv) empty]
    [else (cons (make-ir (ir-name (first inv)) (* 1.05 (ir-price (first inv))))
                (raise-prices (rest inv)))]))

;; Tests
(raise-prices empty)
(raise-prices (cons (make-ir 'ball 1.50) empty))
(raise-prices (cons (make-ir 'ball 1.50)
                    (cons (make-ir 'robot 9.99)
                          (cons (make-ir 'doll 4.50)
                                empty))))
