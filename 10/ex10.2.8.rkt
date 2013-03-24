;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.2.8) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.2.8.rkt

;; Adapt the function recall from exercise 10.1.7 for the new data definition
;; of inventory. The function consumes the name of a toy and an inventory and
;; produces an inventory that contains all items of the input with the
;; exception of those whose name matches the given input.

;; An inventory is either
;; 1. empty
;; 2. (cons ir inv) 
;; where ir is an inventory record and inv is an inventory.

;; An inventory-record (short: ir) is: (make-ir name price)
;; - name is a symbol
;; - price is a (positive) number
(define-struct ir (name price))

;; recall : symbol inventory -> inventory
;; Produce an inventory where all occurences of the symbol input are removed
(define (recall toy inv)
  (cond
    [(empty? inv) empty]
    [else (cond
            [(symbol=? toy (ir-name (first inv)))
             (recall toy (rest inv))]
            [else (cons (first inv) (recall toy (rest inv)))])]))

;; Tests
(recall 'ball empty)
(recall 'ball (cons (make-ir 'ball 2.00) empty))
(recall 'ball (cons (make-ir 'ball 2.00)
                    (cons (make-ir 'robot 9.99)
                          (cons (make-ir 'ball 1.20)
                                (cons (make-ir 'doll 4.50)
                                      empty)))))
