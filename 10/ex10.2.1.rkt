;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.2.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.2.1.rkt

;; Adapt the function contains-doll? so that it consumes inventories instead of
;; lists of symbols.

(define-struct ir (name price))

;; An inventory-record (short: ir) is a structure: (make-ir s n)
;; where s is a symbol and n is a (positive) number.

;; An inventory is either
;; 1. empty
;; 2. (cons ir inv) 
;; where ir is an inventory record and inv is an inventory.

;; contains-doll? : inventory -> boolean
;; Determine whether an inventory contains a record for 'doll
(define (contains-doll? an-inv)
  (cond
    [(empty? an-inv) false]
    [else (or (symbol=? (ir-name (first an-inv)) 'doll)
               (contains-doll? (rest an-inv)))]))

;; Tests
(eq? (contains-doll? empty) false)
(eq? (contains-doll? (cons (make-ir 'doll 17.95) empty)) true)
(eq? (contains-doll? (cons (make-ir 'robot 22.05)
                           (cons (make-ir 'doll 17.95)
                                 empty))) true)
(eq? (contains-doll? (cons (make-ir 'robot 22.05)
                           (cons (make-ir 'ball 5.00)
                                 empty))) false)

;; Also adapt the function contains?, which consumes a symbol and an inventory
;; and determines whether an inventory record with this symbol occurs in the
;; inventory.

;; contains? : symbol inventory -> boolean
;; to determine whether inventory contains a record for asymbol
(define (contains? asymbol an-inv)
    (cond
    [(empty? an-inv) false]
    [else (or (symbol=? (ir-name (first an-inv)) asymbol)
               (contains-doll? (rest an-inv)))]))

;; Tests
(eq? (contains? 'robot empty) false)
(eq? (contains? 'robot (cons (make-ir 'robot 17.95) empty)) true)
(eq? (contains? 'robot (cons (make-ir 'robot 22.05)
                             (cons (make-ir 'doll 17.95)
                                   empty))) true)
(eq? (contains? 'robot (cons (make-ir 'doll 22.05)
                             (cons (make-ir 'ball 5.00)
                                   empty))) false)
