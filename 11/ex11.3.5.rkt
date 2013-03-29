;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex11.3.5) (read-case-sensitive #t) (teachpacks ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.ss" "teachpack" "htdp") (lib "draw.ss" "teachpack" "htdp") (lib "arrow.ss" "teachpack" "htdp")))))

;; ex11.3.5.rkt

;; Develop a program that visualizes a student riot. In preparation of a
;; student riot, a small group of students meets to make paint-filled balloons.
;; The typical riot uses 'red only. Then, on the evening of the riot, the
;; students enter a university's progressive theater with the balloons and
;; throw them all over the seats.

;; The program's only input should be a natural number, which represents the
;; number of balloons thrown. The visualization should use a canvas that
;; contains a black grid and the positions of the balls.

;; Assume a random distribution of the balls over the theater's seats. Each box
;; in the grid represents a seat. Configure the program so the change of one
;; variable definition changes the number of columns in the grid and a change
;; to another changes the number of rows.

(define theatre-size (make-posn 50 30))
(define seat-size 10)
(define canvas-size (make-posn (* seat-size (posn-x theatre-size))
                               (* seat-size (posn-y theatre-size))))

(start (posn-x canvas-size) (posn-y canvas-size))

;; student-riot : number -> boolean
;; Produce a visualization of a student riot, showing the distribution of
;; paint-filled balloons on seats.
(define (student-riot n) ...)