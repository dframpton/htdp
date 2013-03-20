;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex10.1.9) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex10.1.9.rkt

;; The cash registers at many grocery stores talk to customers. The register's
;; computer receives the number of cents that the customer must pay and then
;; builds a list with the following five items:

;; 1. the dollar amount;
;; 2. the symbol 'dollar if the dollar amount is 1 and 'dollars otherwise;
;; 3. the symbol 'and;
;; 4. the cent amount;
;; 5. the symbol 'cent if the cent amount is 1 and 'cents otherwise.

;; Develop the function controller, which consumes a number and produces a list
;; according to the above description. For example, if the amount is $1.03,
;; then the cash register evaluates (controller 103):

;; controller : number -> list
;; Convert a price (number) into a sentence-like version of the price (list)
(define (controller price)
  (cons (quotient price 100)
        (cons (plural-dollar (quotient price 100))
              (cons 'and
                    (cons (remainder price 100)
                          (cons (plural-cent (remainder price 100))
                                empty))))))

;; It feels like a recursive solution would be more appropriate (and less ugly)
;; because of the 'theme' of the other exercises in this section, but I'm not
;; sure how to do this when the operations vary so much (eg, remainder/quotient,
;; or call aux function, or just cons a symbol).

;; Two separate auxiliary functions seem unnecessary because of the repetition,
;; but I don't think symbols can be modified, so an 's' can't simply be
;; appended to an input that is a symbol.
(define (plural-dollar amount)
  (cond
    [(= amount 1) 'dollar]
    [else 'dollars]))

(define (plural-cent amount)
  (cond
    [(= amount 1) 'cent]
    [else 'cents]))

;; Tests
(controller 103)
;; ]=> (cons 1 (cons 'dollar (cons 'and (cons 3 (cons 'cents empty)))))
(controller 591)
;; ]=> (cons 5 (cons 'dollars (cons 'and (cons 91 (cons 'cents empty)))))
(controller 2500)
;; ]=> (cons 25 (cons 'dollars (cons 'and (cons 0 (cons 'cents empty)))))
