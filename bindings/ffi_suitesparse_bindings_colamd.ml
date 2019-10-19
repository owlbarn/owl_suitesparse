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

  let colamd_l_recommended =
    foreign "colamd_l_recommended" (int64_t @-> int64_t @-> int64_t @-> returning size_t)


  let colamd_l_set_defaults =
    foreign "colamd_l_set_defaults" (ptr double @-> returning void)


  let colamd_l =
    foreign
      "colamd_l"
      (int64_t
      @-> int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> returning int64_t)


  let symamd_l =
    foreign
      "symamd_l"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr void
      @-> ptr void
      @-> returning int64_t)


  let colamd_l_report = foreign "colamd_l_report" (ptr int64_t @-> returning void)
  let symamd_l_report = foreign "symamd_l_report" (ptr int64_t @-> returning void)
end
