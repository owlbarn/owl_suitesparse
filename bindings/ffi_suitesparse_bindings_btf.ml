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

  let ccolamd_l_recommended =
    foreign "ccolamd_l_recommended" (int64_t @-> int64_t @-> int64_t @-> returning size_t)


  let ccolamd_l_set_defaults =
    foreign "ccolamd_l_set_defaults" (ptr double @-> returning void)


  let ccolamd_l =
    foreign
      "ccolamd_l"
      (int64_t
      @-> int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning int64_t)


  let csymamd_l =
    foreign
      "csymamd_l"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr void
      @-> ptr void
      @-> ptr int64_t
      @-> int64_t
      @-> returning int64_t)


  let ccolamd_l_report = foreign "ccolamd_l_report" (ptr int64_t @-> returning void)
  let csymamd_l_report = foreign "csymamd_l_report" (ptr int64_t @-> returning void)

  let ccolamd2_l =
    foreign
      "ccolamd2_l"
      (int64_t
      @-> int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning int64_t)


  let ccolamd_l_apply_order =
    foreign
      "ccolamd_l_apply_order"
      (ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> int64_t
      @-> int64_t
      @-> returning void)


  let ccolamd_l_fsize =
    foreign
      "ccolamd_l_fsize"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning void)


  let ccolamd_l_postorder =
    foreign
      "ccolamd_l_postorder"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning void)


  let ccolamd_l_post_tree =
    foreign
      "ccolamd_l_post_tree"
      (int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> returning int64_t)
end
