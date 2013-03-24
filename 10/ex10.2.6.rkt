;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.2.6) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.2.6.rkt

;; Develop a precise data definition for inventory1, which are inventory
;; listings of one-dollar stores. Using the new data definition, the contract
;; for extract1 can be refined:

;; extract1 : inventory -> inventory1
(define (extract1 an-inv) ...)

;; An inventory is either
;; 1. empty
;; 2. (cons ir inv) 
;; where ir is an inventory record and inv is an inventory.

;; An inventory-record (short: ir) is: (make-ir name price)
;; - name is a symbol
;; - price is a (positive) number
(define-struct ir (name price))

;; Does the refined contract affect the development of the function above?
;; No
