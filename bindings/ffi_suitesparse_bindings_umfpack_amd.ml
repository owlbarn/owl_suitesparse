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

  let amd_l_order =
    foreign
      "amd_l_order"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> returning int64_t)


  let amd_l2 =
    foreign
      "amd_l2"
      (int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> int64_t
      @-> int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr int64_t
      @-> ptr double
      @-> ptr double
      @-> returning void)


  let amd_l_valid =
    foreign
      "amd_l_valid"
      (int64_t @-> int64_t @-> ptr int64_t @-> ptr int64_t @-> returning int64_t)


  let amd_l_defaults = foreign "amd_l_defaults" (ptr double @-> returning void)
  let amd_l_control = foreign "amd_l_control" (ptr double @-> returning void)
  let amd_l_info = foreign "amd_l_info" (ptr double @-> returning void)
end
