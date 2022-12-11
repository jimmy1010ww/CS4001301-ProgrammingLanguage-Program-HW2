;Made by B10915003
;function name: palindrome
;	input: 1 list, input_list
;	output: input_list + reverse of input_list

(define (palindrome input_list)
  (append input_list (reverse input_list)))
          
(print (palindrome '(a a b b c)))
(print (palindrome '(12 1 12)))