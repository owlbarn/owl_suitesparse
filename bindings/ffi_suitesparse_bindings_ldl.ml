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

  (** type definitions *)

  (** core functions *)

  let ldl_l_symbolic =
    foreign
      "ldl_l_symbolic"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning void)


  let ldl_l_numeric =
    foreign
      "ldl_l_numeric"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning int64_t)


  let ldl_l_lsolve =
    foreign
      "ldl_l_lsolve"
      (int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> returning void)


  let ldl_l_dsolve =
    foreign "ldl_l_dsolve" (int64_t @-> ptr double @-> ptr double @-> returning void)


  let ldl_l_ltsolve =
    foreign
      "ldl_l_ltsolve"
      (int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> returning void)


  let ldl_l_perm =
    foreign
      "ldl_l_perm"
      (int64_t @-> ptr double @-> ptr double @-> ptr int64_t @-> returning void)


  let ldl_l_permt =
    foreign
      "ldl_l_permt"
      (int64_t @-> ptr double @-> ptr double @-> ptr int64_t @-> returning void)


  let ldl_l_valid_perm =
    foreign
      "ldl_l_valid_perm"
      (int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)


  let ldl_l_valid_matrix =
    foreign
      "ldl_l_valid_matrix"
      (int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)
end
