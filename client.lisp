;;
;; client.lisp
;; usocket implementation of the socket tutorial
;; from Land of Lisp Chapter 12 http://landoflisp.com
;; 
;; Ciaran Bradley 2010

(defun stream-read (stream)
"Reads from a usocket connected stream"
  (read (usocket:socket-stream stream)))

(defun stream-print (string stream)
"Prints to a usocket connected stream"
  (print string (usocket:socket-stream stream))
  (force-output (socket:socket-stream stream)))

;; Attempts to connect to the host port
(defparameter my-socket (usocket:socket-connect "127.0.0.1" 4321))