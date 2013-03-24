;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.2.9) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.2.9.rkt

;; Adapt the function name-robot from exercise 10.1.6 for the new data
;; definition of inventory. The function consumes an inventory and produces an
;; inventory with more accurate names. Specifically, it replaces all occurrences
;; of 'robot with 'r2d2.

;; An inventory is either
;; 1. empty
;; 2. (cons ir inv) 
;; where ir is an inventory record and inv is an inventory.

;; An inventory-record (short: ir) is: (make-ir name price)
;; - name is a symbol
;; - price is a (positive) number
(define-struct ir (name price))

;; name-robot : inventory -> inventory
;; Produce an inventory where all occurences of 'robot are replaced with 'r2d2
(define (name-robot inv)
  (cond
    [(empty? inv) empty]
    [else (cond
            [(symbol=? 'robot (ir-name (first inv)))
             (cons (make-ir 'r2d2 (ir-price (first inv)))
                   (name-robot (rest inv)))]
            [else (cons (first inv) (name-robot (rest inv)))])]))

;; Tests
(name-robot empty)
(name-robot (cons (make-ir 'robot 9.99) empty))
(name-robot (cons (make-ir 'robot 9.99)
                  (cons (make-ir 'ball 1.50)
                        (cons (make-ir 'robot 12.99)
                              empty))))

;; Generalize name-robot to the function substitute. The new function consumes
;; two symbols, called new and old, and an inventory. It produces a new
;; inventory by substituting all occurrences of old with new and leaving all
;; others alone.

;; substitute : symbol symbol inventory -> inventory
;; Produce an inventory where all occurences of old are replaced with new
(define (substitute old new inv)
  (cond
    [(empty? inv) empty]
    [else (cond
            [(symbol=? old (ir-name (first inv)))
             (cons (make-ir new (ir-price (first inv)))
                   (substitute old new (rest inv)))]
            [else (cons (first inv) (substitute old new (rest inv)))])]))

;; Tests
(substitute 'doll 'Barbie empty)
(substitute 'doll 'Barbie (cons (make-ir 'doll 5.99) empty))
(substitute 'doll 'Barbie (cons (make-ir 'doll 5.99)
                                (cons (make-ir 'ball 1.20)
                                      (cons (make-ir 'doll 9.95)
                                            empty))))
