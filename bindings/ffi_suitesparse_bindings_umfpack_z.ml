(*
 * OWL - OCaml Scientific and Engineering Computing
 * Copyright (c) 2016-2019 Liang Wang <liang.wang@cl.cam.ac.uk>
 * 
 * SuiteSparse - A Suite of Sparse Matrix Software 
 * SuiteSparse Copyright (c) by Timothy A. Davis.
 *)


open Ctypes


module Make (F : Cstubs.FOREIGN) = struct

  open F

  (** core functions - complex *)

  let umfpack_zl_numeric = foreign "umfpack_zl_numeric" (ptr int64_t @-> ptr int64_t @-> ptr double @-> ptr double @-> ptr void @-> ptr (ptr void) @-> ptr double @-> ptr double @-> returning int64_t)

  let umfpack_zl_report_symbolic = foreign "umfpack_zl_report_symbolic" (ptr void @-> ptr double @-> returning int64_t)

end