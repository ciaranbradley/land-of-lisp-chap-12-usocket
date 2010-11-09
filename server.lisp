;;
;; server.lisp
;; usocket implementation of the socket tutorial
;; from Land of Lisp
;; 
;;

(defun stream-read (stream)
"Reads from a usocket connected stream"
  (read (usocket:socket-stream stream)))

;; (print) puts the string in the stream buffer
;; (force-output) pushes the buffer to the stream

(defun stream-print (string stream)
"Prints to a usocket connected stream"
  (print string (usocket:socket-stream stream))
  (force-output (socket:socket-stream stream)))


(defparameter my-socket (usocket:socket-listen "127.0.0.1" 4321))

;; Once this is created, your repl will wait for a connection on
;; the socket, and attach it to my-stream
(defparameter my-stream (usocket:socket-accept my-socket))