;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3.3.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex3.3.1.rkt

;; The US uses the English system of (length) measurements. The rest of the
;; world uses the metric system. 

;; English     metric
;; 1 inch    = 2.54 cm
;; 1 foot    = 12 in.
;; 1 yard    = 3 ft.
;; 1 rod     = 5(1/2) yd.
;; 1 furlong = 40 rd.
;; 1 mile    = 8 fl.

;; inches->cm : number -> number
;; Example: (inches->cm 1) should produce 2.54
(define (inches->cm inches)
  (* inches 2.54))

;; feet->inches : number -> number
;; Example: (feet->inches 1) should produce 12
(define (feet->inches feet)
  (* feet 12))

;; yards->feet : number -> number
;; Example: (yards->feet 1) should produce 3
(define (yards->feet yards)
  (* yards 3))

;; rods->yards : number -> number
;; Example: (rods->yards 1) should produce 5.5
(define (rods->yards rods)
  (* rods 5.5))

;; furlongs->rods : number -> number
;; Example: (furlongs->rods 1) should produce 40
(define (furlongs->rods furlongs)
  (* furlongs 40))

;; miles->furlongs : number -> number
;; Example: (miles->furlongs 1) should produce 8
(define (miles->furlongs miles)
  (* miles 8))

;; Tests
(inches->cm 1)
(feet->inches 1)
(yards->feet 1)
(rods->yards 1)
(furlongs->rods 1)
(miles->furlongs 1)

;; feet->cm : number -> number
;; Example: (feet->cm 1) should produce 30.48
(define (feet->cm feet)
  (inches->cm (feet->inches feet)))

;; yards->cm : number -> number
;; Example (yards->cm 1) should produce 91.44
(define (yards->cm yards)
  (inches->cm (feet->inches (yards->feet yards))))

;; rods->inches : number -> number
;; Example (rods->inches 1) should produce 198
(define (rods->inches rods)
  (feet->inches (yards->feet (rods->yards rods))))

;; miles->feet : number -> number
;; Example (miles->feet 1) should produce 5280
(define (miles->feet miles)
  (yards->feet (rods->yards (furlongs->rods (miles->furlongs miles)))))

;; Tests
(feet->cm 1)
(yards->cm 1)
(rods->inches 1)
(miles->feet 1)
