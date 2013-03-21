;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.2.4) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.2.4.rkt

;; A phone directory combines names with phone numbers. Develop a data
;; definition for phone records and directories. Using this data definition
;; develop the functions:
;; 1. whose-number, which determines the name that goes with some given phone
;; number and phone directory.
;; 2. phone-number, which determines the phone number that goes with some given
;; name and phone directory.

;; A phone directory is either
;; 1. empty
;; 2. (cons rec dir) 
;; where rec is a phone record and dir is a phone directory.

;; A phone record (short: rec) is: (make-rec name phone)
;; - name is a symbol
;; - phone is a number
(define-struct rec (name phone))

;; whose-number : number directory -> symbol
;; Determine the name that goes with a given phone number
(define (whose-number num dir)
  (cond
    [(empty? dir) 'Unknown]
    [else
     (cond
       [(eq? (rec-phone (first dir)) num)
        (rec-name (first dir))]
       [else (whose-number num (rest dir))])]))

;; phone-number : symbol directory -> number
;; Determine the phone number that goes with a given name
(define (phone-number name dir)
  (cond
    [(empty? dir) 'Unknown]
    [else
     (cond
       [(eq? (rec-name (first dir)) name)
        (rec-phone (first dir))]
       [else (phone-number name (rest dir))])]))

(define TEST-DIR
  (cons (make-rec 'HomerSimpson 1234567890)
        (cons (make-rec 'PeterGriffin 0987654321)
              empty)))

;; Tests
(eq? (whose-number 1234567890 empty) 'Unknown)
(eq? (whose-number 1234567890 TEST-DIR) 'HomerSimpson)
(eq? (whose-number 1290347856 TEST-DIR) 'Unknown)
(eq? (phone-number 'PeterGriffin empty) 'Unknown)
(eq? (phone-number 'PeterGriffin TEST-DIR) 0987654321)
(eq? (phone-number 'StanSmith TEST-DIR) 'Unknown)
