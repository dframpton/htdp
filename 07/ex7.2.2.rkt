;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex7.2.2) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex7.2.2.rkt

;; The administrators of metropolitan transportation agencies manage fleets of
;; vehicles. Develop structure and data definitions for a collection of such
;; vehicles. The collection should include at least buses, limos, cars, and
;; subways. Add at least two attributes per class of vehicle. Then develop a
;; template for functions that consume vehicles.

(define-struct car (seats top-speed fuel))
(define-struct limo (seats top-speed fuel))
(define-struct bus (seats top-speed fuel))
(define-struct subway (seats top-speed fuel))

;; A vehicle can be:
;; (make-car seats top-speed fuel)
;; (make-limo seats top-speed fuel)
;; (make-bus seats top-speed fuel)
;; (make-subway seats top-speed fuel)
;; Where seats and top-speed are numbers, and fuel is a symbol.

;; Examples:
;; (make-car 5 120 'petrol)
;; (make-limo 8 90 'petrol)
;; (make-bus 24 60 'diesel)
;; (make-subway 130 50 'electricity)

;; fn-template : vehicle -> ???
;; (define (fn vehicle)
;;   (cond
;;     [(car? vehicle)
;;      ... (car-seats vehicle) ... 
;;      ... (car-top-speed vehicle) ... 
;;      ... (car-fuel vehicle)... ]
;;     [(limo? vehicle)
;;      ... (limo-seats vehicle) ... 
;;      ... (limo-top-speed vehicle) ... 
;;      ... (limo-fuel vehicle)... ]
;;     [(bus? vehicle)
;;      ... (bus-seats vehicle) ... 
;;      ... (bus-top-speed vehicle) ... 
;;      ... (bus-fuel vehicle)... ]
;;     [(subway? vehicle)
;;      ... (subway-seats vehicle) ... 
;;      ... (subway-top-speed vehicle) ... 
;;      ... (subway-fuel vehicle)... ]))
