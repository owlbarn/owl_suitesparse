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

  let umfpack_dl_numeric =
    foreign
      "umfpack_dl_numeric"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr void
      @-> ptr (ptr void)
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_dl_solve =
    foreign
      "umfpack_dl_solve"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr void
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_dl_free_numeric =
    foreign "umfpack_dl_free_numeric" (ptr (ptr void) @-> returning void)


  let umfpack_dl_free_symbolic =
    foreign "umfpack_dl_free_symbolic" (ptr (ptr void) @-> returning void)


  let umfpack_dl_defaults = foreign "umfpack_dl_defaults" (ptr double @-> returning void)

  let umfpack_dl_qsymbolic =
    foreign
      "umfpack_dl_qsymbolic"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr void
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_dl_fsymbolic =
    foreign
      "umfpack_dl_fsymbolic"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr void
      @-> ptr void
      @-> ptr void
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_dl_wsolve =
    foreign
      "umfpack_dl_wsolve"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr void
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr double
      @-> returning int64_t)


  let umfpack_dl_triplet_to_col =
    foreign
      "umfpack_dl_triplet_to_col"
      (int64_t
      @-> int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> returning int64_t)


  let umfpack_dl_col_to_triplet =
    foreign
      "umfpack_dl_col_to_triplet"
      (int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)


  let umfpack_dl_transpose =
    foreign
      "umfpack_dl_transpose"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> returning int64_t)


  let umfpack_dl_scale =
    foreign
      "umfpack_dl_scale"
      (ptr double @-> ptr double @-> ptr void @-> returning int64_t)


  let umfpack_dl_get_lunz =
    foreign
      "umfpack_dl_get_lunz"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr void
      @-> returning int64_t)


  let umfpack_dl_get_numeric =
    foreign
      "umfpack_dl_get_numeric"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr double
      @-> ptr void
      @-> returning int64_t)


  let umfpack_dl_get_symbolic =
    foreign
      "umfpack_dl_get_symbolic"
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


  let umfpack_dl_save_numeric =
    foreign "umfpack_dl_save_numeric" (ptr void @-> ptr char @-> returning int64_t)


  let umfpack_dl_load_numeric =
    foreign "umfpack_dl_load_numeric" (ptr (ptr void) @-> ptr char @-> returning int64_t)


  let umfpack_dl_save_symbolic =
    foreign "umfpack_dl_save_symbolic" (ptr void @-> ptr char @-> returning int64_t)


  let umfpack_dl_load_symbolic =
    foreign "umfpack_dl_load_symbolic" (ptr (ptr void) @-> ptr char @-> returning int64_t)


  let umfpack_dl_get_determinant =
    foreign
      "umfpack_dl_get_determinant"
      (ptr double @-> ptr double @-> ptr void @-> ptr double @-> returning int64_t)


  let umfpack_dl_report_status =
    foreign "umfpack_dl_report_status" (ptr double @-> int64_t @-> returning void)


  let umfpack_dl_report_info =
    foreign "umfpack_dl_report_info" (ptr double @-> ptr double @-> returning void)


  let umfpack_dl_report_control =
    foreign "umfpack_dl_report_control" (ptr double @-> returning void)


  let umfpack_dl_report_matrix =
    foreign
      "umfpack_dl_report_matrix"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> int64_t
      @-> ptr double
      @-> returning int64_t)


  let umfpack_dl_report_triplet =
    foreign
      "umfpack_dl_report_triplet"
      (int64_t
      @-> int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let umfpack_dl_report_vector =
    foreign
      "umfpack_dl_report_vector"
      (int64_t @-> ptr double @-> ptr double @-> returning int64_t)


  let umfpack_dl_report_symbolic =
    foreign "umfpack_dl_report_symbolic" (ptr void @-> ptr double @-> returning int64_t)


  let umfpack_dl_report_numeric =
    foreign "umfpack_dl_report_numeric" (ptr void @-> ptr double @-> returning int64_t)


  let umfpack_dl_report_perm =
    foreign
      "umfpack_dl_report_perm"
      (int64_t @-> ptr int64_t @-> ptr double @-> returning int64_t)



        (** for both double and complex number types. *)

  let umfpack_timer = foreign "umfpack_timer" (void @-> returning double)
  let umfpack_tic = foreign "umfpack_tic" (ptr double @-> returning void)
  let umfpack_toc = foreign "umfpack_toc" (ptr double @-> returning void)

  
end
