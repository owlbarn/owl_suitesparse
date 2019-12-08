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

  type klu_l_common
  (** type definitions *)

  let klu_l_common : klu_l_common structure typ = structure "klu_l_common_struct"

  type klu_l_symbolic

  let klu_l_symbolic : klu_l_symbolic structure typ = structure "klu_l_symbolic_struct"

  type klu_l_numeric

  let klu_l_numeric : klu_l_numeric structure typ = structure "klu_l_numeric_struct"

  (** core functions *)

  let klu_l_defaults = foreign "klu_l_defaults" (ptr klu_l_common @-> returning int64_t)

  let klu_l_analyze =
    foreign
      "klu_l_analyze"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr klu_l_common
      @-> returning (ptr klu_l_symbolic))


  let klu_l_analyze_given =
    foreign
      "klu_l_analyze_given"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr klu_l_common
      @-> returning (ptr klu_l_symbolic))


  let klu_l_factor =
    foreign
      "klu_l_factor"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr klu_l_symbolic
      @-> ptr klu_l_common
      @-> returning (ptr klu_l_numeric))


  let klu_zl_factor =
    foreign
      "klu_zl_factor"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr klu_l_symbolic
      @-> ptr klu_l_common
      @-> returning (ptr klu_l_numeric))


  let klu_l_solve =
    foreign
      "klu_l_solve"
      (ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> int64_t
      @-> int64_t
      @-> ptr double
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_zl_solve =
    foreign
      "klu_zl_solve"
      (ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> int64_t
      @-> int64_t
      @-> ptr double
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_l_tsolve =
    foreign
      "klu_l_tsolve"
      (ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> int64_t
      @-> int64_t
      @-> ptr double
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_zl_tsolve =
    foreign
      "klu_zl_tsolve"
      (ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> int64_t
      @-> int64_t
      @-> ptr double
      @-> int64_t
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_l_refactor =
    foreign
      "klu_l_refactor"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_zl_refactor =
    foreign
      "klu_zl_refactor"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_l_free_symbolic =
    foreign
      "klu_l_free_symbolic"
      (ptr (ptr klu_l_symbolic) @-> ptr klu_l_common @-> returning int64_t)


  let klu_l_free_numeric =
    foreign
      "klu_l_free_numeric"
      (ptr (ptr klu_l_numeric) @-> ptr klu_l_common @-> returning int64_t)


  let klu_zl_free_numeric =
    foreign
      "klu_zl_free_numeric"
      (ptr (ptr klu_l_numeric) @-> ptr klu_l_common @-> returning int64_t)


  let klu_l_sort =
    foreign
      "klu_l_sort"
      (ptr klu_l_symbolic @-> ptr klu_l_numeric @-> ptr klu_l_common @-> returning int64_t)


  let klu_zl_sort =
    foreign
      "klu_zl_sort"
      (ptr klu_l_symbolic @-> ptr klu_l_numeric @-> ptr klu_l_common @-> returning int64_t)


  let klu_l_flops =
    foreign
      "klu_l_flops"
      (ptr klu_l_symbolic @-> ptr klu_l_numeric @-> ptr klu_l_common @-> returning int64_t)


  let klu_zl_flops =
    foreign
      "klu_zl_flops"
      (ptr klu_l_symbolic @-> ptr klu_l_numeric @-> ptr klu_l_common @-> returning int64_t)


  let klu_l_rgrowth =
    foreign
      "klu_l_rgrowth"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_zl_rgrowth =
    foreign
      "klu_zl_rgrowth"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_l_condest =
    foreign
      "klu_l_condest"
      (ptr int64_t
      @-> ptr double
      @-> ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_zl_condest =
    foreign
      "klu_zl_condest"
      (ptr int64_t
      @-> ptr double
      @-> ptr klu_l_symbolic
      @-> ptr klu_l_numeric
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_l_rcond =
    foreign
      "klu_l_rcond"
      (ptr klu_l_symbolic @-> ptr klu_l_numeric @-> ptr klu_l_common @-> returning int64_t)


  let klu_zl_rcond =
    foreign
      "klu_zl_rcond"
      (ptr klu_l_symbolic @-> ptr klu_l_numeric @-> ptr klu_l_common @-> returning int64_t)


  let klu_l_scale =
    foreign
      "klu_l_scale"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_zl_scale =
    foreign
      "klu_zl_scale"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_l_extract =
    foreign
      "klu_l_extract"
      (ptr klu_l_numeric
      @-> ptr klu_l_symbolic
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_zl_extract =
    foreign
      "klu_zl_extract"
      (ptr klu_l_numeric
      @-> ptr klu_l_symbolic
      @-> ptr int64_t
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
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr klu_l_common
      @-> returning int64_t)


  let klu_l_malloc =
    foreign "klu_l_malloc" (size_t @-> size_t @-> ptr klu_l_common @-> returning void)


  let klu_l_free =
    foreign
      "klu_l_free"
      (ptr void @-> size_t @-> size_t @-> ptr klu_l_common @-> returning void)


  let klu_l_realloc =
    foreign
      "klu_l_realloc"
      (size_t @-> size_t @-> size_t @-> ptr void @-> ptr klu_l_common @-> returning void)
end
