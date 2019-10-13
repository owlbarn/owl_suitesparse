(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 * 
 * SuiteSparse - A Suite of Sparse Matrix Software 
 * SuiteSparse Copyright (c) by Timothy A. Davis.
 *)

 
exception ERROR of string

exception INSERT_ELEMENT of (int * int)


let fail_on_nonzero result info =
  if result != 0 then ()
  else raise (ERROR info)