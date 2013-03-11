;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex9.1.1) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp")))))

;; ex9.1.1.rkt

;; Create Scheme lists that represent:

;; 1. The list of all planets in our solar system.
(cons 'Pluto
      (cons 'Neptune
            (cons 'Uranus
                  (cons 'Saturn
                        (cons 'Jupiter
                              (cons 'Mars
                                    (cons 'Earth
                                          (cons 'Venus
                                                (cons 'Mercury empty)))))))))

;; 2. The following meal: steak, pommes-frites, beans, bread, water, juice,
;; brie-cheese, and ice-cream.
(cons 'steak
      (cons 'pommes-frites
            (cons 'beans
                  (cons 'bread
                        (cons 'water
                              (cons 'juice
                                    (cons 'brie
                                          (cons 'ice-cream empty))))))))

;; 3. The list of basic colors.
(cons 'red
      (cons 'orange
            (cons 'yellow
                  (cons 'green
                        (cons 'blue
                              (cons 'indigo
                                    (cons 'violet empty)))))))
