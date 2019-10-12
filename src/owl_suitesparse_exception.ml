exception ERROR of string

exception INSERT_ELEMENT of (int * int)


let fail_on_nonzero result info =
  if result != 0 then ()
  else raise (ERROR info)