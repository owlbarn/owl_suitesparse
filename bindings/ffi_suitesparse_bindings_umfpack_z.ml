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

  let umfpack_zl_numeric =
    foreign
      "umfpack_zl_numeric"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr void
      @-> ptr (ptr void)
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_zl_report_symbolic =
    foreign "umfpack_zl_report_symbolic" (ptr void @-> ptr double @-> returning int64_t)


  let umfpack_zl_solve =
    foreign
      "umfpack_zl_solve"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr void
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_zl_free_numeric =
    foreign "umfpack_zl_free_numeric" (ptr (ptr void) @-> returning void)


  let umfpack_zl_free_symbolic =
    foreign "umfpack_zl_free_symbolic" (ptr (ptr void) @-> returning void)


  let umfpack_zl_defaults = foreign "umfpack_zl_defaults" (ptr double @-> returning void)

  let umfpack_zl_qsymbolic =
    foreign
      "umfpack_zl_qsymbolic"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr void
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_zl_fsymbolic =
    foreign
      "umfpack_zl_fsymbolic"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr void
      @-> ptr void
      @-> ptr void
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_zl_wsolve =
    foreign
      "umfpack_zl_wsolve"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr void
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr double
      @-> returning int64_t)


  let umfpack_zl_triplet_to_col =
    foreign
      "umfpack_zl_triplet_to_col"
      (int64_t
      @-> int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> returning int64_t)


  let umfpack_zl_col_to_triplet =
    foreign
      "umfpack_zl_col_to_triplet"
      (int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)


  let umfpack_zl_transpose =
    foreign
      "umfpack_zl_transpose"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> int64_t
      @-> returning int64_t)


  let umfpack_zl_scale =
    foreign
      "umfpack_zl_scale"
      (ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr void
      @-> returning int64_t)


  let umfpack_zl_get_lunz =
    foreign
      "umfpack_zl_get_lunz"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr void
      @-> returning int64_t)


  let umfpack_zl_get_numeric =
    foreign
      "umfpack_zl_get_numeric"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr double
      @-> ptr void
      @-> returning int64_t)


  let umfpack_zl_get_symbolic =
    foreign
      "umfpack_zl_get_symbolic"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr void
      @-> returning int64_t)


  let umfpack_zl_save_numeric =
    foreign "umfpack_zl_save_numeric" (ptr void @-> ptr char @-> returning int64_t)


  let umfpack_zl_load_numeric =
    foreign "umfpack_zl_load_numeric" (ptr (ptr void) @-> ptr char @-> returning int64_t)


  let umfpack_zl_save_symbolic =
    foreign "umfpack_zl_save_symbolic" (ptr void @-> ptr char @-> returning int64_t)


  let umfpack_zl_load_symbolic =
    foreign "umfpack_zl_load_symbolic" (ptr (ptr void) @-> ptr char @-> returning int64_t)


  let umfpack_zl_get_determinant =
    foreign
      "umfpack_zl_get_determinant"
      (ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr void
      @-> ptr double
      @-> returning int64_t)
end
