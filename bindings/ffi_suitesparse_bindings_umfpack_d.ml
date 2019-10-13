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

  (** core functions - double *)

  let umfpack_dl_numeric = foreign "umfpack_dl_numeric" (ptr int64_t @-> ptr int64_t @-> ptr double @-> ptr void @-> ptr (ptr void) @-> ptr double @-> ptr double @-> returning int64_t)

  let umfpack_dl_report_symbolic = foreign "umfpack_dl_report_symbolic" (ptr void @-> ptr double @-> returning int64_t)

  let umfpack_dl_solve = foreign "umfpack_dl_solve" (int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr double @-> ptr double @-> ptr double @-> ptr void @-> ptr double @-> ptr double @-> returning int64_t)

  let umfpack_dl_free_numeric = foreign "umfpack_dl_free_numeric" (ptr (ptr void) @-> returning void)

  let umfpack_dl_free_symbolic = foreign "umfpack_dl_free_symbolic" (ptr (ptr void) @-> returning void)

  let umfpack_dl_defaults = foreign "umfpack_dl_defaults" (ptr double @-> returning void)

  let umfpack_dl_qsymbolic = foreign "umfpack_dl_qsymbolic" (int64_t @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr double @-> ptr int64_t @-> ptr void @-> ptr double @-> ptr double @-> returning int64_t)

  let umfpack_dl_fsymbolic = foreign "umfpack_dl_fsymbolic" (int64_t @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr double @-> ptr void @-> ptr void @-> ptr void @-> ptr double @-> ptr double @-> returning int64_t)

  let umfpack_dl_wsolve = foreign "umfpack_dl_wsolve" (int64_t @-> ptr int64_t @-> ptr int64_t @-> ptr double @-> ptr double @-> ptr double @-> ptr void @-> ptr double @-> ptr double @-> ptr int64_t @-> ptr double @-> returning int64_t)

end