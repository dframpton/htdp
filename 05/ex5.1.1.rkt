;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex5.1.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

;; ex5.1.1.rkt

;; Evaluate (reply 'HowAreYou?) by hand and with DrScheme's stepper. Formulate
;; a complete set of examples for reply as boolean expressions (using symbol=?).

;; reply : symbol -> symbol
;; Determine a reply for the greeting s.
(define (reply s)
  (cond
    [(symbol=? s 'GoodMorning) 'Hi]
    [(symbol=? s 'HowAreYou?) 'Fine]
    [(symbol=? s 'GoodAfternoon) 'INeedANap]
    [(symbol=? s 'GoodEvening) 'BoyAmITired]))

;; (reply 'HowAreYou?)
;; 1.
;; (cond
;;   [(symbol=? 'HowAreYou? 'GoodMorning) 'Hi]
;;   [(symbol=? 'HowAreYou? 'HowAreYou) 'Fine]
;;   [(symbol=? 'HowAreYou? 'GoodAfternoon) 'INeedANap]
;;   [(symbol=? 'HowAreYou? 'GoodEvening) 'BoyAmITired])
;; 2.
;; (cond
;;   [false 'Hi]
;;   [(symbol=? 'HowAreYou? 'HowAreYou) 'Fine]
;;   [(symbol=? 'HowAreYou? 'GoodAfternoon) 'INeedANap]
;;   [(symbol=? 'HowAreYou? 'GoodEvening) 'BoyAmITired])
;; 3.
;; (cond
;;   [(symbol=? 'HowAreYou? 'HowAreYou) 'Fine]
;;   [(symbol=? 'HowAreYou? 'GoodAfternoon) 'INeedANap]
;;   [(symbol=? 'HowAreYou? 'GoodEvening) 'BoyAmITired])
;; 4.
;; (cond
;;   [true 'Fine]
;;   [(symbol=? 'HowAreYou? 'GoodAfternoon) 'INeedANap]
;;   [(symbol=? 'HowAreYou? 'GoodEvening) 'BoyAmITired])
;; 5.
;; 'Fine

;; Tests
(symbol=? (reply 'GoodMorning) 'Hi)
(symbol=? (reply 'HowAreYou?) 'Fine)
(symbol=? (reply 'GoodAfternoon) 'INeedANap)
(symbol=? (reply 'GoodEvening) 'BoyAmITired)
